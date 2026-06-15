Feature: ITI-YY3 Generate VHL – VHL Sharer Expected Actions
  As a VHL Sharer (Responder) generating a VHL,
  these scenarios verify the complete VHL generation pipeline: passcode security,
  folder ID and key generation, SHL payload construction, HCERT/CWT encoding,
  QR code production, and error handling.

  Background:
    Given the VHL Sharer has received a valid $generate-vhl request
    And the VHL Sharer has access to its private signing key

  # ─── Passcode Handling ───────────────────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: VHL Sharer hashes the passcode using a strong one-way function before storage
    Given the request includes "passcode=secretpin"
    When the VHL Sharer processes the passcode
    Then the VHL Sharer SHALL hash the passcode using bcrypt, Argon2, or PBKDF2
    And the VHL Sharer SHALL store the hashed passcode associated with the generated folder ID

  @responder-actions @SHALL
  Scenario: VHL Sharer never retains the plaintext passcode in persistent storage
    Given the request includes "passcode=secretpin"
    When the VHL Sharer processes the passcode
    Then the VHL Sharer SHALL NOT retain the plaintext passcode in persistent storage

  @responder-actions @SHALL
  Scenario: P flag is included in the SHL payload when a passcode is provided
    Given the request includes a passcode
    When the SHL payload is constructed
    Then the "flag" field in the SHL payload SHALL include the "P" character

  # ─── Folder ID and Encryption Key Generation ─────────────────────────────────

  @responder-actions @SHALL
  Scenario: VHL Sharer generates a unique folder ID with 256-bit entropy
    When the folder ID is created
    Then the folder ID SHALL have at least 256 bits of entropy

  @responder-actions @SHALL
  Scenario: VHL Sharer generates a 32-byte random encryption key encoded as 43-character base64url
    When the encryption key is generated
    Then the key SHALL be 32 bytes produced by a cryptographically secure RNG
    And the key SHALL be base64url-encoded to produce exactly 43 characters

  # ─── SHL Payload Construction ────────────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: SHL payload url field is an HTTPS URL pointing to the List resource
    Given the VHL Sharer has generated folder ID "abc123def456"
    When the SHL payload is constructed
    Then the "url" field SHALL be an HTTPS URL pointing to the List resource for that folder

  @responder-actions @SHALL
  Scenario: Manifest URL includes all mandatory FHIR search parameters
    When the manifest URL is assembled
    Then the URL SHALL include "_id" set to the folder ID
    And the URL SHALL include "code" set to "folder"
    And the URL SHALL include "status" set to "current"
    And the URL SHALL include "patient.identifier" with the patient's identifier in "system|value" format

  @responder-actions @SHALL
  Scenario: Manifest URL includes _include=List:item when Include DocumentReference Option is supported
    Given the VHL Sharer supports the Include DocumentReference Option
    When the manifest URL is constructed
    Then the URL SHALL include "_include=List:item"

  @responder-actions @SHALL
  Scenario: Manifest URL does not include _include when Include DocumentReference Option is not supported
    Given the VHL Sharer does NOT support the Include DocumentReference Option
    When the manifest URL is constructed
    Then the URL SHALL NOT include the "_include" parameter

  @responder-actions @SHALL
  Scenario: SHL payload key field is the 43-character base64url-encoded encryption key
    When the SHL payload "key" field is set
    Then the value SHALL be exactly 43 characters of valid base64url encoding

  @responder-actions @SHALL
  Scenario: SHL payload version field defaults to 1
    When the "v" field is set in the SHL payload
    Then the "v" field SHALL default to 1

  # ─── OAuth with SSRAA Option ───────────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: VHL Sharer includes extension.fhirBaseUrl when OAuth with SSRAA Option is supported
    Given the VHL Sharer supports the OAuth with SSRAA Option
    When the SHL payload is constructed
    Then the "extension" object SHALL include "fhirBaseUrl" set to the canonical FHIR base URL of the VHL Sharer

  @responder-actions @SHALL
  Scenario: VHL Sharer does not include extension.fhirBaseUrl when OAuth with SSRAA Option is not supported
    Given the VHL Sharer does NOT support the OAuth with SSRAA Option
    When the SHL payload is constructed
    Then the "extension.fhirBaseUrl" field SHALL NOT be present

  # ─── SHL Payload Encoding ──────────────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: SHL payload JSON is minified before encoding
    When the SHL payload JSON is finalized
    Then the JSON SHALL be minified (whitespace removed)

  @responder-actions @SHALL
  Scenario: Minified SHL payload is base64url-encoded
    When the minified JSON payload is encoded
    Then it SHALL be base64url-encoded per RFC 4648

  @responder-actions @SHALL
  Scenario: Encoded SHL payload is prefixed with vhlink:/
    When the base64url-encoded string is assembled
    Then it SHALL be prefixed with "vhlink:/"

  # ─── HCERT/CWT Encoding ───────────────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: VHL Sharer encodes the SHL payload within an HCERT structure
    When the VHL Sharer encodes the VHL
    Then the SHL payload SHALL be encoded within an HCERT structure as per the WHO SMART Trust HCERT specification

  @responder-actions @SHALL
  Scenario: SHL payload is placed at claim key 5 within the CWT hcert claim
    When the CWT "hcert" claim (key -260) is assembled
    Then the SHL payload SHALL be placed at claim key 5 within the hcert object

  @responder-actions @SHALL
  Scenario: VHL Sharer generates the QR code as per the HCERT specification
    When the QR code is generated
    Then the VHL Sharer SHALL generate the QR code as per the HCERT specification

  @responder-actions @SHALL
  Scenario: Encoded payload is prefixed with HC1:
    When the context identifier is prepended
    Then the final string SHALL begin with "HC1:"

  # ─── Successful Response ───────────────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: VHL Sharer returns the generated QR code on success
    Given the VHL generation process completes successfully
    When the VHL Sharer returns the response
    Then the response SHALL include a QR code image containing the HCERT-encoded VHL

  # ─── Error Responses ─────────────────────────────────────────────────────────

  @responder-actions @SHALL
  Scenario: VHL Sharer returns HTTP 400 with OperationOutcome when sourceIdentifier is missing
    Given the $generate-vhl request is missing "sourceIdentifier"
    When the VHL Sharer evaluates the request
    Then the response SHALL be HTTP 400 Bad Request
    And the response body SHALL be a FHIR OperationOutcome indicating the missing parameter

  @responder-actions @SHALL
  Scenario: VHL Sharer returns HTTP 4xx with OperationOutcome when sourceIdentifier resolves no patient
    Given the "sourceIdentifier" does not match any known patient
    When the VHL Sharer attempts to process the request
    Then the response SHALL be HTTP 4xx
    And the response body SHALL be a FHIR OperationOutcome with error details

  @responder-actions @SHALL
  Scenario: VHL Sharer returns HTTP 5xx with OperationOutcome for internal server errors
    Given an internal error occurs during VHL generation
    When the VHL Sharer handles the error
    Then the response SHALL be HTTP 5xx
    And the response body SHALL be a FHIR OperationOutcome with the error description

  # ─── Security ────────────────────────────────────────────────────────────────

  @security @SHALL
  Scenario: Encryption key is generated using a cryptographically secure random number generator
    When the 32-byte encryption key is generated
    Then it SHALL be generated using a cryptographically secure random number generator

  @security @SHALL
  Scenario: Passcode is never embedded in the QR code or VHL URL
    Given a passcode was provided in the request
    When the QR code and VHL URL are generated
    Then the plaintext passcode SHALL NOT appear in the QR code content
    And the plaintext passcode SHALL NOT appear in the VHL URL

  @security @SHALL
  Scenario: QR codes are encoded as HCERT with digital signatures for authenticity
    When the QR code is generated
    Then the QR code SHALL be encoded as HCERT with digital signatures for authenticity
