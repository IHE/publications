# IHE IUA ITI-71 AuditEvent for a successful Get Access Token - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE IUA ITI-71 AuditEvent for a successful Get Access Token**

## Resource Profile: IHE IUA ITI-71 AuditEvent for a successful Get Access Token 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.IUA.71 | *Version*:1.1.4 |
| Active as of 2025-10-31 | *Computable Name*:AuditIUAgetAccessToken |

 
Defines constraints on the AuditEvent Resource to record when a ITI-71 - Get Access Token succeeds 
This AuditEvent is recorded by Authorization Client and/or Authorization Server that are grouped with ATNA Secure Node or Secure Application. 
* User Authenticated event
* ITI-71 subtype
* 2 or 3 agents 
* client -
* auth-server
* user user
 
* 1 entity 
* the access token request
 
 

**Usages:**

* CapabilityStatements using this Profile: [IHE ATNA Audit Record Repository supporting BALP Content](CapabilityStatement-IHE.BALP.ATNA.AuditRecordRepository.md), [IHE BALP Audit Consumer](CapabilityStatement-IHE.BALP.AuditConsumer.md) and [IHE BALP Audit Creator](CapabilityStatement-IHE.BALP.AuditCreator.md)
* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.balp|current/StructureDefinition/IHE.IUA.71)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.IUA.71.csv), [Excel](StructureDefinition-IHE.IUA.71.xlsx), [Schematron](StructureDefinition-IHE.IUA.71.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.IUA.71",
  "url" : "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.IUA.71",
  "version" : "1.1.4",
  "name" : "AuditIUAgetAccessToken",
  "title" : "IHE IUA ITI-71 AuditEvent for a successful Get Access Token",
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
  "description" : "Defines constraints on the AuditEvent Resource to record when a ITI-71 - Get Access Token succeeds\n\nThis AuditEvent is recorded by Authorization Client and/or Authorization Server that are grouped with ATNA Secure Node or Secure Application.\n- User Authenticated event\n- ITI-71 subtype\n- 2 or 3 agents\n  - client - \n  - auth-server\n  - user user\n- 1 entity  \n  - the access token request",
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
        "id" : "AuditEvent.type",
        "path" : "AuditEvent.type",
        "patternCoding" : {
          "system" : "http://dicom.nema.org/resources/ontology/DCM",
          "code" : "110114"
        }
      },
      {
        "id" : "AuditEvent.subtype",
        "path" : "AuditEvent.subtype",
        "min" : 1,
        "max" : "1",
        "patternCoding" : {
          "system" : "urn:ihe:event-type-code",
          "code" : "ITI-71"
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
        "min" : 1,
        "patternCode" : "0"
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
          "rules" : "closed"
        },
        "min" : 2,
        "max" : "3"
      },
      {
        "id" : "AuditEvent.agent:client",
        "path" : "AuditEvent.agent",
        "sliceName" : "client",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.agent:client.type",
        "path" : "AuditEvent.agent.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://dicom.nema.org/resources/ontology/DCM",
              "code" : "110150"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.agent:client.who",
        "path" : "AuditEvent.agent.who",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:client.media",
        "path" : "AuditEvent.agent.media",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:client.network",
        "path" : "AuditEvent.agent.network",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:auth-server",
        "path" : "AuditEvent.agent",
        "sliceName" : "auth-server",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.agent:auth-server.type",
        "path" : "AuditEvent.agent.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://profiles.ihe.net/ITI/BALP/CodeSystem/UserAgentTypes",
              "code" : "AuthzOauthService"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.agent:auth-server.who",
        "path" : "AuditEvent.agent.who",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:auth-server.media",
        "path" : "AuditEvent.agent.media",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:auth-server.network",
        "path" : "AuditEvent.agent.network",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:user",
        "path" : "AuditEvent.agent",
        "sliceName" : "user",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.agent:user.type",
        "path" : "AuditEvent.agent.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "IRCP"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.agent:user.role",
        "path" : "AuditEvent.agent.role",
        "mustSupport" : true
      },
      {
        "id" : "AuditEvent.agent:user.who",
        "path" : "AuditEvent.agent.who",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:user.altId",
        "path" : "AuditEvent.agent.altId",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:user.name",
        "path" : "AuditEvent.agent.name",
        "mustSupport" : true
      },
      {
        "id" : "AuditEvent.agent:user.requestor",
        "path" : "AuditEvent.agent.requestor",
        "patternBoolean" : true
      },
      {
        "id" : "AuditEvent.agent:user.media",
        "path" : "AuditEvent.agent.media",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:user.network",
        "path" : "AuditEvent.agent.network",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:user.purposeOfUse",
        "path" : "AuditEvent.agent.purposeOfUse",
        "mustSupport" : true
      },
      {
        "id" : "AuditEvent.source",
        "path" : "AuditEvent.source",
        "mustSupport" : true
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
          "rules" : "closed"
        },
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.entity:token-request",
        "path" : "AuditEvent.entity",
        "sliceName" : "token-request",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.entity:token-request.what",
        "path" : "AuditEvent.entity.what",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.entity:token-request.type",
        "path" : "AuditEvent.entity.type",
        "min" : 1,
        "patternCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/audit-entity-type",
          "code" : "2"
        }
      },
      {
        "id" : "AuditEvent.entity:token-request.role",
        "path" : "AuditEvent.entity.role",
        "min" : 1,
        "patternCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/object-role",
          "code" : "24"
        }
      },
      {
        "id" : "AuditEvent.entity:token-request.query",
        "path" : "AuditEvent.entity.query",
        "short" : "contains the http request in raw form, without the code_verifier value",
        "min" : 1
      },
      {
        "id" : "AuditEvent.entity:token-response",
        "path" : "AuditEvent.entity",
        "sliceName" : "token-response",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.entity:token-response.what",
        "path" : "AuditEvent.entity.what",
        "short" : "holds the token id issued",
        "min" : 1
      },
      {
        "id" : "AuditEvent.entity:token-response.type",
        "path" : "AuditEvent.entity.type",
        "min" : 1,
        "patternCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/audit-entity-type",
          "code" : "2"
        }
      },
      {
        "id" : "AuditEvent.entity:token-response.role",
        "path" : "AuditEvent.entity.role",
        "min" : 1,
        "patternCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/object-role",
          "code" : "13"
        }
      },
      {
        "id" : "AuditEvent.entity:token-response.detail",
        "path" : "AuditEvent.entity.detail",
        "short" : "holds the key values from the response",
        "min" : 1
      }
    ]
  }
}

```
