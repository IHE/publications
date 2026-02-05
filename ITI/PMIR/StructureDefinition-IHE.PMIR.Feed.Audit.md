# Audit Event for Mobile Patient Identity Feed by the Supplier and Consumer - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Event for Mobile Patient Identity Feed by the Supplier and Consumer**

## Resource Profile: Audit Event for Mobile Patient Identity Feed by the Supplier and Consumer 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Feed.Audit | *Version*:1.6.0 |
| Active as of 2025-11-04 | *Computable Name*:AuditPmirFeed |

 
Defines constraints on the AuditEvent Resource to record when a Mobile Patient Identity Feed Transaction happens, as recorded by the Supplier and Consumer. 

**Usages:**

* Examples for this Profile: [AuditEvent/ex-auditPmirFeed-consumer](AuditEvent-ex-auditPmirFeed-consumer.md) and [AuditEvent/ex-auditPmirFeed-supplier](AuditEvent-ex-auditPmirFeed-supplier.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.pmir|current/StructureDefinition/IHE.PMIR.Feed.Audit)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.PMIR.Feed.Audit.csv), [Excel](StructureDefinition-IHE.PMIR.Feed.Audit.xlsx), [Schematron](StructureDefinition-IHE.PMIR.Feed.Audit.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.PMIR.Feed.Audit",
  "url" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Feed.Audit",
  "version" : "1.6.0",
  "name" : "AuditPmirFeed",
  "title" : "Audit Event for Mobile Patient Identity Feed by the Supplier and Consumer",
  "status" : "active",
  "date" : "2025-11-04T15:20:37-06:00",
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
  "description" : "Defines constraints on the AuditEvent Resource to record when a Mobile Patient Identity Feed Transaction happens, as recorded by the Supplier and Consumer.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AuditEvent",
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
        "id" : "AuditEvent.type",
        "path" : "AuditEvent.type",
        "patternCoding" : {
          "system" : "http://dicom.nema.org/resources/ontology/DCM",
          "code" : "110110",
          "display" : "Patient Record"
        }
      },
      {
        "id" : "AuditEvent.subtype",
        "path" : "AuditEvent.subtype",
        "patternCoding" : {
          "system" : "urn:ihe:event-type-code",
          "code" : "ITI-93",
          "display" : "Mobile Patient Identity Feed"
        }
      },
      {
        "id" : "AuditEvent.action",
        "path" : "AuditEvent.action",
        "patternCode" : "E"
      },
      {
        "id" : "AuditEvent.outcome",
        "path" : "AuditEvent.outcome",
        "min" : 1
      },
      {
        "id" : "AuditEvent.outcomeDesc",
        "path" : "AuditEvent.outcomeDesc",
        "mustSupport" : true
      },
      {
        "id" : "AuditEvent.agent",
        "path" : "AuditEvent.agent",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "type"
            }
          ],
          "rules" : "open"
        },
        "min" : 2
      },
      {
        "id" : "AuditEvent.agent:source",
        "path" : "AuditEvent.agent",
        "sliceName" : "source",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.agent:source.type",
        "path" : "AuditEvent.agent.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://dicom.nema.org/resources/ontology/DCM",
              "code" : "110153",
              "display" : "Source Role ID"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.agent:source.who",
        "path" : "AuditEvent.agent.who",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:source.network",
        "path" : "AuditEvent.agent.network",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:source.network.address",
        "path" : "AuditEvent.agent.network.address",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:source.network.type",
        "path" : "AuditEvent.agent.network.type",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:destination",
        "path" : "AuditEvent.agent",
        "sliceName" : "destination",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.agent:destination.type",
        "path" : "AuditEvent.agent.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://dicom.nema.org/resources/ontology/DCM",
              "code" : "110152",
              "display" : "Destination Role ID"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.agent:destination.who",
        "path" : "AuditEvent.agent.who",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:destination.requestor",
        "path" : "AuditEvent.agent.requestor",
        "patternBoolean" : false
      },
      {
        "id" : "AuditEvent.agent:destination.network",
        "path" : "AuditEvent.agent.network",
        "short" : "Endpoint of the destination",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:destination.network.address",
        "path" : "AuditEvent.agent.network.address",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:destination.network.type",
        "path" : "AuditEvent.agent.network.type",
        "min" : 1
      },
      {
        "id" : "AuditEvent.entity",
        "path" : "AuditEvent.entity",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "type"
            }
          ],
          "rules" : "closed"
        },
        "min" : 2
      },
      {
        "id" : "AuditEvent.entity:patient",
        "path" : "AuditEvent.entity",
        "sliceName" : "patient",
        "min" : 1,
        "max" : "*"
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
      },
      {
        "id" : "AuditEvent.entity:message",
        "path" : "AuditEvent.entity",
        "sliceName" : "message",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.entity:message.what",
        "path" : "AuditEvent.entity.what",
        "short" : "A reference to the MessageHeader in the message.",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/MessageHeader"]
          }
        ]
      },
      {
        "id" : "AuditEvent.entity:message.type",
        "path" : "AuditEvent.entity.type",
        "min" : 1,
        "patternCoding" : {
          "system" : "http://hl7.org/fhir/resource-types",
          "code" : "MessageHeader",
          "display" : "MessageHeader"
        }
      },
      {
        "id" : "AuditEvent.entity:message.name",
        "path" : "AuditEvent.entity.name",
        "patternString" : "urn:ihe:iti:pmir:2019:patient-feed"
      }
    ]
  }
}

```
