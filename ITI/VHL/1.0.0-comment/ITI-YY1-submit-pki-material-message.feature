Feature: ITI-YY1 Submit PKI Material – Message Semantics
  The Submit PKI Material message is a DID Document conforming to W3C DID Core 1.0,
  submitted via HTTP POST to the Trust Anchor's /did endpoint.
  These scenarios define what a conforming ITI-YY1 message SHALL contain.
  They apply equally to submitters (who construct the message) and the Trust Anchor
  (which validates it) — without repeating the requirement in each actor's file.

  Background:
    Given a DID Document intended for submission via ITI-YY1

  # ─── HTTP Transport ─────────────────────────────────────────────────────────

  @message-semantics @SHALL
  Scenario: Request uses HTTP POST to the Trust Anchor /did endpoint
    When the HTTP request is constructed
    Then the HTTP method SHALL be POST
    And the URL SHALL be "[trust-anchor-base]/did"

  @message-semantics @SHALL
  Scenario: Request carries Content-Type application/did+json
    When the HTTP request headers are set
    Then the Content-Type header SHALL be "application/did+json"

  # ─── Mandatory DID Document Fields ─────────────────────────────────────────

  @message-semantics @SHALL
  Scenario: DID Document contains the mandatory @context element
    When the DID Document is inspected
    Then the DID Document SHALL contain the "@context" element
    And the "@context" element SHALL include "https://www.w3.org/ns/did/v1"

  @message-semantics @SHALL
  Scenario: DID Document contains exactly one id element with a valid DID
    When the DID Document is inspected
    Then the DID Document SHALL contain exactly one "id" element
    And the "id" value SHALL be a valid DID matching "did:<method>:<method-specific-id>"

  @message-semantics @SHALL
  Scenario: DID Document contains at least one verification method
    When the DID Document is inspected
    Then the DID Document SHALL contain a "verificationMethod" array
    And the "verificationMethod" array SHALL contain at least one entry

  # ─── Verification Method Structure ─────────────────────────────────────────

  @message-semantics @SHALL
  Scenario: Each verification method contains required fields
    When a verification method is inspected
    Then it SHALL contain an "id" element
    And it SHALL contain a "type" element
    And it SHALL contain a "controller" element
    And it MAY contain a "publicKeyJwk" element

  @message-semantics @SHALL
  Scenario: Public key in JWK format conforms to RFC 7517 and excludes private key material
    When the "publicKeyJwk" element is inspected
    Then it SHALL conform to RFC 7517
    And it SHALL NOT include the "d" (private key) parameter

  @message-semantics @SHALL
  Scenario: DID Document contains no private key material anywhere
    When the full DID Document payload is inspected
    Then the DID Document SHALL NOT contain any private key material
    And no "publicKeyJwk" object SHALL include the "d" parameter

  # ─── Cryptographic Acceptability ────────────────────────────────────────────

  @message-semantics @SHALL
  Scenario Outline: Verification method type is a recognised cryptographic suite
    When the "type" element of a verification method is "<suite_type>"
    Then the verification method SHALL use a recognised cryptographic suite

    Examples:
      | suite_type                            |
      | JsonWebKey2020                        |
      | EcdsaSecp256k1VerificationKey2019     |

  @message-semantics @SHOULD
  Scenario: EC key curve meets minimum cryptographic strength
    When an EC key is present in a verification method
    Then the key curve SHOULD be "P-256" or stronger (e.g., P-384, P-521)

  # ─── Key Usage Declaration ──────────────────────────────────────────────────

  @message-semantics @SHOULD
  Scenario: Key usage is declared via authentication assertionMethod or keyAgreement
    When the DID Document declares the intended use of a key
    Then the key SHOULD be referenced in at least one of "authentication", "assertionMethod", or "keyAgreement"
