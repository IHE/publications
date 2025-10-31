# Audit Event for Privacy Disclosure at Source - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Event for Privacy Disclosure at Source**

## Resource Profile: Audit Event for Privacy Disclosure at Source 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PrivacyDisclosure.Source | *Version*:1.1.4 |
| Active as of 2025-10-31 | *Computable Name*:AuditPrivacyDisclosureSource |

 
Defines constraints on the AuditEvent Resource to record when a Privacy Disclosure happens at the Source. 
* Export event
* shall have source of itself
* shall have a source agent
* shall have a recipient agent
* may have user, app, organization agent(s) 
* combine with the Security Token pattern
 
* should have the custodian that released the data
* should have the authorizer that represented the patient (may be the patient)
* shall have a patient entity
* shall have the set of data entity(ies)
 

**Usages:**

* Examples for this Profile: [AuditEvent/ex-auditPrivacyDisclosure-measurereport](AuditEvent-ex-auditPrivacyDisclosure-measurereport.md), [AuditEvent/ex-auditPrivacyDisclosure-source](AuditEvent-ex-auditPrivacyDisclosure-source.md) and [AuditEvent/ex-auditPrivacyDisclosure-source2](AuditEvent-ex-auditPrivacyDisclosure-source2.md)
* CapabilityStatements using this Profile: [IHE ATNA Audit Record Repository supporting BALP Content](CapabilityStatement-IHE.BALP.ATNA.AuditRecordRepository.md), [IHE BALP Audit Consumer](CapabilityStatement-IHE.BALP.AuditConsumer.md) and [IHE BALP Audit Creator](CapabilityStatement-IHE.BALP.AuditCreator.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.balp|current/StructureDefinition/IHE.BasicAudit.PrivacyDisclosure.Source)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.BasicAudit.PrivacyDisclosure.Source.csv), [Excel](StructureDefinition-IHE.BasicAudit.PrivacyDisclosure.Source.xlsx), [Schematron](StructureDefinition-IHE.BasicAudit.PrivacyDisclosure.Source.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.BasicAudit.PrivacyDisclosure.Source",
  "url" : "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PrivacyDisclosure.Source",
  "version" : "1.1.4",
  "name" : "AuditPrivacyDisclosureSource",
  "title" : "Audit Event for Privacy Disclosure at Source",
  "status" : "active",
  "date" : "2025-10-31T12:57:41-05:00",
  "publisher" : "IHE IT Infrastructure Technical Committee",
  "contact" : [
    {
      "name" : "IHE IT Infrastructure Technical Committee",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.ihe.net/ihe_domains/it_infrastructure/"
        },
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
  "description" : "Defines constraints on the AuditEvent Resource to record when a Privacy Disclosure happens at the Source.\n\n- Export event\n- shall have source of itself\n- shall have a source agent\n- shall have a recipient agent\n- may have user, app, organization agent(s)\n  - combine with the Security Token pattern\n- should have the custodian that released the data\n- should have the authorizer that represented the patient (may be the patient)\n- shall have a patient entity\n- shall have the set of data entity(ies)",
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
          "code" : "110106"
        }
      },
      {
        "id" : "AuditEvent.subtype",
        "path" : "AuditEvent.subtype",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "$this"
            }
          ],
          "description" : "needs to at least be a disclosure event",
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "AuditEvent.subtype:disclosure",
        "path" : "AuditEvent.subtype",
        "sliceName" : "disclosure",
        "min" : 1,
        "max" : "1",
        "patternCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/iso-21089-lifecycle",
          "code" : "disclose"
        }
      },
      {
        "id" : "AuditEvent.action",
        "path" : "AuditEvent.action",
        "patternCode" : "R"
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
        "id" : "AuditEvent.purposeOfEvent",
        "path" : "AuditEvent.purposeOfEvent",
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
          "description" : "source, recipient, and possibly the user who participated",
          "rules" : "open"
        },
        "min" : 2
      },
      {
        "id" : "AuditEvent.agent:source",
        "path" : "AuditEvent.agent",
        "sliceName" : "source",
        "min" : 1,
        "max" : "1",
        "constraint" : [
          {
            "key" : "val-audit-source",
            "severity" : "error",
            "human" : "The Audit Source is this agent too.",
            "expression" : "$this.who = %resource.source.observer",
            "source" : "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PrivacyDisclosure.Source"
          }
        ]
      },
      {
        "id" : "AuditEvent.agent:source.type",
        "path" : "AuditEvent.agent.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://dicom.nema.org/resources/ontology/DCM",
              "code" : "110153"
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
        "id" : "AuditEvent.agent:recipient",
        "path" : "AuditEvent.agent",
        "sliceName" : "recipient",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.agent:recipient.type",
        "path" : "AuditEvent.agent.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://dicom.nema.org/resources/ontology/DCM",
              "code" : "110152"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.agent:recipient.who",
        "path" : "AuditEvent.agent.who",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:recipient.network",
        "path" : "AuditEvent.agent.network",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:custodian",
        "path" : "AuditEvent.agent",
        "sliceName" : "custodian",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.agent:custodian.type",
        "path" : "AuditEvent.agent.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "159541003"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.agent:custodian.who",
        "path" : "AuditEvent.agent.who",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:authorizer",
        "path" : "AuditEvent.agent",
        "sliceName" : "authorizer",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.agent:authorizer.type",
        "path" : "AuditEvent.agent.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "429577009"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.agent:authorizer.who",
        "path" : "AuditEvent.agent.who",
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
          "description" : "patient and some data involved",
          "rules" : "open"
        },
        "min" : 2
      },
      {
        "id" : "AuditEvent.entity:patient",
        "path" : "AuditEvent.entity",
        "sliceName" : "patient",
        "min" : 1,
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
          "code" : "1"
        }
      },
      {
        "id" : "AuditEvent.entity:patient.role",
        "path" : "AuditEvent.entity.role",
        "min" : 1,
        "patternCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/object-role",
          "code" : "1"
        }
      }
    ]
  }
}

```
