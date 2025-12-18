# Audit Event for Generate Metadata ITI-106 Transaction at Recipient - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Event for Generate Metadata ITI-106 Transaction at Recipient**

## Resource Profile: Audit Event for Generate Metadata ITI-106 Transaction at Recipient 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.GenerateMetadata.Audit.Recipient | *Version*:5.0.0 |
| Active as of 2025-12-18 | *Computable Name*:AuditGenerateMetadataRecipient |

 
Defines constraints on the AuditEvent Resource to record when a Generate Metadata ITI-106 Transaction happens at the Recipient. 
* Build off of the IHE Basic Audit Patient Create event
* add the ITI-106 as a subtype
* client is the Document Source
* Server is the Document Recipient
* may have user, app, organization agent(s)
* shall have a patient entity
* shall have a documentReference identity entity
 

**Usages:**

* Examples for this Profile: [AuditEvent/ex-auditGenerateMetadata-recipient](AuditEvent-ex-auditGenerateMetadata-recipient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.MHD.GenerateMetadata.Audit.Recipient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.GenerateMetadata.Audit.Recipient.csv), [Excel](StructureDefinition-IHE.MHD.GenerateMetadata.Audit.Recipient.xlsx), [Schematron](StructureDefinition-IHE.MHD.GenerateMetadata.Audit.Recipient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.GenerateMetadata.Audit.Recipient",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.GenerateMetadata.Audit.Recipient",
  "version" : "5.0.0",
  "name" : "AuditGenerateMetadataRecipient",
  "title" : "Audit Event for Generate Metadata ITI-106 Transaction at Recipient",
  "status" : "active",
  "date" : "2025-12-18T09:48:18-06:00",
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
  "description" : "Defines constraints on the AuditEvent Resource to record when a Generate Metadata ITI-106 Transaction happens at the Recipient.\n- Build off of the IHE Basic Audit Patient Create event\n- add the ITI-106 as a subtype\n- client is the Document Source\n- Server is the Document Recipient\n- may have user, app, organization agent(s)\n- shall have a patient entity\n- shall have a documentReference identity entity",
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
  "baseDefinition" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.BasicAudit.MHD5.PatientCreate",
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
        "min" : 2
      },
      {
        "id" : "AuditEvent.category:iti106",
        "path" : "AuditEvent.category",
        "sliceName" : "iti106",
        "min" : 1,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "urn:ihe:event-type-code",
              "code" : "ITI-106",
              "display" : "Generate Metadata"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.agent:client",
        "path" : "AuditEvent.agent",
        "sliceName" : "client",
        "short" : "Document Source"
      },
      {
        "id" : "AuditEvent.agent:server",
        "path" : "AuditEvent.agent",
        "sliceName" : "server",
        "short" : "Document Recipient",
        "constraint" : [
          {
            "key" : "val-audit-source",
            "severity" : "error",
            "human" : "The Audit Source is this agent too.",
            "expression" : "$this.who = %resource.source.observer",
            "source" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.GenerateMetadata.Audit.Recipient"
          }
        ]
      },
      {
        "id" : "AuditEvent.entity:data",
        "path" : "AuditEvent.entity",
        "sliceName" : "data",
        "short" : "DocumentReference"
      },
      {
        "id" : "AuditEvent.entity:data.what",
        "path" : "AuditEvent.entity.what",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/DocumentReference"]
          }
        ]
      },
      {
        "id" : "AuditEvent.entity:patient",
        "path" : "AuditEvent.entity",
        "sliceName" : "patient",
        "short" : "Patient"
      }
    ]
  }
}

```
