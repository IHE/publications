# Appendix A: Comparison of health links - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* **Appendix A: Comparison of health links**

## Appendix A: Comparison of health links

This document compares the architectural and operational characteristics of HL7 SMART Health Links (SHLink) and IHE Verified Health Links (VHL). While both frameworks aim to facilitate the sharing of health-related data through links—often delivered via QR codes—they differ substantially in trust model, security posture, and expected deployment environments.

SMART Health Links are designed for lightweight, ad hoc scenarios where patients initiate sharing, and trust is established implicitly via HTTPS. They prioritize simplicity and minimal infrastructure. The model is permissive: possession of a link typically implies access. There are no normative requirements for PKI, audit logging, or consent, though implementations may layer these on.

Verified Health Links, in contrast, are built for regulated environments—such as national health systems or cross-jurisdictional exchanges—where trust must be pre-established. VHL relies on X.509-based PKI, ATNA secure channels, digital signatures anchored to a formal Trust Anchor and receiver authentication. Access is gated by participant authorization, and consent and audit logging are supported options, not afterthoughts.

**Shared payload format.** It is important to note that **VHL reuses the SMART Health Links payload format** (the `url`, `key`, `flag`, `label`, `exp`, `v`, and `extension` fields) and the SHL-defined manifest-request parameters (`recipient`, `passcode`, `embeddedLengthMax`). The comparison below is therefore not a comparison of payload shapes — it is a comparison of the **trust, security, and governance model** layered on top of that shared payload. Elsewhere in this IG, a concrete populated instance is called a **VHL payload**; the schema it conforms to is called the **SHL payload format**.

## How to Read This Table

Each row in the table compares the two frameworks along a specific technical or policy dimension (e.g., “Transmission Method”, “Audit Logging”). Each column contains:

* HL7 SMART Health Links: Describes how this feature or concern is addressed in the SHLink model.
* IHE Verified Health Links (VHL): Describes how the same feature or concern is handled in the VHL framework.
* References: Provides source links to relevant specifications and implementation guides.

## Specification vs. Practice

Throughout the table, each cell distinguishes between what is:

* Specification: What the formal standard explicitly defines, mandates, or constrains. This reflects the normative behavior required by a specification like HL7 SHLink or IHE VHL.
* Practice: What implementers commonly do in real-world deployments—even if it is not explicitly required by the standard. These behaviors may be considered de facto conventions, optional enhancements, or jurisdictional requirements (e.g., CA:SHL guidance).

This distinction is important because many real-world systems implement stronger safeguards or broader capabilities than the specification minimally requires. Understanding this gap is essential when evaluating interoperability, compliance, and security expectations.

## Note on CA:SHL Guidance

Some entries in the comparison table include references to CA:SHL, a jurisdictional guidance developed for use in Canada. These references reflect specific implementation constraints or policy augmentations—such as mandatory use of passcodes or encryption—that are not part of the baseline HL7 SHLink specification. Where applicable, these notes are flagged in the SMART Health Link column to distinguish jurisdictional practice from core specification.

⸻

