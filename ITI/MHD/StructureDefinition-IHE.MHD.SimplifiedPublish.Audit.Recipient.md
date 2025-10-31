# Audit Event for Simplified Publish ITI-105 Transaction at Recipient - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Event for Simplified Publish ITI-105 Transaction at Recipient**

## Resource Profile: Audit Event for Simplified Publish ITI-105 Transaction at Recipient 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.SimplifiedPublish.Audit.Recipient | *Version*:4.2.3 |
| Active as of 2025-10-31 | *Computable Name*:AuditSimplifiedPublishRecipient |

 
Defines constraints on the AuditEvent Resource to record when a Simplified Publish ITI-105 Transaction happens at the Recipient. 
* Build off of the IHE Basic Audit Patient Create event
* add the ITI-105 as a subtype
* client is the Document Source
* Server is the Document Recipient
* may have user, app, organization agent(s)
* shall have a patient entity
* shall have a documentReference identity entity
 

**Usages:**

* Examples for this Profile: [AuditEvent/ex-auditSimplifiedPublish-recipient](AuditEvent-ex-auditSimplifiedPublish-recipient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.MHD.SimplifiedPublish.Audit.Recipient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.SimplifiedPublish.Audit.Recipient.csv), [Excel](StructureDefinition-IHE.MHD.SimplifiedPublish.Audit.Recipient.xlsx), [Schematron](StructureDefinition-IHE.MHD.SimplifiedPublish.Audit.Recipient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.SimplifiedPublish.Audit.Recipient",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.SimplifiedPublish.Audit.Recipient",
  "version" : "4.2.3",
  "name" : "AuditSimplifiedPublishRecipient",
  "title" : "Audit Event for Simplified Publish ITI-105 Transaction at Recipient",
  "status" : "active",
  "date" : "2025-10-31T11:05:31-05:00",
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
  "description" : "Defines constraints on the AuditEvent Resource to record when a Simplified Publish ITI-105 Transaction happens at the Recipient.\n- Build off of the IHE Basic Audit Patient Create event\n- add the ITI-105 as a subtype\n- client is the Document Source\n- Server is the Document Recipient\n- may have user, app, organization agent(s)\n- shall have a patient entity\n- shall have a documentReference identity entity",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
          "code" : "001",
          "display" : "World"
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
        "id" : "AuditEvent.subtype:iti105",
        "path" : "AuditEvent.subtype",
        "sliceName" : "iti105",
        "min" : 1,
        "max" : "1",
        "patternCoding" : {
          "system" : "urn:ihe:event-type-code",
          "code" : "ITI-105",
          "display" : "Simplified Publish"
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
            "source" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.SimplifiedPublish.Audit.Recipient"
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
