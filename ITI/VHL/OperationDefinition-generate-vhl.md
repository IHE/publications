# Generate VHL - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Generate VHL**

## OperationDefinition: Generate VHL 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/OperationDefinition/generate-vhl | *Version*:1.0.0-comment |
| Active as of 2026-06-14 | *Computable Name*:GenerateVHL |

 
This operation generates a Verifiable Health Link (VHL) for transmission or display. The VHL MAY be returned as a QR code (HCERT/CWT) or, when the VHL Sharer supports the VC Envelope Option, as a signed W3C Verifiable Credential. 
Input Parameters: 
* sourceIdentifier: Patient identifier (required)
* exp: Expiration time in Epoch seconds (optional)
* flag: Single-character flags in alphabetical order - L (long-term use), P (Passcode required), U (direct file access) (optional)
* label: Short description up to 80 characters (optional)
* passcode: User-supplied passcode for passcode-protected VHLs (optional)
* purposeOfUse: Purpose(s) of use the VHL Holder is authorizing for this share, bound to the HL7 v3 PurposeOfUse value set (optional). Populates Consent.provision.purpose when an IHE PCF Consent is bound to the generated folder.
* format: Requested output carrier - 'qrcode' (default) or 'vc'. 'vc' requires the VHL Sharer to support the VC Envelope Option.
 
