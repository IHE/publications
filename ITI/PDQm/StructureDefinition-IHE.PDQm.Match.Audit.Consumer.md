# Audit Event for PDQm Match at Consumer - Patient Demographics Query for Mobile (PDQm) v3.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Event for PDQm Match at Consumer**

## Resource Profile: Audit Event for PDQm Match at Consumer 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Match.Audit.Consumer | *Version*:3.2.1 |
| Active as of 2025-11-26 | *Computable Name*:AuditPdqmMatchConsumer |

 
Defines constraints on the AuditEvent (AuditMessage) Resource for a Patient Demographics Consumer to record when it performs a Patient Demographics Match[ITI-119](./ITI-119.md). 
* Build off of the IHE BasicAudit Query event
* add the ITI-119 as a subtype
* client is Patient Demographics Consumer
* server is Patient Demographics Supplier
* entity slice for query are REQUIRED
* entity slice for transaction is available
* entity for patient SHOULD be used when one patient is explicitly identified in the query parameters
* source is the client
 

**Usages:**

* Examples for this Profile: [AuditEvent/ex-auditPdqmMatch-consumer](AuditEvent-ex-auditPdqmMatch-consumer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.pdqm|current/StructureDefinition/IHE.PDQm.Match.Audit.Consumer)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.PDQm.Match.Audit.Consumer.csv), [Excel](StructureDefinition-IHE.PDQm.Match.Audit.Consumer.xlsx), [Schematron](StructureDefinition-IHE.PDQm.Match.Audit.Consumer.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.PDQm.Match.Audit.Consumer",
  "url" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Match.Audit.Consumer",
  "version" : "3.2.1",
  "name" : "AuditPdqmMatchConsumer",
  "title" : "Audit Event for PDQm Match at Consumer",
  "status" : "active",
  "date" : "2025-11-26T14:04:43-06:00",
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
  "description" : "Defines constraints on the AuditEvent (AuditMessage) Resource for a Patient Demographics Consumer to record when it performs a Patient Demographics Match [ITI-119](./ITI-119.html).\n- Build off of the IHE BasicAudit Query event\n- add the ITI-119 as a subtype\n- client is Patient Demographics Consumer\n- server is Patient Demographics Supplier\n- entity slice for query are REQUIRED\n- entity slice for transaction is available\n- entity for patient SHOULD be used when one patient is explicitly identified in the query parameters\n- source is the client",
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
  "baseDefinition" : "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.Query",
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
        "id" : "AuditEvent.subtype:iti119",
        "path" : "AuditEvent.subtype",
        "sliceName" : "iti119",
        "min" : 1,
        "max" : "1",
        "patternCoding" : {
          "system" : "urn:ihe:event-type-code",
          "code" : "ITI-119",
          "display" : "Patient Demographics Match"
        }
      },
      {
        "id" : "AuditEvent.agent:client",
        "path" : "AuditEvent.agent",
        "sliceName" : "client",
        "short" : "Patient Demographics Consumer",
        "constraint" : [
          {
            "key" : "val-audit-source",
            "severity" : "error",
            "human" : "The Audit Source is this agent too.",
            "expression" : "$this.who = %resource.source.observer",
            "source" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Match.Audit.Consumer"
          }
        ]
      },
      {
        "id" : "AuditEvent.agent:server",
        "path" : "AuditEvent.agent",
        "sliceName" : "server",
        "short" : "Patient Demographics Supplier"
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
        "short" : "Patient",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.entity:patient.what",
        "path" : "AuditEvent.entity.what",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
          }
        ]
      },
      {
        "id" : "AuditEvent.entity:patient.type",
        "path" : "AuditEvent.entity.type",
        "min" : 1,
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
