# Audit Event for Generate Metadata ITI-106 Transaction at Source - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Event for Generate Metadata ITI-106 Transaction at Source**

## Resource Profile: Audit Event for Generate Metadata ITI-106 Transaction at Source 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.GenerateMetadata.Audit.Source | *Version*:5.0.0-comment |
| Active as of 2025-10-31 | *Computable Name*:AuditGenerateMetadataSource |

 
Defines constraints on the AuditEvent Resource to record when a Generate Metadata ITI-106 Transaction happens at the Soure. 
* Build off of the IHE Basic Audit Create event
* add the ITI-106 as a subtype
* client is the Document Source
* Server is the Document Recipient
* may have user, app, organization agent(s)
* shall have a document uri
* note the Document Source may add a patient if it knows it.
 

**Usages:**

* Examples for this Profile: [AuditEvent/ex-auditGenerateMetadata-source](AuditEvent-ex-auditGenerateMetadata-source.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.MHD.GenerateMetadata.Audit.Source)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.GenerateMetadata.Audit.Source.csv), [Excel](StructureDefinition-IHE.MHD.GenerateMetadata.Audit.Source.xlsx), [Schematron](StructureDefinition-IHE.MHD.GenerateMetadata.Audit.Source.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.GenerateMetadata.Audit.Source",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.GenerateMetadata.Audit.Source",
  "version" : "5.0.0-comment",
  "name" : "AuditGenerateMetadataSource",
  "title" : "Audit Event for Generate Metadata ITI-106 Transaction at Source",
  "status" : "active",
  "date" : "2025-10-31T11:44:01-05:00",
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
  "description" : "Defines constraints on the AuditEvent Resource to record when a Generate Metadata ITI-106 Transaction happens at the Soure.\n- Build off of the IHE Basic Audit Create event\n- add the ITI-106 as a subtype\n- client is the Document Source\n- Server is the Document Recipient\n- may have user, app, organization agent(s)\n- shall have a document uri\n- note the Document Source may add a patient if it knows it.",
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
  "baseDefinition" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.BasicAudit.MHD5.Create",
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
        "short" : "Document Source",
        "constraint" : [
          {
            "key" : "val-audit-source",
            "severity" : "error",
            "human" : "The Audit Source is this agent too.",
            "expression" : "$this.who = %resource.source.observer",
            "source" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.GenerateMetadata.Audit.Source"
          }
        ]
      },
      {
        "id" : "AuditEvent.agent:server",
        "path" : "AuditEvent.agent",
        "sliceName" : "server",
        "short" : "Document Recipient"
      },
      {
        "id" : "AuditEvent.entity:data",
        "path" : "AuditEvent.entity",
        "sliceName" : "data",
        "short" : "document"
      }
    ]
  }
}

```
