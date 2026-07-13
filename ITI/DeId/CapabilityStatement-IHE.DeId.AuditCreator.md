# IHE DeId Audit Creator - De-Identification Handbook v2.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE DeId Audit Creator**

## CapabilityStatement: IHE DeId Audit Creator 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/DeId/CapabilityStatement/IHE.DeId.AuditCreator | *Version*:2.0.0-comment |
| Active as of 2025-06-17 | *Computable Name*:IHE_DeId_AuditCreator |

 
CapabilityStatement for [DeIdentification Audit Creator](security.md) Actor in [DeIdentification Handbook](index.md). 
This actor is derived off of the [ATNA Secure Application](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html#9.1.1.2) or [ATNA Secure Node](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html#9.1.1.1) actor with [ATNA ATX:FHIR Feed Option](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html). 
This actor is derived off of the [Basic Audit Log Patterns (BALP)](https://profiles.ihe.net/ITI/BALP/index.html) [Audit Creator](https://profiles.ihe.net/ITI/BALP/volume-1.html#152111-audit-creator) recording rich audit log entries to ATNA. 
* This actor is involved in the generation of De-Identified data, and thus would record [De-Identification Audit Events](StructureDefinition-IHE.BasicAudit.DeIdentification.Source.md)
* This actor may be involved in events that uncover a Privacy Disclosure, and thus would record [Privacy Disclosure Audit Events](https://build.fhir.org/ig/IHE/ITI.BasicAudit/StructureDefinition-IHE.BasicAudit.PrivacyDisclosure.Source.html).
 

 [Raw OpenAPI-Swagger Definition file](IHE.DeId.AuditCreator.openapi.json) | [Download](IHE.DeId.AuditCreator.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.DeId.AuditCreator",
  "url" : "https://profiles.ihe.net/ITI/DeId/CapabilityStatement/IHE.DeId.AuditCreator",
  "version" : "2.0.0-comment",
  "name" : "IHE_DeId_AuditCreator",
  "title" : "IHE DeId Audit Creator",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-06-17",
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
  "description" : "CapabilityStatement for [DeIdentification Audit Creator](security.html) Actor in [DeIdentification Handbook](index.html).\n\nThis actor is derived off of the [ATNA Secure Application](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html#9.1.1.2) \nor [ATNA Secure Node](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html#9.1.1.1) actor \nwith [ATNA ATX:FHIR Feed Option](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html). \n\nThis actor is derived off of the [Basic Audit Log Patterns (BALP)](https://profiles.ihe.net/ITI/BALP/index.html) \n[Audit Creator](https://profiles.ihe.net/ITI/BALP/volume-1.html#152111-audit-creator) recording rich audit log entries to ATNA.\n\n- This actor is involved in the generation of De-Identified data, and thus would record [De-Identification Audit Events](StructureDefinition-IHE.BasicAudit.DeIdentification.Source.html)\n- This actor may be involved in events that uncover a Privacy Disclosure, and thus would record [Privacy Disclosure Audit Events](https://build.fhir.org/ig/IHE/ITI.BasicAudit/StructureDefinition-IHE.BasicAudit.PrivacyDisclosure.Source.html).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "kind" : "requirements",
  "imports" : ["https://profiles.ihe.net/ITI/BALP/CapabilityStatement/IHE.BALP.AuditCreator"],
  "fhirVersion" : "4.0.1",
  "format" : ["application/fhir+xml", "application/fhir+json"],
  "rest" : [{
    "mode" : "client",
    "documentation" : "CapabilityStatement for [DeIdentification Audit Creator](security.html) Actor in [DeIdentification Handbook](index.html).\n\nThis actor is derived off of the [ATNA Secure Application](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html#9.1.1.2) \nor [ATNA Secure Node](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html#9.1.1.1) actor \nwith [ATNA ATX:FHIR Feed Option](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html). \n\nThis actor is derived off of the [Basic Audit Log Patterns (BALP)](https://profiles.ihe.net/ITI/BALP/index.html) \n[Audit Creator](https://profiles.ihe.net/ITI/BALP/volume-1.html#152111-audit-creator) recording rich audit log entries to ATNA.\n\n- This actor is involved in the generation of De-Identified data, and thus would record [De-Identification Audit Events](StructureDefinition-IHE.BasicAudit.DeIdentification.Source.html)\n- This actor may be involved in events that uncover a Privacy Disclosure, and thus would record [Privacy Disclosure Audit Events](https://build.fhir.org/ig/IHE/ITI.BasicAudit/StructureDefinition-IHE.BasicAudit.PrivacyDisclosure.Source.html).",
    "security" : {
      "description" : "[ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html) required, encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or SMART-on-FHIR"
    },
    "resource" : [{
      "type" : "AuditEvent",
      "supportedProfile" : ["https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PrivacyDisclosure.Source",
      "https://profiles.ihe.net/ITI/DeId/StructureDefinition/IHE.BasicAudit.DeIdentification.Source"],
      "documentation" : "For ATNA Record Audit Event [ITI-20] using FHIR.",
      "interaction" : [{
        "code" : "create"
      }]
    }]
  }]
}

```
