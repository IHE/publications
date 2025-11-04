# Audit Event for Patient Identity Feed FHIR by the Manager that Creates a Patient - Patient Identifier Cross-referencing for mobile (PIXm) v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Event for Patient Identity Feed FHIR by the Manager that Creates a Patient**

## Resource Profile: Audit Event for Patient Identity Feed FHIR by the Manager that Creates a Patient 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Feed.Create.Audit.Manager | *Version*:3.1.0 |
| Active as of 2025-11-04 | *Computable Name*:AuditPixmFeedManagerCreate |

 
Defines constraints on the AuditEvent Resource to record when a Patient Identity Feed FHIR Transaction happens, as recorded by the Patient Identifier Cross-reference Manager. 
* This profile applies to the Patient Identity Cross-reference Manager actor in 
* [Add or Revise Patient](ITI-104.md#2310441-add-or-revise-patient)
* [Resolve Duplicate Patient](ITI-104.md#2310442-resolve-duplicate-patient)
 
* Patient Identity Cross-reference Manager knows the requested conditional create is a create, so records this as an create.
* Build off of the IHE BasicAudit PatientCreate event 
* A generic FHIR server might not distinguish an ITI-104
 
* add the ITI-104 as a subtype
* server is Patient Identifier Source
* server is Patient Identifier Cross-reference Manager
* entity slices for patient are required 
* filled with the identifier parameter value from the PUT
* will be an identifier, not a reference
 
* entity slice for the data 
* filled with the body of the PUT
* will be the Patient resource presented
 
* entity slice for transaction is available
 

**Usages:**

* Examples for this Profile: [AuditEvent/ex-auditPixmFeed-create-manager](AuditEvent-ex-auditPixmFeed-create-manager.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.pixm|current/StructureDefinition/IHE.PIXm.Feed.Create.Audit.Manager)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.PIXm.Feed.Create.Audit.Manager.csv), [Excel](StructureDefinition-IHE.PIXm.Feed.Create.Audit.Manager.xlsx), [Schematron](StructureDefinition-IHE.PIXm.Feed.Create.Audit.Manager.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.PIXm.Feed.Create.Audit.Manager",
  "url" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Feed.Create.Audit.Manager",
  "version" : "3.1.0",
  "name" : "AuditPixmFeedManagerCreate",
  "title" : "Audit Event for Patient Identity Feed FHIR by the Manager that Creates a Patient",
  "status" : "active",
  "date" : "2025-11-04T14:14:43-06:00",
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
  "description" : "Defines constraints on the AuditEvent Resource to record when a Patient Identity Feed FHIR Transaction happens, as recorded by the Patient Identifier Cross-reference Manager.\n- This profile applies to the Patient Identity Cross-reference Manager actor in \n  - [Add or Revise Patient](ITI-104.html#2310441-add-or-revise-patient)\n  - [Resolve Duplicate Patient](ITI-104.html#2310442-resolve-duplicate-patient)\n- Patient Identity Cross-reference Manager knows the requested conditional create is a create, so records this as an create.\n- Build off of the IHE BasicAudit PatientCreate event\n  - A generic FHIR server might not distinguish an ITI-104 \n- add the ITI-104 as a subtype\n- server is Patient Identifier Source\n- server is Patient Identifier Cross-reference Manager\n- entity slices for patient are required\n  - filled with the identifier parameter value from the PUT\n  - will be an identifier, not a reference\n- entity slice for the data\n  - filled with the body of the PUT\n  - will be the Patient resource presented\n- entity slice for transaction is available",
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
  "baseDefinition" : "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PatientCreate",
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
        "short" : "Patient Identifier Source"
      },
      {
        "id" : "AuditEvent.agent:server",
        "path" : "AuditEvent.agent",
        "sliceName" : "server",
        "short" : "Patient Identifier Cross-reference Manager",
        "constraint" : [
          {
            "key" : "val-audit-source",
            "severity" : "error",
            "human" : "The Audit Source is this agent too.",
            "expression" : "$this.who = %resource.source.observer",
            "source" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Feed.Create.Audit.Manager"
          }
        ]
      },
      {
        "id" : "AuditEvent.entity:data",
        "path" : "AuditEvent.entity",
        "sliceName" : "data",
        "short" : "transaction body"
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
