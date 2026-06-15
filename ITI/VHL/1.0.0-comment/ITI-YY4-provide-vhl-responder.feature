Feature: ITI-YY4 Provide VHL – VHL Receiver Expected Actions
  As a VHL Receiver (Responder) decoding and validating a VHL QR code,
  these scenarios verify the complete nine-step decode pipeline, error handling,
  post-decoding actions, and optional acknowledgment behaviour.
  Message format is defined in ITI-YY4-provide-vhl-message.feature.

  Background:
    Given the VHL Receiver has a QR code scanner
    And the VHL Receiver has access to the trust list obtained via ITI-YY2

  # ─── Step 1: Scan QR Code ────────────────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: VHL Receiver decodes QR code per ISO/IEC 18004:2015 in Alphanumeric mode
    Given a QR code is presented by the VHL Holder
    When the VHL Receiver scans the QR code
    Then the QR code SHALL be decoded per ISO/IEC 18004:2015 in Alphanumeric mode
    And the full encoded string SHALL be extracted

  @responder-actions @SHALL
  Scenario: VHL Receiver provides visual feedback during scanning
    Given the scanning application is active
    When scanning is in progress
    Then the application SHALL provide visual feedback to the user

  # ─── Step 2: Verify HC1: Context Identifier ──────────────────────────────────

  @responder-actions @SHALL
  Scenario: VHL Receiver proceeds to Base45 decoding for a QR code that begins with HC1:
    Given the decoded string begins with "HC1:"
    When the context identifier is verified
    Then the VHL Receiver SHALL remove the "HC1:" prefix and proceed to Base45 decoding

  @responder-actions @SHALL
  Scenario: VHL Receiver rejects a QR code that does not begin with HC1:
    Given the decoded string does NOT begin with "HC1:"
    When the context identifier is checked
    Then the VHL Receiver SHALL reject the QR code
    And SHALL inform the user that the QR code is not a valid VHL

  # ─── Step 3: Base45 Decode ───────────────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: VHL Receiver Base45-decodes the payload after removing the HC1: prefix
    Given the HC1: prefix has been removed
    When Base45 decoding is applied
    Then the result SHALL be a compressed byte array
    And any decoding error SHALL be caught and reported to the user

  # ─── Step 4: ZLIB/DEFLATE Decompress ─────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: VHL Receiver decompresses the Base45-decoded bytes using ZLIB/DEFLATE
    Given the Base45-decoded byte array is available
    When ZLIB (RFC 1950) with DEFLATE (RFC 1951) decompression is applied
    Then the result SHALL be a CBOR-encoded CWT structure
    And any decompression error SHALL be caught and reported

  # ─── Step 5: Parse CBOR Web Token ────────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: VHL Receiver parses the decompressed bytes as a CWT per RFC 8392
    When the CWT is parsed
    Then the protected header SHALL be extracted and SHALL contain "alg" and "kid" fields
    And the CWT claims payload SHALL be extracted

  # ─── Step 6: Verify Digital Signature ────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: VHL Receiver retrieves the DSC from the trust list using the kid
    Given the "kid" has been extracted from the protected header
    When the VHL Receiver looks up the DSC
    Then the VHL Receiver SHALL retrieve the corresponding DSC from the trust list
    And SHALL reject the VHL if no matching DSC is found

  @responder-actions @SHALL
  Scenario: VHL Receiver verifies the COSE signature using the DSC public key
    Given the DSC has been retrieved from the trust list
    When COSE signature verification (RFC 8152) is performed
    Then the signature SHALL be validated against the DSC public key
    And the VHL Receiver SHALL reject the VHL if the signature is invalid

  @responder-actions @SHALL
  Scenario: VHL Receiver rejects a VHL with an invalid COSE signature
    Given the CWT has a COSE signature that does not verify against the DSC
    When signature verification is performed
    Then the VHL Receiver SHALL reject the VHL
    And SHALL NOT attempt to retrieve documents
    And SHOULD inform the user or operator of the failure

  @responder-actions @SHALL
  Scenario: VHL Receiver rejects a VHL whose DSC is not in the trust list
    Given the "kid" does not match any DSC in the trust list
    When the DSC lookup is performed
    Then the VHL Receiver SHALL reject the VHL as untrusted
    And SHALL NOT attempt to retrieve documents

  # ─── Step 7: Validate CWT Claims ─────────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: VHL Receiver rejects an expired VHL based on the CWT exp claim
    Given the CWT "exp" claim (key 4) is present
    And the current time is past the exp value
    When the expiry is evaluated
    Then the VHL Receiver SHALL reject the VHL as expired
    And SHOULD inform the user to request a new VHL

  @responder-actions @SHALL
  Scenario: VHL Receiver accepts a non-expired VHL
    Given the CWT "exp" claim is set to a future timestamp
    When the expiry is evaluated
    Then the VHL Receiver SHALL accept the VHL as not expired

  @responder-actions @SHALL
  Scenario: VHL Receiver rejects a VHL whose iat claim is in the future
    Given the CWT "iat" claim (key 6) has a future value
    When the iat is validated
    Then the VHL Receiver SHALL reject the VHL

  # ─── Step 8: Extract SHL Payload from HCERT ──────────────────────────────────

  @responder-actions @SHALL
  Scenario: VHL Receiver extracts the SHL payload from claim key 5 within the hcert
    Given the hcert claim (key -260) has been extracted
    When claim key 5 is accessed
    Then the result SHALL be the SHL payload object

  @responder-actions @SHALL
  Scenario: VHL Receiver rejects a VHL missing the hcert claim
    Given the CWT does not contain claim key -260
    When the VHL Receiver processes the CWT
    Then the VHL Receiver SHALL reject the VHL
    And SHALL NOT attempt to retrieve documents

  @responder-actions @SHALL
  Scenario: VHL Receiver rejects a VHL where the hcert claim lacks the SHL payload at key 5
    Given the hcert claim is present but claim key 5 is absent
    When the VHL Receiver processes the HCERT
    Then the VHL Receiver SHALL reject the VHL

  # ─── Step 9: Validate SHL Payload ────────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: VHL Receiver validates that the url field is present and is a valid HTTPS URL
    When the "url" field of the SHL payload is validated
    Then it SHALL be present and SHALL be a valid HTTPS URL

  @responder-actions @SHALL
  Scenario: VHL Receiver validates that the key field is 43 characters of base64url
    When the "key" field of the SHL payload is validated
    Then it SHALL be present and SHALL be exactly 43 characters of valid base64url encoding

  @responder-actions @SHALL
  Scenario: VHL Receiver rejects a VHL whose SHL payload exp has passed
    Given the SHL payload contains an "exp" field set to a past timestamp
    When the SHL payload expiry is checked
    Then the VHL Receiver SHALL reject the VHL

  @responder-actions @MAY
  Scenario: VHL Receiver may prompt for passcode when P flag is present
    Given the SHL payload "flag" contains "P"
    When the VHL Receiver processes the payload
    Then the VHL Receiver MAY prompt the user for the passcode (required for ITI-YY5)

  # ─── Post-decoding Actions ───────────────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: VHL Receiver stores the decryption key securely in session memory
    Given the SHL payload has been successfully validated
    When the "key" is stored
    Then the VHL Receiver SHALL store it securely in session memory

  @responder-actions @SHALL
  Scenario: VHL Receiver parses the manifest URL to extract FHIR search parameters
    Given the "url" field from the SHL payload is available
    When the manifest URL is parsed
    Then the VHL Receiver SHALL extract "_id", "code", "status", and "patient.identifier"
    And SHALL note whether "_include=List:item" is present

  @responder-actions @SHALL
  Scenario: VHL Receiver prepares a request structure for ITI-YY5
    Given the manifest URL and SHL parameters are ready
    When the VHL Receiver prepares the ITI-YY5 request
    Then the request SHALL be an HTTP POST to the manifest URL "_search" endpoint
    And the request body SHALL contain the FHIR search parameters extracted from the manifest URL
    And the request body SHALL include "recipient" and "passcode" (if P flag) and optionally "embeddedLengthMax"
    And the request SHALL include authentication via at least one of: HTTP Message Signatures (RFC 9421), OAuth Bearer token (SSRAA), or Verifiable Credential option

  # ─── Error Handling ──────────────────────────────────────────────────────────

  @responder-actions @SHALL
  Scenario Outline: VHL Receiver rejects and reports any QR decode failure
    Given a QR code decoding step fails with "<error_type>"
    When the VHL Receiver handles the error
    Then the VHL Receiver SHALL reject the VHL
    And SHALL inform the user with a meaningful error message
    And SHALL NOT attempt to retrieve documents

    Examples:
      | error_type                      |
      | QR code unreadable or damaged   |
      | Invalid HC1: prefix             |
      | Base45 decode error             |
      | ZLIB decompression error        |
      | CBOR parse error                |
      | Invalid CWT structure           |
      | Missing hcert claim or claim key 5 |
      | Signature verification failure  |

  @responder-actions @SHALL
  Scenario: VHL Receiver requests user to rescan QR code on decode failure
    Given a QR code decoding step has failed
    When the VHL Receiver handles the error
    Then the VHL Receiver SHALL request the user to rescan the QR code

  # ─── §2:3.YY4.5.1 VHL Integrity and Authenticity ──────────────────────────

  @security @SHALL
  Scenario: VHL Receiver verifies COSE signatures before trusting content
    Given a VHL has been decoded
    When the VHL Receiver processes the CWT
    Then the VHL Receiver SHALL verify the COSE signature before trusting the content

  # ─── §2:3.YY4.5.5 Trust Network Validation ────────────────────────────────

  @security @SHALL
  Scenario: VHL Receiver validates VHL Sharer is current participant in trust network
    Given the VHL Receiver has decoded the CWT
    When trust network validation is performed
    Then the VHL Receiver SHALL validate the VHL Sharer is a current participant in the trust network

  @security @SHALL
  Scenario: VHL Receiver retrieves DSC from trust list using kid from CWT protected header
    Given the "kid" has been extracted from the CWT protected header
    When the VHL Receiver performs DSC lookup
    Then the VHL Receiver SHALL retrieve the DSC from the trust list using the kid

  @security @SHALL
  Scenario: VHL Receiver checks certificate revocation status where applicable
    Given the DSC has been retrieved from the trust list
    When revocation status is checked
    Then the VHL Receiver SHALL check certificate revocation status where applicable

  @security @SHALL
  Scenario: VHL Receiver rejects VHLs from untrusted participants
    Given the VHL Sharer is not a trusted participant in the trust network
    When the VHL Receiver evaluates the trust status
    Then the VHL Receiver SHALL reject the VHL

  # ─── Optional Acknowledgment ─────────────────────────────────────────────────

  @responder-actions @MAY
  Scenario: VHL Receiver may send an optional acknowledgment to the VHL Holder
    Given the VHL has been successfully decoded and validated
    When the VHL Receiver sends an acknowledgment (if supported)
    Then the acknowledgment SHALL NOT include any sensitive health information
    And the acknowledgment MAY include a receipt identifier, VHL Receiver organization identifier, and timestamp
