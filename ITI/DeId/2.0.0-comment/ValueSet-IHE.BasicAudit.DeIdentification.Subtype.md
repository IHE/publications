# Audit Event Subtype for De-Identification - De-Identification Handbook v2.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Event Subtype for De-Identification**

## ValueSet: Audit Event Subtype for De-Identification 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/DeId/ValueSet/IHE.BasicAudit.DeIdentification.Subtype | *Version*:2.0.0-comment |
| Active as of 2026-06-12 | *Computable Name*:AuditEventSubtypeDeidentify |

 
Defines the AuditEvent Subtype for De-Identification events. This is used to indicate that the AuditEvent is specifically for a De-Identification event. The code is based on the ISO 21089 lifecycle code for de-identification. 

 **References** 

* [Audit Event for De-Identification at Source](StructureDefinition-IHE.BasicAudit.DeIdentification.Source.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "IHE.BasicAudit.DeIdentification.Subtype",
  "url" : "https://profiles.ihe.net/ITI/DeId/ValueSet/IHE.BasicAudit.DeIdentification.Subtype",
  "version" : "2.0.0-comment",
  "name" : "AuditEventSubtypeDeidentify",
  "title" : "Audit Event Subtype for De-Identification",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-12T10:52:17-05:00",
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
  "description" : "Defines the AuditEvent Subtype for De-Identification events.\nThis is used to indicate that the AuditEvent is specifically for a De-Identification event.\nThe code is based on the ISO 21089 lifecycle code for de-identification.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/iso-21089-lifecycle",
      "concept" : [{
        "code" : "deidentify"
      },
      {
        "code" : "pseudonymize"
      },
      {
        "code" : "reidentify"
      }]
    }]
  }
}

```