Output Generation: 
* When format=qrcode: Returns a Binary resource containing the QR code image (PNG or SVG format) that encodes the VHL as an HCERT/CWT structure.
* When format=vc: Returns a Binary resource (media type application/vc+ld+json) containing a JSON-LD Verifiable Credential whose credentialSubject carries the VHL payload, signed with the VHL Sharer's trust-network key using W3C Data Integrity (DataIntegrityProof, cryptosuite ecdsa-2019).
* Exactly one of qrcode or verifiableCredential SHALL be populated.
 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "generate-vhl",
  "url" : "https://profiles.ihe.net/ITI/VHL/OperationDefinition/generate-vhl",
  "version" : "1.0.0-comment",
  "name" : "GenerateVHL",
  "title" : "Generate VHL",
  "status" : "active",
  "kind" : "operation",
  "date" : "2026-06-14T15:37:09-05:00",
  "publisher" : "IHE IT Infrastructure Technical Committee",
  "contact" : [{
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ihe.net/ihe_domains/it_infrastructure/"
    }]
  },
  {
    "telecom" : [{
      "system" : "email",
      "value" : "iti@ihe.net"
    }]
  },
  {
    "name" : "IHE IT Infrastructure Technical Committee",
    "telecom" : [{
      "system" : "email",
      "value" : "iti@ihe.net"
    }]
  }],
  "description" : "This operation generates a Verifiable Health Link (VHL) for transmission or display. The VHL MAY be returned as a QR code (HCERT/CWT) or, when the VHL Sharer supports the VC Envelope Option, as a signed W3C Verifiable Credential.\n\nInput Parameters:\n- sourceIdentifier: Patient identifier (required)\n- exp: Expiration time in Epoch seconds (optional)\n- flag: Single-character flags in alphabetical order - L (long-term use), P (Passcode required), U (direct file access) (optional)\n- label: Short description up to 80 characters (optional)\n- passcode: User-supplied passcode for passcode-protected VHLs (optional)\n- purposeOfUse: Purpose(s) of use the VHL Holder is authorizing for this share, bound to the HL7 v3 PurposeOfUse value set (optional). Populates Consent.provision.purpose when an IHE PCF Consent is bound to the generated folder.\n- format: Requested output carrier - 'qrcode' (default) or 'vc'. 'vc' requires the VHL Sharer to support the VC Envelope Option.\n\nOutput Generation:\n- When format=qrcode: Returns a Binary resource containing the QR code image (PNG or SVG format) that encodes the VHL as an HCERT/CWT structure.\n- When format=vc: Returns a Binary resource (media type application/vc+ld+json) containing a JSON-LD Verifiable Credential whose credentialSubject carries the VHL payload, signed with the VHL Sharer's trust-network key using W3C Data Integrity (DataIntegrityProof, cryptosuite ecdsa-2019).\n- Exactly one of qrcode or verifiableCredential SHALL be populated.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "code" : "generate-vhl",
  "system" : false,
  "type" : true,
  "instance" : false,
  "parameter" : [{
    "name" : "sourceIdentifier",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "A FHIR Identifier (business identifier such as MRN, passport number, or national ID) that the VHL Sharer uses to locate the Patient record and that Patient's documents. Serialized as a FHIR token search parameter (`system|code`, e.g., `urn:oid:2.16.840.1.113883.2.4.6.3|PASSPORT123`).",
    "type" : "string",
    "searchType" : "token"
  },
  {
    "name" : "exp",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Optional. Number representing expiration time in Epoch seconds.",
    "type" : "positiveInt"
  },
  {
    "name" : "flag",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Optional. String created by concatenating single-character flags in alphabetical order. L (long-term use), P (Passcode required)",
    "type" : "string",
    "searchType" : "string"
  },
  {
    "name" : "label",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Optional. String no longer than 80 characters that provides a short description of the data behind the VHL.",
    "type" : "string",
    "searchType" : "string"
  },
  {
    "name" : "passcode",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Optional. User-supplied passcode for passcode-protected VHLs. If provided, the VHL Sharer SHALL securely hash and store this passcode for validation during manifest retrieval (ITI-YY5). The 'P' flag SHALL be included in the flag parameter when a passcode is set.",
    "type" : "string",
    "searchType" : "string"
  },
  {
    "name" : "purposeOfUse",
    "use" : "in",
    "min" : 0,
    "max" : "*",
    "documentation" : "Optional. Purpose(s) of use the VHL Holder is authorizing for this share (e.g., TREAT, HPAYMT, HRESCH). The VHL Sharer SHALL persist these value(s) against the generated folder ID. When the VHL Sharer is grouped with an IHE PCF Consent Creator or Consent Recipient, these values SHALL populate Consent.provision.purpose on any Consent created for or bound to this folder. At ITI-YY5 the VHL Sharer MAY use the recorded purpose to enforce consistency with the VHL Receiver's declared purpose claim (e.g., the OAuth access token's purposeOfUse claim, the SSRAA hl7-b2b extension, or an equivalent claim carried in a Verifiable Credential).",
    "type" : "string",
    "searchType" : "token"
  },
  {
    "name" : "format",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Optional. Requested carrier for the returned VHL. Allowed values: 'qrcode' (default - HCERT/CWT QR code) or 'vc' (W3C Verifiable Credential). The 'vc' value requires the VHL Sharer to support the VC Enveloped VHL Option; if unsupported, the VHL Sharer SHALL return an OperationOutcome error. If omitted, the VHL Sharer SHALL default to 'qrcode'.",
    "type" : "code"
  },
  {
    "name" : "qrcode",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "A Binary resource containing the QR code image (PNG or SVG format) that encodes the VHL as an HCERT/CWT structure. Populated when format='qrcode' (default).\n\nVHL Payload Construction:\n1. Generate a unique folder ID with 256-bit entropy to serve as the List resource identifier\n2. Generate a 32-byte (256-bit) random encryption key, base64url-encode it (resulting in 43 characters) - this is the 'key' parameter\n3. Construct the manifest URL as a query on the base List resource:\n   - If VHL Sharer supports Include DocumentReference Option:\n     [base]/List?_id=[folder-id]&code=folder&status=current&patient.identifier=[patient-id]&_include=List:item\n   - If VHL Sharer does NOT support Include DocumentReference Option:\n     [base]/List?_id=[folder-id]&code=folder&status=current&patient.identifier=[patient-id]\n4. Create the VHL payload (using the SHL payload format) as a JSON object with:\n   - url: the manifest URL from step 3\n   - key: the base64url-encoded encryption key from step 2 (43 characters)\n   - exp: (optional) expiration time in Epoch seconds\n   - flag: (optional) flags string (e.g., 'P' for passcode, 'L' for long-term, 'U' for direct file access)\n   - label: (optional) description string (max 80 characters)\n   - v: version number (defaults to 1)\n   - extension: (conditional) object containing implementation-defined extensions. Required when the VHL Sharer supports the OAuth with SSRAA Option, in which case it SHALL include fhirBaseUrl (the FHIR base URL of the VHL Sharer, e.g., https://vhl-sharer.example.org)\n5. Minify the JSON payload, Base64url-encode it, and prefix with vhlink:/\n\nQR Code Generation (HCERT/CWT Encoding):\nThe VHL Sharer SHALL encode the VHL payload within an HCERT structure as per the [WHO SMART TRUST specification] (https://smart.who.int/trust/). The HCERT claim key SHALL be 5 for VHL. The QR code is then generated per the HCERT Specification.\n\nFor complete HCERT specification, see: https://smart.who.int/trust/hcert_spec.html\n\nFor HCERT logical model, see: https://smart.who.int/trust/StructureDefinition-HCert.html\n\nFor SHL payload format details (the schema the VHL payload conforms to), see: https://hl7.org/fhir/uv/smart-health-cards-and-links/links-specification.html#construct-a-smart-health-link-payload",
    "type" : "Binary"
  },
  {
    "name" : "verifiableCredential",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "A Binary resource (contentType application/vc+ld+json) containing a W3C Verifiable Credential that carries the VHL. Populated only when format='vc' and the VHL Sharer supports the VC Enveloped VHL.\n\nThe VC is a JSON-LD document per the W3C Verifiable Credentials Data Model v2 with an embedded proof of type DataIntegrityProof (cryptosuite ecdsa-2019) per W3C Verifiable Credential Data Integrity 1.0. The VC is issued and signed by the VHL Sharer using its trust-network key (same DSC/key material used for HCERT/CWT signing), so the VHL Receiver validates the VC proof against the trust list via the existing trust framework (no new trust mechanism introduced).\n\nThe credentialSubject carries the VHL payload (conforming to the SHL payload format) with the same fields that are otherwise embedded at HCERT claim key 5 (url, key, flag, label, exp, v, extension). Exactly one of qrcode or verifiableCredential SHALL be populated.\n\nFor details see ITI-YY3 VC Enveloped VHL Carrier (Option — format=vc).",
    "type" : "Binary"
  }]
}

```
