# Resource InitiateRetrieveTrustListRequest



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "InitiateRetrieveTrustListRequest",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.url",
    "valueUri" : "https://profiles.ihe.net/ITI/VHL/Requirements/InitiateRetrieveTrustListRequest"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.version",
    "valueString" : "1.0.0-comment"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.name",
    "valueString" : "InitiateRetrieveTrustListRequest"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.title",
    "valueString" : "Initiate Retrieve Trust List Request"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.status",
    "valueCode" : "active"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.date",
    "valueDateTime" : "2026-06-14T15:36:12-05:00"
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
    "valueMarkdown" : "A [VHL Sharer](ActorDefinition-VHLSharer.html) or [VHL Receiver](ActorDefinition-VHLReceiver.html), as a participant in the trust network, SHALL be capable of retrieving public key infrastructure (PKI) material from a designated [Trust Anchor](ActorDefinition-TrustAnchor.html).\n\nThe retrieved material MAY include:\n* Public key certificates and associated trust lists\n* Certificate revocation data (e.g., CRLs, OCSP responses)\n* Metadata used to:\n  - Validate digital signatures on VHLs and related resources\n  - Establish secure connections\n  - Decrypt content protected via asymmetric encryption\n\nParticipants SHOULD cache the received trust list to reduce network and server load.\n\n**Preconditions:**\n* The requesting participant knows in advance the endpoint from which to retrieve PKI material, as published or distributed by the Trust Anchor."
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
    "valueCanonical" : "https://profiles.ihe.net/ITI/VHL/ActorDefinition/VHLSharer"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.actor",
    "valueCanonical" : "https://profiles.ihe.net/ITI/VHL/ActorDefinition/VHLReceiver"
  }],
  "code" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/fhir-types",
      "code" : "Requirements"
    }]
  }
}

```
