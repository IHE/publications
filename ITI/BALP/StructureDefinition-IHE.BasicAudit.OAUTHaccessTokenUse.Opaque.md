# Basic AuditEvent pattern for oAuth Opaque - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Basic AuditEvent pattern for oAuth Opaque**

## Resource Profile: Basic AuditEvent pattern for oAuth Opaque 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.OAUTHaccessTokenUse.Opaque | *Version*:1.1.4 |
| Active as of 2025-10-31 | *Computable Name*:OAUTHaccessTokenUseOpaque |

 
Used when: 
* only have an opaque oAuth token (e.g. clients).
* have access to the oAuth token, but want to log minimal details.
* oUser slice holds fragment of the opaque oAuth token 
* record only the last 32 characters of the oAuth token to limit risk or replay
* presume 32 characters is enough to coorelate AuditEvent log entries
 
 

**Usages:**

* Examples for this Profile: [AuditEvent/ex-auditBasicReadOClient](AuditEvent-ex-auditBasicReadOClient.md)
* CapabilityStatements using this Profile: [IHE ATNA Audit Record Repository supporting BALP Content](CapabilityStatement-IHE.BALP.ATNA.AuditRecordRepository.md), [IHE BALP Audit Consumer](CapabilityStatement-IHE.BALP.AuditConsumer.md) and [IHE BALP Audit Creator](CapabilityStatement-IHE.BALP.AuditCreator.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.balp|current/StructureDefinition/IHE.BasicAudit.OAUTHaccessTokenUse.Opaque)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.BasicAudit.OAUTHaccessTokenUse.Opaque.csv), [Excel](StructureDefinition-IHE.BasicAudit.OAUTHaccessTokenUse.Opaque.xlsx), [Schematron](StructureDefinition-IHE.BasicAudit.OAUTHaccessTokenUse.Opaque.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.BasicAudit.OAUTHaccessTokenUse.Opaque",
  "url" : "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.OAUTHaccessTokenUse.Opaque",
  "version" : "1.1.4",
  "name" : "OAUTHaccessTokenUseOpaque",
  "title" : "Basic AuditEvent pattern for oAuth Opaque",
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
  "description" : "Used when:\n- only have an opaque oAuth token (e.g. clients).\n- have access to the oAuth token, but want to log minimal details.\n\n- oUser slice holds fragment of the opaque oAuth token\n  - record only the last 32 characters of the oAuth token to limit risk or replay\n  - presume 32 characters is enough to coorelate AuditEvent log entries",
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
        }
      },
      {
        "id" : "AuditEvent.agent:oUser",
        "path" : "AuditEvent.agent",
        "sliceName" : "oUser",
        "short" : "other elements may be filled in as needed.",
        "min" : 1,
        "max" : "*"
      },
      {
        "id" : "AuditEvent.agent:oUser.type",
        "path" : "AuditEvent.agent.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://profiles.ihe.net/ITI/BALP/CodeSystem/UserAgentTypes",
              "code" : "UserOauthAgent"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.agent:oUser.requestor",
        "path" : "AuditEvent.agent.requestor",
        "patternBoolean" : true
      },
      {
        "id" : "AuditEvent.agent:oUser.policy",
        "path" : "AuditEvent.agent.policy",
        "short" : "last 32 characters of the oAuth token.",
        "comment" : "do NOT include the whole opaque token. The last 32 characters should be enough and would be the most entropy.",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "AuditEvent.agent:oUser.purposeOfUse",
        "path" : "AuditEvent.agent.purposeOfUse",
        "short" : "SAML subject:purposeofuse",
        "mustSupport" : true
      }
    ]
  }
}

```
