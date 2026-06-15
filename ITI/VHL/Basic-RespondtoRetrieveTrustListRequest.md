# Resource RespondtoRetrieveTrustListRequest



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "RespondtoRetrieveTrustListRequest",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.url",
    "valueUri" : "https://profiles.ihe.net/ITI/VHL/Requirements/RespondtoRetrieveTrustListRequest"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.version",
    "valueString" : "1.0.0-comment"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.name",
    "valueString" : "RetrieveTrustListResponse"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.title",
    "valueString" : "Retrieve Trust List Response"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.status",
    "valueCode" : "active"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.date",
    "valueDateTime" : "2026-06-14T15:37:09-05:00"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.publisher",
    "valueString" : "IHE IT Infrastructure Technical Committee"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.contact",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.ihe.net/ihe_domains/it_infrastructure/"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.contact",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "iti@ihe.net"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.contact",
    "valueContactDetail" : {
      "name" : "IHE IT Infrastructure Technical Committee",
      "telecom" : [{
        "system" : "email",
        "value" : "iti@ihe.net"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.description",
    "valueMarkdown" : "Upon receipt of Retrieve Trust List Request from a [VHL Sharer](ActorDefinition-VHLSharer.html) or [VHL Receiver](ActorDefinition-VHLReceiver.html), the [Trust Anchor](ActorDefinition-TrustAnchor.html) SHALL organize, sign, and expose the PKI material as part of a trusted, canonical trust list.\n\nThis MAY include:\n* Public key certificates, trust chains, or JWKS structures\n* Revocation data (CRL or OCSP)\n* Usage metadata (e.g., key type, scope, intended usage)\n\nThe Trust Anchor SHALL only respond with validated and trustworthy material in accordance with the governance policies of the VHL trust framework. This signed trust list enables all participants in the VHL trust network to verify digital signatures and establish secure connections in accordance with the governance policies of the Trust Anchor.\n\nUpon receipt of this response, participants SHALL process the trust list as described in [Receive Trust List](Requirements-ReceiveTrustList.html)."
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.jurisdiction",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
        "code" : "001"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.derivedFrom",
    "valueCanonical" : "https://profiles.ihe.net/ITI/VHL/Requirements/EstablishTrust"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.actor",
    "valueCanonical" : "https://profiles.ihe.net/ITI/VHL/ActorDefinition/TrustAnchor"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement.key",
      "valueId" : "receive-pki-distribution-request"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement.label",
      "valueString" : "Receive PKI Distribution Request"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement.conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement.requirement",
      "valueMarkdown" : "Receive a PKI material submission from a VHL Sharer or VHL Receiver."
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement.key",
      "valueId" : "assemble-trust-list"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement.label",
      "valueString" : "Assemble Trust List"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement.conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement.requirement",
      "valueMarkdown" : "Organize validated PKI material into a structured trust list. The Trust Anchor SHOULD support categorization by submitting participant, key usage type (e.g., signing, encryption, secure channels), and operational context."
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement.key",
      "valueId" : "sign-trust-list"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement.label",
      "valueString" : "Sign Trust List"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement.conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement.requirement",
      "valueMarkdown" : "Digitally sign the assembled trust list using the Trust Anchor's private key, ensuring the integrity and authenticity of the distributed material."
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement.key",
      "valueId" : "make-keys-available-at-distribution-endpoint"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement.label",
      "valueString" : "Expose Trust List Distribution Endpoint"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement.conformance",
      "valueCode" : "SHALL"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement.requirement",
      "valueMarkdown" : "Make the signed trust list available via one or more distribution endpoints accessible to authorized trust network participants."
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.statement"
  }],
  "code" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/fhir-types",
      "code" : "Requirements"
    }]
  }
}

```
