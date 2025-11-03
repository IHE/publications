# Audit Event for Provide Bundle Transaction at Recipient - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Event for Provide Bundle Transaction at Recipient**

## Resource Profile: Audit Event for Provide Bundle Transaction at Recipient 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.ProvideBundle.Audit.Recipient | *Version*:5.0.0-comment |
| Active as of 2025-10-31 | *Computable Name*:AuditProvideBundleRecipient |

 
Defines constraints on the AuditEvent Resource to record when a Provide Bundle Transaction happens at the Recipient. 
* Import event
* shall have source of itself
* shall have a document source agent
* shall have a document recipient agent
* may have user, app, organization agent(s)
* shall have a patient entity
* shall have a submission set identity entity
 

**Usages:**

* Examples for this Profile: [AuditEvent/ex-auditProvideBundle-recipient](AuditEvent-ex-auditProvideBundle-recipient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.MHD.ProvideBundle.Audit.Recipient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.ProvideBundle.Audit.Recipient.csv), [Excel](StructureDefinition-IHE.MHD.ProvideBundle.Audit.Recipient.xlsx), [Schematron](StructureDefinition-IHE.MHD.ProvideBundle.Audit.Recipient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.ProvideBundle.Audit.Recipient",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.ProvideBundle.Audit.Recipient",
  "version" : "5.0.0-comment",
  "name" : "AuditProvideBundleRecipient",
  "title" : "Audit Event for Provide Bundle Transaction at Recipient",
  "status" : "active",
  "date" : "2025-10-31T15:07:19-05:00",
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
  "description" : "Defines constraints on the AuditEvent Resource to record when a Provide Bundle Transaction happens at the Recipient.\r\n- Import event\r\n- shall have source of itself\r\n- shall have a document source agent\r\n- shall have a document recipient agent\r\n- may have user, app, organization agent(s)\r\n- shall have a patient entity\r\n- shall have a submission set identity entity",
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
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
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
        "id" : "AuditEvent.category",
        "path" : "AuditEvent.category",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "$this"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "AuditEvent.category:iti65",
        "path" : "AuditEvent.category",
        "sliceName" : "iti65",
        "min" : 1,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "urn:ihe:event-type-code",
              "code" : "ITI-65",
              "display" : "Provide Document Bundle"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.code",
        "path" : "AuditEvent.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://dicom.nema.org/resources/ontology/DCM",
              "code" : "110107",
              "display" : "Import"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.action",
        "path" : "AuditEvent.action",
        "patternCode" : "C"
      },
      {
        "id" : "AuditEvent.outcome.detail.text",
        "path" : "AuditEvent.outcome.detail.text",
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
        "id" : "AuditEvent.agent:documentSource",
        "path" : "AuditEvent.agent",
        "sliceName" : "documentSource",
        "short" : "Document Source",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.agent:documentSource.type",
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
        "id" : "AuditEvent.agent:documentSource.network[x]",
        "path" : "AuditEvent.agent.network[x]",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:documentRecipient",
        "path" : "AuditEvent.agent",
        "sliceName" : "documentRecipient",
        "short" : "Document Recipient",
        "min" : 1,
        "max" : "1",
        "constraint" : [
          {
            "key" : "val-audit-source",
            "severity" : "error",
            "human" : "The Audit Source is this agent too.",
            "expression" : "$this.who = %resource.source.observer",
            "source" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.ProvideBundle.Audit.Recipient"
          }
        ]
      },
      {
        "id" : "AuditEvent.agent:documentRecipient.type",
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
        "id" : "AuditEvent.agent:documentRecipient.network[x]",
        "path" : "AuditEvent.agent.network[x]",
        "min" : 1
      },
      {
        "id" : "AuditEvent.entity",
        "path" : "AuditEvent.entity",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "role"
            }
          ],
          "description" : "patient and submission set involved",
          "rules" : "open"
        },
        "min" : 2
      },
      {
        "id" : "AuditEvent.entity:patient",
        "path" : "AuditEvent.entity",
        "sliceName" : "patient",
        "short" : "Patient",
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
        "id" : "AuditEvent.entity:patient.role",
        "path" : "AuditEvent.entity.role",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/object-role",
              "code" : "1",
              "display" : "Patient"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.entity:submissionSet",
        "path" : "AuditEvent.entity",
        "sliceName" : "submissionSet",
        "short" : "SubmissionSet",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.entity:submissionSet.what",
        "path" : "AuditEvent.entity.what",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/List"]
          }
        ]
      },
      {
        "id" : "AuditEvent.entity:submissionSet.role",
        "path" : "AuditEvent.entity.role",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/object-role",
              "code" : "20",
              "display" : "Job"
            }
          ]
        }
      }
    ]
  }
}

```
