Feature: ITI-YY3 Generate VHL – VHL Holder Expected Actions
  As a VHL Holder (Initiator) requesting VHL generation,
  these scenarios verify the actions the VHL Holder SHALL take when
  constructing the request, handling the passcode, and processing the response.
  Message format is defined in ITI-YY3-generate-vhl-message.feature.

  Background:
    Given the VHL Holder's client application is connected to the VHL Sharer service
    And the VHL Sharer base URL is "https://vhl-sharer.example.org"

  # ─── Request Construction ────────────────────────────────────────────────────

  @initiator-actions @SHALL
  Scenario: VHL Holder constructs a well-formed request with only the required parameter
    Given the patient identifier is "urn:oid:2.16.840.1.113883.2.4.6.3|PASSPORT123"
    When the request URL is constructed with only the required parameter
    Then the URL SHALL be:
      """
      GET [base]/Patient/$generate-vhl?sourceIdentifier=urn:oid:2.16.840.1.113883.2.4.6.3|PASSPORT123
      """

  @initiator-actions @SHALL
  Scenario: VHL Holder includes P flag when providing a passcode
    Given the VHL Holder includes "passcode=secretpin" in the request
    When the request is assembled
    Then the "flag" parameter SHALL include "P"

  # ─── Response Handling ─────────────────────────────────────────────────────

  @initiator-actions @SHALL
  Scenario: VHL Holder displays or prints the QR code for scanning by VHL Receivers
    Given the VHL Sharer has returned a QR code
    When the VHL Holder receives the response
    Then the VHL Holder SHALL display or print the QR code for scanning by VHL Receivers

  @initiator-actions @SHALL
  Scenario: VHL Holder caches the encryption key securely
    Given the VHL Sharer has returned a QR code containing the SHL payload
    When the VHL Holder processes the response
    Then the VHL Holder SHALL cache the encryption key securely (extracted from the SHL payload) for future document decryption

  # ─── Passcode Handling ───────────────────────────────────────────────────────

  @initiator-actions @SHALL
  Scenario: VHL Holder securely stores the plaintext passcode after VHL generation
    Given the VHL Holder included a passcode in the $generate-vhl request
    When the VHL Sharer returns the QR code
    Then the VHL Holder SHALL securely store the plaintext passcode

  @initiator-actions @SHALL
  Scenario: VHL Holder provides the passcode to authorized VHL Receivers out-of-band
    Given the VHL Holder needs to communicate the passcode to an authorised VHL Receiver
    When the passcode is transmitted
    Then the VHL Holder SHALL use secure transmission methods when sharing the passcode out-of-band

  # ─── Optional Actions ──────────────────────────────────────────────────────

  @initiator-actions @MAY
  Scenario: VHL Holder may maintain a record of QR code presentations
    Given the VHL Holder has a QR code
    When the QR code is presented to a VHL Receiver
    Then the VHL Holder MAY maintain a record of QR code presentations

  @initiator-actions @MAY
  Scenario: VHL Holder may revoke VHL access if supported by VHL Sharer
    Given the VHL Holder wishes to revoke a previously generated VHL
    When revocation is supported by the VHL Sharer
    Then the VHL Holder MAY revoke VHL access
