# Resource RespondtoProvideVHL



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "RespondtoProvideVHL",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.url",
    "valueUri" : "https://profiles.ihe.net/ITI/VHL/Requirements/RespondtoProvideVHL"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.version",
    "valueString" : "1.0.0-comment"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.name",
    "valueString" : "RespondtoProvideVHL"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Requirements.title",
    "valueString" : "Receive VHL authorization mechanism"
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
    "valueMarkdown" : "The [VHL Receiver](ActorDefinition-VHLReceiver.html) SHALL be capable of receiving a Verified Health Link (VHL) from a [VHL Holder](ActorDefinition-VHLHolder.html) through a supported transport mechanism (e.g., QR code scan, direct URL, or digital message).\n\nUpon receipt, the Receiver SHALL:\n* Parse the VHL\n* Validate its digital signature against a trusted key published by a recognized Trust Anchor\n* Prepare to retrieve the associated health documents\n\nReceipt of the VHL may occur through direct user interaction (e.g., scanning a QR code) or automated channels, depending on the implementation context."
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