| | | | |
| :--- | :--- | :--- | :--- |
| 1. Transmission Method | **Specification:**Defined as a URL referencing externally hosted content, typically on a FHIR server.**Practice:**Often shared via a QR code. Embedding the entire IPS in a QR code is specific to SMART Health Cards and not part of the SHLink specification. | **Specification:**Defines a URL that references a manifest endpoint (a FHIR`List`search) hosted by the VHL Sharer; binary document retrieval uses MHD.**Practice:**QR codes are used to convey that reference or locator URL. | HL7:[SMART App Launch](https://hl7.org/fhir/smart-app-launch/index.html)VHL:[IHE VHL Volume 1](https://build.fhir.org/ig/IHE/ITI.VHL/volume-1.html) |
| 2. Verifying URL Safety | **Specification:**No mandated method.**Practice:**Relies on HTTPS/TLS for domain authentication. Some implementations also use JWKS and`iss`claims (as in SMART Health Cards), though not required by SHLink. | **Specification:**URL safety is enforced through a trust framework where digital signatures are validated using PKI. Public keys and revocation data are retrieved from a designated Trust Anchor. | HL7:[SMART App Launch](https://hl7.org/fhir/smart-app-launch/index.html)VHL:[VHL Volume 1 – Security](https://build.fhir.org/ig/IHE/ITI.VHL/volume-1.html) |
| 3. Issuance of Sender Credentials | **Specification:**No requirement for credential issuance.**Practice:**Optional signing using JWS with keys discoverable via JWKS, as in SMART Health Cards. | **Specification:**The VHL Sharer SHALL hold PKI credentials usable within the trust network. Typically X.509 certificates, though the spec abstracts the format. | HL7:[SMART Health Cards Overview](https://smarthealth.cards/)VHL:[VHL Volume 1 – Actors](https://build.fhir.org/ig/IHE/ITI.VHL/volume-1.html#xx-1.1-actors) |
| 4. Receiver Credentials for Access | **Specification:**Possession of the URL is sufficient.**Practice:**Some implementations add passcodes or short-lived tokens.**Note (CA:SHL):**Passcode use is mandatory under Canadian jurisdictional guidance. | **Specification:**Receiver must present valid PKI credentials and be authorized within the trust network. Access control is enforced at the repository level. Optional use of passcodes is also supported. | HL7:[SMART App Launch](https://hl7.org/fhir/smart-app-launch/index.html)VHL:[VHL Volume 1 – Actors](https://build.fhir.org/ig/IHE/ITI.VHL/volume-1.html#xx-1.1-actors) |
| 5. Document Integrity Verification | **Specification:**Not required.**Practice:**JWS signatures and JWKS-based verification are sometimes implemented, but not normative. | **Specification:**VHL signature verification is required before the VHL is used. Document-level signature verification is optional via the**Verify Document Signature Option**, using PKI material obtained via the Trust Anchor. | HL7 (optional):[RFC7515](https://datatracker.ietf.org/doc/html/rfc7515),[RFC7517](https://datatracker.ietf.org/doc/html/rfc7517)VHL:[VHL Volume 1 – Signatures](https://build.fhir.org/ig/IHE/ITI.VHL/volume-1.html) |
| 6. Unauthorized Access Prevention | **Specification:**Access is controlled by possession of the URL.**Practice:**Implementations may add PINs or encrypt URLs.**Note (CA:SHL):**Encryption and short-lived URLs are mandatory under Canadian jurisdictional guidance. | **Specification:**ATNA secure channel is required. The VHL Receiver authenticates to the Sharer via at least one of: HTTP Message Signatures (RFC 9421), OAuth with SSRAA, or the Verifiable Credential Option. The Sharer enforces trust-network authorization before responding. | HL7:[SMART Health Cards Overview](https://smarthealth.cards/)VHL:[VHL Volume 1 – Security](https://build.fhir.org/ig/IHE/ITI.VHL/volume-1.html) |
| 7. Predefined Relationship Requirements | **Specification:**No pre-established trust relationship is required; HTTPS suffices for confidentiality.**Practice:**Trust is implicit and ephemeral. | **Specification:**Requires a pre-established trust relationship anchored to a Trust Anchor. Used for jurisdictional or enterprise-level governance. | HL7:[SMART App Launch](https://hl7.org/fhir/smart-app-launch/index.html)VHL:[VHL Volume 1 – Trust Framework](https://build.fhir.org/ig/IHE/ITI.VHL/volume-1.html) |
| 8. Consent Recording | **Specification:**Consent capture is out of scope.**Practice:**Consent MAY be recorded using external systems like SMART Health Cards or FHIR Consent. | **Specification:**Consent recording is addressed as a**cross-profile consideration**. The VHL Sharer MAY be grouped with IHE Privacy Consent on FHIR (PCF) — Consent Recipient and Policy Enforcement Point — to capture and enforce patient consent during VHL generation and document retrieval.**Practice:**Jurisdictions requiring consent pair VHL with PCF Consent Creator/Recipient/PEP groupings. | HL7:[SMART Health Cards](https://smarthealth.cards/)VHL:[VHL Volume 1 – Cross-Profile (PCF)](https://build.fhir.org/ig/IHE/ITI.VHL/volume-1.html#pcf-cross-profile) |
| 9. Audit Logging | **Specification:**Not mandated.**Practice:**May be handled externally at the receiver or by hosting platform.Future versions may introduce audit requirements. | **Specification:**Audit logging is addressed as a**cross-profile consideration**. The VHL Sharer and VHL Receiver SHALL be grouped with ATNA Secure Node/Application; this grouping provides FHIR`AuditEvent`recording for document access and transaction events.**Practice:**Required by some jurisdictional regimes. | HL7:[SMART App Launch](https://hl7.org/fhir/smart-app-launch/index.html)VHL:[VHL Volume 1 – Cross-Profile (ATNA)](https://build.fhir.org/ig/IHE/ITI.VHL/volume-1.html#atna-cross-profile) |
| 10. Criteria for Choosing the Standard | **Specification:**Designed for lightweight, patient-initiated sharing with minimal infrastructure and low regulatory overhead.**Practice:**Best for consumer use cases and voluntary disclosure. | **Specification:**Designed for regulated, cross-jurisdictional environments requiring formal trust, optional consent, and audit capabilities. Best suited to healthcare networks, governments, or regulated exchanges. | HL7:[SMART Health Cards](https://smarthealth.cards/)VHL:[VHL Volume 1 – Use Cases](https://build.fhir.org/ig/IHE/ITI.VHL/volume-1.html) |

