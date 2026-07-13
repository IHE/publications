Feature: ITI-YY4 Provide VHL – VHL Holder Expected Actions
  As a VHL Holder (Initiator) presenting a VHL QR code to a VHL Receiver,
  these scenarios verify the actions the VHL Holder SHALL take before, during,
  and after QR code presentation, including validity checks and passcode handling.
  Message format is defined in ITI-YY4-provide-vhl-message.feature.

  Background:
    Given the VHL Holder has a valid VHL QR code obtained from a VHL Sharer via ITI-YY3
    And the VHL Holder is in the presence of or connected to a VHL Receiver

  # ─── Pre-transmission Validity Checks ────────────────────────────────────────

  @initiator-actions @SHALL
  Scenario: VHL Holder verifies the CWT signature is intact before presenting the QR code
    Given the VHL Holder has a QR code
    When the VHL Holder validates the QR code before presentation
    Then the CWT COSE signature SHALL be verified as valid

  @initiator-actions @SHALL
  Scenario: VHL Holder does not present an expired QR code
    Given the VHL Holder has a QR code whose CWT exp claim has already passed
    When the VHL Holder checks validity
    Then the VHL Holder SHALL NOT present the expired QR code to the VHL Receiver
    And the VHL Holder SHOULD request a new VHL from the VHL Sharer

  # ─── QR Code Presentation ────────────────────────────────────────────────────

  @initiator-actions @SHALL
  Scenario: QR code is displayed or printed in a condition suitable for camera scanning
    Given the VHL Holder is presenting the QR code
    When the QR code is displayed or printed
    Then the QR code SHALL be in a format and condition suitable for camera scanning

  # ─── Passcode Handling ───────────────────────────────────────────────────────

  @initiator-actions @SHALL
  Scenario: VHL Holder provides passcode out-of-band when P flag is present in the SHL payload
    Given the SHL payload "flag" contains "P"
    When the VHL Holder presents the QR code to the VHL Receiver
    Then the VHL Holder SHALL provide the plaintext passcode to the VHL Receiver through a separate secure channel

  @initiator-actions @SHALL
  Scenario: VHL Holder ensures QR code is displayed at appropriate size for reliable scanning
    Given the VHL Holder is presenting the QR code
    When the display size is determined
    Then the QR code SHALL be displayed at an appropriate size for reliable scanning

  # ─── Post-presentation Optional Actions ──────────────────────────────────────

  @initiator-actions @MAY
  Scenario: VHL Holder may maintain a record of QR code presentations
    Given the VHL Holder has presented the QR code
    When the presentation is complete
    Then the VHL Holder MAY record the event including timestamp and receiver identity

  @initiator-actions @MAY
  Scenario: VHL Holder may revoke VHL access if supported by the VHL Sharer
    Given the VHL Holder no longer wishes to grant document access
    When the VHL Holder initiates a revocation
    Then the VHL Holder MAY contact the VHL Sharer to revoke the VHL

  # ─── Acknowledgment Handling ─────────────────────────────────────────────────

  @initiator-actions @SHALL
  Scenario: VHL Holder does not rely on acknowledgment for security decisions
    Given the VHL Receiver has sent or not sent an acknowledgment
    When the VHL Holder receives or does not receive it
    Then the VHL Holder SHALL NOT use the presence or absence of acknowledgment to make security decisions
