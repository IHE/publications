Feature: ITI-YY5 Retrieve Manifest – Message Semantics
  Defines the format of the ITI-YY5 request and response messages.
  The request is an HTTP POST to /List/_search with FHIR search parameters
  and SHL parameters. Authentication is via HTTP Message Signatures (RFC 9421)
  or OAuth with SSRAA Option. The response is a FHIR searchset Bundle.
  Defined once here for both the VHL Receiver (initiator) and VHL Sharer (responder).

  Background:
    Given a Retrieve Manifest exchange between a VHL Receiver and a VHL Sharer

  # ─── Request: HTTP Method and Endpoint ──────────────────────────────────────

  @message-semantics @SHALL
  Scenario: Request is HTTP POST to the /List/_search endpoint
    Given the manifest URL is "https://vhl-sharer.example.org/List?_id=abc123&code=folder&status=current&patient.identifier=urn:oid:1.2.3|P123"
    When the Retrieve Manifest request is constructed
    Then the HTTP method SHALL be POST
    And the endpoint SHALL be "https://vhl-sharer.example.org/List/_search"

  @message-semantics @SHALL
  Scenario: Request Content-Type is application/x-www-form-urlencoded
    When the Content-Type header is set
    Then it SHALL be "application/x-www-form-urlencoded"

  @message-semantics @SHALL
  Scenario: Request Accept header is application/fhir+json
    When the Accept header is set
    Then it SHALL be "application/fhir+json"

  # ─── Request: Required FHIR Search Parameters ────────────────────────────────

  @message-semantics @SHALL
  Scenario: Request body includes _id extracted from the manifest URL
    Given the manifest URL contains "_id=abc123def456"
    When the request body is assembled
    Then the body SHALL include "_id=abc123def456"

  @message-semantics @SHALL
  Scenario: Request body includes code=folder extracted from the manifest URL
    Given the manifest URL contains "code=folder"
    When the request body is assembled
    Then the body SHALL include "code=folder"

  @message-semantics @SHALL
  Scenario: Request body includes status=current extracted from the manifest URL
    Given the manifest URL contains "status=current"
    When the request body is assembled
    Then the body SHALL include "status=current"

  @message-semantics @SHALL
  Scenario: Request body includes at least one patient identification parameter
    Given the manifest URL contains "patient.identifier=urn:oid:2.16.840.1.113883.2.4.6.3|PASSPORT123"
    When the request body is assembled
    Then the body SHALL include "patient=<reference>" or "patient.identifier=<system|value>"

  @message-semantics @SHALL
  Scenario: Request body includes _include=List:item when present in manifest URL
    Given the manifest URL contains "_include=List%3Aitem"
    When the request body is assembled
    Then the body SHALL include "_include=List:item"

  # ─── Request: Required SHL Parameters ────────────────────────────────────────

  @message-semantics @SHALL
  Scenario: Request body includes exactly one recipient parameter
    When the SHL parameters are inspected
    Then exactly one "recipient" parameter SHALL be present

  @message-semantics @SHALL
  Scenario: Request body includes passcode when VHL P flag is set
    Given the VHL "flag" contains "P"
    When the SHL parameters are assembled
    Then the body SHALL include a "passcode" parameter

  @message-semantics @SHALL
  Scenario: Request body does not include passcode when VHL P flag is not set
    Given the VHL "flag" does NOT contain "P"
    When the SHL parameters are assembled
    Then the body SHALL NOT include a "passcode" parameter

  @message-semantics @MAY
  Scenario: Request body may include embeddedLengthMax as an optimization hint
    When the optional SHL parameters are assembled
    Then the body MAY include an "embeddedLengthMax" integer parameter

  # ─── Request: HTTP Message Signature Headers (when Option A is used) ────────

  @message-semantics @SHALL
  Scenario: Request includes Content-Digest header with SHA-256 hash of the body when HTTP signatures are used
    Given the VHL Receiver is authenticating using HTTP Message Signatures
    When the Content-Digest header is computed
    Then it SHALL be present in the format "Content-Digest: sha-256=<base64-encoded-hash>"
    And the hash SHALL be the SHA-256 digest of the raw request body bytes

  @message-semantics @SHALL
  Scenario: Request includes Signature-Input header with required components when HTTP signatures are used
    Given the VHL Receiver is authenticating using HTTP Message Signatures
    When the Signature-Input header is constructed
    Then it SHALL list signed components "@method", "@path", "@authority", "content-type", "content-digest"
    And it SHALL include a "created" parameter with the current Unix timestamp
    And it SHALL include a "keyid" parameter identifying the receiver's public key in the trust list
    And it SHALL include an "alg" parameter specifying the signing algorithm

  @message-semantics @SHALL
  Scenario: Request includes a Signature header with the computed base64-encoded signature value when HTTP signatures are used
    Given the VHL Receiver is authenticating using HTTP Message Signatures
    When the signature is computed using the receiver's private key
    Then the request SHALL include a "Signature" header with the base64-encoded signature value

  @message-semantics @SHALL
  Scenario Outline: Signature algorithm is one of the approved algorithms
    Given the VHL Receiver is authenticating using HTTP Message Signatures
    When the "alg" parameter is set to "<algorithm>"
    Then the algorithm SHALL be accepted as a valid HTTP Message Signature algorithm

    Examples:
      | algorithm           |
      | ecdsa-p256-sha256   |
      | ecdsa-p384-sha384   |
      | rsa-pss-sha256      |
      | rsa-v1_5-sha256     |

  # ─── Request: OAuth with SSRAA Option Headers (when Option B is used) ───────

  @message-semantics @SHALL
  Scenario: Request includes Authorization Bearer header when OAuth with SSRAA is used
    Given the VHL Receiver is authenticating using OAuth with SSRAA Option
    When the authorization header is set
    Then the request SHALL include "Authorization: Bearer <access-token>"

  # ─── Response: Success Structure ─────────────────────────────────────────────

  @message-semantics @SHALL
  Scenario: Successful response is HTTP 200 with a FHIR searchset Bundle
    When the VHL Sharer returns a successful response
    Then the HTTP status SHALL be 200 OK
    And the response body SHALL be a FHIR Bundle with "type": "searchset"
    And the Content-Type SHALL be "application/fhir+json"

  @message-semantics @SHALL
  Scenario: Bundle contains a self link reflecting the search URL
    When the Bundle link array is inspected
    Then it SHALL include a link with "relation": "self" and the search URL

  @message-semantics @SHALL
  Scenario: List resource entry in Bundle has search.mode set to match
    When the Bundle entries are inspected
    Then the List resource entry SHALL have "entry[].search.mode" equal to "match"

  @message-semantics @SHALL
  Scenario: DocumentReference entries in Bundle have search.mode set to include
    When included DocumentReference entries are inspected
    Then each SHALL have "entry[].search.mode" equal to "include"

  # ─── Response: Error Format ──────────────────────────────────────────────────

  @message-semantics @SHALL
  Scenario Outline: Error response includes a FHIR OperationOutcome for each error condition
    Given the request triggers "<error_condition>"
    When the VHL Sharer returns an error response
    Then the HTTP status SHALL be "<http_status>"
    And the response body SHALL be a FHIR OperationOutcome

    Examples:
      | error_condition                                       | http_status              |
      | Malformed request or missing required parameters      | 400 Bad Request          |
      | Signature verification failed or receiver unknown     | 401 Unauthorized         |
      | VHL expired, revoked, or does not authorize access    | 403 Forbidden            |
      | List resource with specified _id not found            | 404 Not Found            |
      | Invalid or missing passcode                           | 422 Unprocessable Entity |
      | Rate limit exceeded                                   | 429 Too Many Requests    |
      | Internal server error                                 | 500 Internal Server Error|
