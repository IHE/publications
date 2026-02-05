# Audit Event for PIXm Query by the Manager - Patient Identifier Cross-referencing for mobile (PIXm) v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Event for PIXm Query by the Manager**

## Resource Profile: Audit Event for PIXm Query by the Manager 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Query.Audit.Manager | *Version*:3.1.0 |
| Active as of 2025-11-04 | *Computable Name*:AuditPixmQueryManager |

 
Defines constraints on the AuditEvent (AuditMessage) Resource to record when a PIXm Query Transaction happens, as recorded by the Patient Identifier Cross-reference Manager. 
* Build off of the IHE BasicAudit Patient Query event
* add the ITI-83 as a subtype
* client is Patient Identifier Cross-reference Consumer
* server is Patient Identifier Cross-reference Manager
* entity slice for query parameters
* eitity slice for a source patient identifier
* yes both entities likely say the same thing, but one is specifically the patient identifier, and the other is in query parameter format
* source is the server
 

**Usages:**

* Examples for this Profile: [AuditEvent/ex-auditPixmQuery-manager](AuditEvent-ex-auditPixmQuery-manager.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.pixm|current/StructureDefinition/IHE.PIXm.Query.Audit.Manager)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.PIXm.Query.Audit.Manager.csv), [Excel](StructureDefinition-IHE.PIXm.Query.Audit.Manager.xlsx), [Schematron](StructureDefinition-IHE.PIXm.Query.Audit.Manager.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.PIXm.Query.Audit.Manager",
  "url" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Query.Audit.Manager",
  "version" : "3.1.0",
  "name" : "AuditPixmQueryManager",
  "title" : "Audit Event for PIXm Query by the Manager",
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
  "description" : "Defines constraints on the AuditEvent (AuditMessage) Resource to record when a PIXm Query Transaction happens, as recorded by the Patient Identifier Cross-reference Manager.\n- Build off of the IHE BasicAudit Patient Query event\n- add the ITI-83 as a subtype\n- client is Patient Identifier Cross-reference Consumer\n- server is Patient Identifier Cross-reference Manager\n- entity slice for query parameters\n- eitity slice for a source patient identifier\n- yes both entities likely say the same thing, but one is specifically the patient identifier, and the other is in query parameter format\n- source is the server",
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
  "baseDefinition" : "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PatientQuery",
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
        "id" : "AuditEvent.subtype:iti83",
        "path" : "AuditEvent.subtype",
        "sliceName" : "iti83",
        "min" : 1,
        "max" : "1",
        "patternCoding" : {
          "system" : "urn:ihe:event-type-code",
          "code" : "ITI-83",
          "display" : "Mobile Patient Identifier Cross-reference Query"
        }
      },
      {
        "id" : "AuditEvent.agent:client",
        "path" : "AuditEvent.agent",
        "sliceName" : "client",
        "short" : "Patient Identifier Cross-reference Consumer"
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
            "source" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Query.Audit.Manager"
          }
        ]
      },
      {
        "id" : "AuditEvent.entity:query",
        "path" : "AuditEvent.entity",
        "sliceName" : "query",
        "short" : "Search Parameters"
      },
      {
        "id" : "AuditEvent.entity:patient",
        "path" : "AuditEvent.entity",
        "sliceName" : "patient",
        "short" : "Patient"
      },
      {
        "id" : "AuditEvent.entity:patient.what.identifier",
        "path" : "AuditEvent.entity.what.identifier",
        "min" : 1
      },
      {
        "id" : "AuditEvent.entity:patient.type",
        "path" : "AuditEvent.entity.type",
        "patternCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/audit-entity-type",
          "code" : "1",
          "display" : "Person"
        }
      },
      {
        "id" : "AuditEvent.entity:patient.role",
        "path" : "AuditEvent.entity.role",
        "patternCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/object-role",
          "code" : "1",
          "display" : "Patient"
        }
      }
    ]
  }
}

```
