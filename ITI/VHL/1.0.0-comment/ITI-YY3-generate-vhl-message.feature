Feature: ITI-YY3 Generate VHL – Message Semantics
  Defines the format of the ITI-YY3 request and response messages.
  The request is an HTTP GET FHIR operation; the response is a FHIR operation
  response containing a Binary QR code. Defined here once for both the
  VHL Holder (initiator) and VHL Sharer (responder) actor files.

  Background:
    Given a Generate VHL exchange between a VHL Holder and a VHL Sharer

  # ─── Request: HTTP Method and Endpoint ──────────────────────────────────────

  @message-semantics @SHALL
  Scenario: Request is HTTP GET to the Patient $generate-vhl operation endpoint
    When the request is constructed
    Then the HTTP method SHALL be GET
    And the URL SHALL be "[base]/Patient/$generate-vhl"

  # ─── Request: Required Parameters ────────────────────────────────────────────

  @message-semantics @SHALL
  Scenario: Request includes the required sourceIdentifier parameter
    When the request parameters are inspected
    Then the "sourceIdentifier" query parameter SHALL be present
    And its cardinality SHALL be [1..1]

  @message-semantics @SHALL
  Scenario: sourceIdentifier is expressed as a token in system|value format
    Given the patient identifier system is "urn:oid:2.16.840.1.113883.2.4.6.3" and value is "PASSPORT123"
    When the "sourceIdentifier" parameter is inspected
    Then the value SHALL be formatted as "urn:oid:2.16.840.1.113883.2.4.6.3|PASSPORT123"

  # ─── Request: Optional Parameters ────────────────────────────────────────────

  @message-semantics @SHALL
  Scenario: exp parameter is a positive integer representing epoch seconds
    Given the request includes "exp=1735689600"
    When the "exp" parameter is inspected
    Then the value SHALL be a positive integer representing epoch seconds
    And its cardinality SHALL be [0..1]

  @message-semantics @SHALL
  Scenario Outline: flag parameter encodes VHL characteristics as single-character alphabetical flags
    Given the request includes "flag=<flag_value>"
    When the "flag" parameter is inspected
    Then the VHL Sharer SHALL interpret it as "<description>"

    Examples:
      | flag_value | description                          |
      | L          | Long-term use                        |
      | P          | Passcode required                    |
      | U          | Direct file access                   |
      | LP         | Long-term use and passcode required  |

  @message-semantics @SHALL
  Scenario: flag parameter cardinality is [0..1]
    When the "flag" parameter count is evaluated
    Then only one "flag" parameter SHALL be present in the request

  @message-semantics @SHALL
  Scenario: label parameter does not exceed 80 characters
    When the "label" parameter is present
    Then its value SHALL NOT exceed 80 characters
    And its cardinality SHALL be [0..1]

  @message-semantics @SHALL
  Scenario: passcode parameter cardinality is [0..1]
    When the "passcode" parameter is present
    Then its cardinality SHALL be [0..1]

  @message-semantics @SHALL
  Scenario: P flag SHALL be present when a passcode parameter is included
    Given the request includes a "passcode" parameter
    When the "flag" parameter is inspected
    Then "P" SHALL be present in the "flag" value

  @message-semantics @SHALL
  Scenario: Passcode is not present in the generated VHL URL or QR code payload
    Given the request includes "passcode=secretpin"
    When the VHL Sharer generates the QR code
    Then the plaintext passcode SHALL NOT appear in the generated VHL URL
    And the plaintext passcode SHALL NOT appear in the QR code content

  # ─── Response: Success Structure ─────────────────────────────────────────────

  @message-semantics @SHALL
  Scenario: Successful response is HTTP 200 with a FHIR operation response containing a qrcode Binary
    When the VHL Sharer returns a successful response
    Then the HTTP status SHALL be 200 OK
    And the response SHALL be a FHIR operation response
    And the output parameter "qrcode" SHALL be of type Binary

  @message-semantics @SHALL
  Scenario: qrcode Binary content type is image/png or image/svg+xml
    When the "qrcode" Binary output is inspected
    Then the content type SHALL be "image/png" or "image/svg+xml"

  # ─── Response: QR Code Format ────────────────────────────────────────────────

  @message-semantics @SHALL
  Scenario: QR code is encoded as HCERT with HC1: prefix
    When the QR code content is decoded
    Then the encoded string SHALL begin with "HC1:"

  @message-semantics @SHALL
  Scenario: QR code contains SHL payload embedded in HCERT claim structure
    When the QR code content is decoded and the CWT claims are extracted
    Then the SHL payload SHALL be embedded at claim key 5 within the hcert claim (claim key -260)

  @message-semantics @SHALL
  Scenario: QR code is suitable for camera scanning
    When the QR code is inspected
    Then it SHALL be suitable for camera scanning

  # ─── Response: SHL Payload Encoding ──────────────────────────────────────────

  @message-semantics @SHALL
  Scenario: SHL payload JSON is minified before encoding
    When the SHL payload is prepared for encoding
    Then the JSON payload SHALL be minified

  @message-semantics @SHALL
  Scenario: Minified SHL payload is base64url-encoded
    When the minified SHL payload is encoded
    Then it SHALL be base64url-encoded

  @message-semantics @SHALL
  Scenario: Encoded SHL payload is prefixed with vhlink:/
    When the base64url-encoded payload is assembled
    Then it SHALL be prefixed with "vhlink:/"

  # ─── Response: Error Format ──────────────────────────────────────────────────

  @message-semantics @SHALL
  Scenario: Error response body is a FHIR OperationOutcome
    Given the request triggers an error condition
    When the VHL Sharer returns an error response
    Then the response body SHALL be a FHIR OperationOutcome with error details
