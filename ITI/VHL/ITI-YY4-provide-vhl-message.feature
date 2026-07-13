Feature: ITI-YY4 Provide VHL – Message Semantics
  Defines the format of the VHL message (QR code) exchanged in ITI-YY4:
  the encoding pipeline (HC1: → Base45 → ZLIB → CWT), CWT structure,
  and SHL payload field requirements. These apply to both the VHL Holder
  (who presents) and the VHL Receiver (who decodes and validates).

  Background:
    Given a VHL QR code produced via ITI-YY3

  # ─── QR Code Physical Format ─────────────────────────────────────────────────

  @message-semantics @SHALL
  Scenario: QR code uses Alphanumeric mode per ISO/IEC 18004:2015
    When the QR code is inspected
    Then it SHALL be encoded in Alphanumeric mode (Mode 2) per ISO/IEC 18004:2015

  @message-semantics @SHOULD
  Scenario: QR code diagonal size is recommended between 35mm and 60mm for physical display
    When the QR code is rendered on a physical medium
    Then the minimum recommended diagonal size SHOULD be between 35mm and 60mm

  # ─── Encoded String: HC1: Context Identifier ─────────────────────────────────

  @message-semantics @SHALL
  Scenario: Decoded QR code string begins with HC1: prefix
    When the QR code is decoded from Alphanumeric mode
    Then the resulting string SHALL begin with "HC1:"

  # ─── Encoded String: Base45 Payload ──────────────────────────────────────────

  @message-semantics @SHALL
  Scenario: Payload after removing HC1: prefix is valid Base45
    Given the HC1: prefix has been removed from the decoded string
    When Base45 decoding is applied
    Then the result SHALL be a compressed byte array

  # ─── Compressed Bytes: ZLIB/DEFLATE ─────────────────────────────────────────

  @message-semantics @SHALL
  Scenario: Base45-decoded bytes decompress via ZLIB/DEFLATE to a CBOR CWT structure
    Given the Base45-decoded byte array is available
    When ZLIB (RFC 1950) with DEFLATE (RFC 1951) decompression is applied
    Then the result SHALL be a CBOR-encoded CWT structure

  # ─── CWT Protected Header ────────────────────────────────────────────────────

  @message-semantics @SHALL
  Scenario: CWT protected header contains alg field with value ES256 or PS256
    When the CWT protected header is inspected
    Then the "alg" field SHALL be "ES256" or "PS256"

  @message-semantics @SHALL
  Scenario: CWT protected header contains kid field of 8 bytes
    When the CWT protected header is inspected
    Then the "kid" field SHALL be present
    And its value SHALL be 8 bytes representing the truncated SHA-256 fingerprint of the DSC

  # ─── CWT Claims ──────────────────────────────────────────────────────────────

  @message-semantics @SHALL
  Scenario: CWT exp claim when present is a future NumericDate at time of issuance
    Given the CWT contains an "exp" claim (key 4)
    When the claim is inspected at issuance time
    Then the value SHALL be a NumericDate in the future relative to "iat"

  @message-semantics @SHALL
  Scenario: CWT iat claim is not in the future
    When the CWT "iat" claim (key 6) is inspected
    Then the value SHALL NOT be in the future

  @message-semantics @SHALL
  Scenario: CWT hcert claim contains an object with SHL payload at claim key 5
    When the "hcert" claim (key -260) is inspected
    Then it SHALL contain an object with claim key 5
    And claim key 5 SHALL be the SHL payload object

  # ─── SHL Payload Fields ──────────────────────────────────────────────────────

  @message-semantics @SHALL
  Scenario: SHL payload url field is present and is a valid HTTPS URL
    When the SHL payload is inspected
    Then the "url" field SHALL be present
    And the value SHALL be a valid HTTPS URL

  @message-semantics @SHALL
  Scenario: SHL payload key field is present and is exactly 43 characters of base64url
    When the SHL payload is inspected
    Then the "key" field SHALL be present
    And the value SHALL be exactly 43 characters of valid base64url encoding

  @message-semantics @SHALL
  Scenario Outline: SHL payload flag field uses defined single-character flag values
    Given the SHL payload "flag" contains "<flag>"
    When the flags are interpreted
    Then the meaning SHALL be "<meaning>"

    Examples:
      | flag | meaning                                          |
      | L    | Long-term use — VHL intended for repeated access |
      | P    | Passcode required — SHALL obtain from VHL Holder  |
      | U    | Direct file access                               |

  # ─── PHI Exclusion ───────────────────────────────────────────────────────────

  @message-semantics @SHALL
  Scenario: QR code payload contains no protected health information
    When the QR code payload is inspected
    Then it SHALL NOT contain any PHI
    And it SHALL contain only the SHL payload (reference URL and authorization metadata)
