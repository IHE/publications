# Audit Event for Patient Identity Feed by the Source that Deletes a Patient - Patient Identifier Cross-referencing for mobile (PIXm) v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Event for Patient Identity Feed by the Source that Deletes a Patient**

## Resource Profile: Audit Event for Patient Identity Feed by the Source that Deletes a Patient 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Feed.Delete.Audit.Source | *Version*:3.1.0 |
| Active as of 2025-11-04 | *Computable Name*:AuditPixmFeedSourceDelete |

 
Defines constraints on the AuditEvent Resource to record when a Patient Identity Feed Transaction happens, as recorded by the Patient Identity Source. 
* This profile applies to the Patient Identity Source actor in 
* [Remove Patient](ITI-104.md#2310443-remove-patient)
 
* Build off of the IHE BasicAudit PatientDelete event 
* this will result in two .entity elements with the same logical information
 
* add the ITI-104 as a subtype
* client is Patient Identifier Source
* server is Patient Identifier Cross-reference Manager
* entity slices for patient are required 
* filled with the identifier parameter value from the DELETE
* will be an identifier, not a reference
 
* entity slice for the data 
* filled with the path of the DELETE
* will be the Patient resource id presented
 
* entity slice for transaction is available
 

**Usages:**

* Examples for this Profile: [AuditEvent/ex-auditPixmFeed-delete-source](AuditEvent-ex-auditPixmFeed-delete-source.md) and [AuditEvent/ex-auditPixmFeedDelete-source](AuditEvent-ex-auditPixmFeedDelete-source.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.pixm|current/StructureDefinition/IHE.PIXm.Feed.Delete.Audit.Source)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.PIXm.Feed.Delete.Audit.Source.csv), [Excel](StructureDefinition-IHE.PIXm.Feed.Delete.Audit.Source.xlsx), [Schematron](StructureDefinition-IHE.PIXm.Feed.Delete.Audit.Source.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.PIXm.Feed.Delete.Audit.Source",
  "url" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Feed.Delete.Audit.Source",
  "version" : "3.1.0",
  "name" : "AuditPixmFeedSourceDelete",
  "title" : "Audit Event for Patient Identity Feed by the Source that Deletes a Patient",
  "status" : "active",
  "date" : "2025-11-04T14:17:39-06:00",
  "publisher" : "IHE IT Infrastructure Technical Committee",
  "contact" : [
    {
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.ihe.net/ihe_domains/it_infrastructure/"
        }
      ]
    },
    {
      "telecom" : [
        {
          "system" : "email",
          "value" : "iti@ihe.net"
        }
      ]
    },
    {
      "name" : "IHE IT Infrastructure Technical Committee",
      "telecom" : [
        {
          "system" : "email",
          "value" : "iti@ihe.net"
        }
      ]
    }
  ],
  "description" : "Defines constraints on the AuditEvent Resource to record when a Patient Identity Feed Transaction happens, as recorded by the Patient Identity Source. \n- This profile applies to the Patient Identity Source actor in \n  - [Remove Patient](ITI-104.html#2310443-remove-patient)\n- Build off of the IHE BasicAudit PatientDelete event\n  - this will result in two .entity elements with the same logical information\n- add the ITI-104 as a subtype\n- client is Patient Identifier Source\n- server is Patient Identifier Cross-reference Manager\n- entity slices for patient are required\n  - filled with the identifier parameter value from the DELETE\n  - will be an identifier, not a reference\n- entity slice for the data\n  - filled with the path of the DELETE\n  - will be the Patient resource id presented\n- entity slice for transaction is available",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
          "code" : "001"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "dicom",
      "uri" : "http://nema.org/dicom",
      "name" : "DICOM Tag Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "w3c.prov",
      "uri" : "http://www.w3.org/ns/prov",
      "name" : "W3C PROV"
    },
    {
      "identity" : "fhirprovenance",
      "uri" : "http://hl7.org/fhir/provenance",
      "name" : "FHIR Provenance Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AuditEvent",
  "baseDefinition" : "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PatientDelete",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "AuditEvent",
        "path" : "AuditEvent"
      },
      {
        "id" : "AuditEvent.modifierExtension",
        "path" : "AuditEvent.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.subtype",
        "path" : "AuditEvent.subtype",
        "min" : 2
      },
      {
        "id" : "AuditEvent.subtype:iti104",
        "path" : "AuditEvent.subtype",
        "sliceName" : "iti104",
        "min" : 1,
        "max" : "1",
        "patternCoding" : {
          "system" : "urn:ihe:event-type-code",
          "code" : "ITI-104",
          "display" : "Patient Identity Feed FHIR"
        }
      },
      {
        "id" : "AuditEvent.agent:client",
        "path" : "AuditEvent.agent",
        "sliceName" : "client",
        "short" : "Patient Identifier Source",
        "constraint" : [
          {
            "key" : "val-audit-source",
            "severity" : "error",
            "human" : "The Audit Source is this agent too.",
            "expression" : "$this.who = %resource.source.observer",
            "source" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Feed.Delete.Audit.Source"
          }
        ]
      },
      {
        "id" : "AuditEvent.agent:server",
        "path" : "AuditEvent.agent",
        "sliceName" : "server",
        "short" : "Patient Identifier Cross-reference Manager"
      },
      {
        "id" : "AuditEvent.entity:data",
        "path" : "AuditEvent.entity",
        "sliceName" : "data",
        "short" : "Resource id from the DELETE path"
      },
      {
        "id" : "AuditEvent.entity:data.what.reference",
        "path" : "AuditEvent.entity.what.reference",
        "min" : 1
      },
      {
        "id" : "AuditEvent.entity:patient",
        "path" : "AuditEvent.entity",
        "sliceName" : "patient",
        "short" : "identifier parameter - Patient"
      },
      {
        "id" : "AuditEvent.entity:patient.what.reference",
        "path" : "AuditEvent.entity.what.reference",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.entity:patient.what.identifier",
        "path" : "AuditEvent.entity.what.identifier",
        "min" : 1
      }
    ]
  }
}

```
