# Basic AuditEvent pattern for when an Authorization permit is decided - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Basic AuditEvent pattern for when an Authorization permit is decided**

## Resource Profile: Basic AuditEvent pattern for when an Authorization permit is decided 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.AuthZconsent | *Version*:1.1.4 |
| Active as of 2025-10-31 | *Computable Name*:AuthZconsent |

 
An AduitEvent recording a permit authorization decision by a Consent Decision Service, 
* Given an Authorization Decision resulted in a permit
* And based on a Consent resource (C1)
* And filed by a patient (P1),
* And in response to a request by an organization (Org1)
* And for the purpose of treatment (TREAT).
* And the given request is authorized
* When an AuditEvent is recorded for the activity
* Then that AuditEvent would follow this profile regarding recording the authorization decision 
* Security Alert
* Authorization Decison by Consent
* Execute action
* date/time recorded
* outcome 
* success when Permit
* failure when Deny
* outcomeDesc would explain why a deny
 
* recorded by the authorization server
* Agents 
* client app
* user 
* user requested purposeOfUse
 
* user organization
* authorization service
 
* Entity 
* patient subject
* consent on file for that patient
* the token id (JWT ID) issued (if one is issued) should be recorded
* other data may be recorded that was used in the decision
 
 
 

**Usages:**

* Examples for this Profile: [AuditEvent/ex-auditAuthZconsent-deny](AuditEvent-ex-auditAuthZconsent-deny.md) and [AuditEvent/ex-auditAuthZconsent](AuditEvent-ex-auditAuthZconsent.md)
* CapabilityStatements using this Profile: [IHE ATNA Audit Record Repository supporting BALP Content](CapabilityStatement-IHE.BALP.ATNA.AuditRecordRepository.md), [IHE BALP Audit Consumer](CapabilityStatement-IHE.BALP.AuditConsumer.md) and [IHE BALP Audit Creator](CapabilityStatement-IHE.BALP.AuditCreator.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.balp|current/StructureDefinition/IHE.BasicAudit.AuthZconsent)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.BasicAudit.AuthZconsent.csv), [Excel](StructureDefinition-IHE.BasicAudit.AuthZconsent.xlsx), [Schematron](StructureDefinition-IHE.BasicAudit.AuthZconsent.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.BasicAudit.AuthZconsent",
  "url" : "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.AuthZconsent",
  "version" : "1.1.4",
  "name" : "AuthZconsent",
  "title" : "Basic AuditEvent pattern for when an Authorization permit is decided",
  "status" : "active",
  "date" : "2025-10-31T12:53:24-05:00",
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
  "description" : "An AduitEvent recording a permit authorization decision by a Consent Decision Service, \n\n- Given an Authorization Decision resulted in a permit\n- And based on a Consent resource (C1) \n- And filed by a patient (P1), \n- And in response to a request by an organization (Org1) \n- And for the purpose of treatment (TREAT).\n- And the given request is authorized \n- When an AuditEvent is recorded for the activity\n- Then that AuditEvent would follow this profile regarding recording the authorization decision\n  - Security Alert\n  - Authorization Decison by Consent\n  - Execute action\n  - date/time recorded\n  - outcome\n    - success when Permit\n\t- failure when Deny\n\t- outcomeDesc would explain why a deny\n  - recorded by the authorization server\n  - Agents\n    - client app\n\t- user\n\t  - user requested purposeOfUse\n\t- user organization\n\t- authorization service\n  - Entity\n    - patient subject\n\t- consent on file for that patient\n\t- the token id (JWT ID) issued (if one is issued) should be recorded\n\t- other data may be recorded that was used in the decision",
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
          "code" : "110113"
        }
      },
      {
        "id" : "AuditEvent.subtype",
        "path" : "AuditEvent.subtype",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://profiles.ihe.net/ITI/BALP/ValueSet/AuthZsubTypeVS"
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
          "description" : "client, user, and organization requesting authorization; and authoizer",
          "rules" : "open"
        },
        "min" : 4
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
        "id" : "AuditEvent.agent:client.role",
        "path" : "AuditEvent.agent.role",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:client.who",
        "path" : "AuditEvent.agent.who",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:client.altId",
        "path" : "AuditEvent.agent.altId",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:client.name",
        "path" : "AuditEvent.agent.name",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:client.location",
        "path" : "AuditEvent.agent.location",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:client.policy",
        "path" : "AuditEvent.agent.policy",
        "mustSupport" : true
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
        "id" : "AuditEvent.agent:client.purposeOfUse",
        "path" : "AuditEvent.agent.purposeOfUse",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:user",
        "path" : "AuditEvent.agent",
        "sliceName" : "user",
        "min" : 1,
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
        "id" : "AuditEvent.agent:user.location",
        "path" : "AuditEvent.agent.location",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:user.policy",
        "path" : "AuditEvent.agent.policy",
        "mustSupport" : true
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
        "id" : "AuditEvent.agent:userorg",
        "path" : "AuditEvent.agent",
        "sliceName" : "userorg",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.agent:userorg.type",
        "path" : "AuditEvent.agent.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
              "code" : "PROV"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.agent:userorg.role",
        "path" : "AuditEvent.agent.role",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:userorg.who",
        "path" : "AuditEvent.agent.who",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "AuditEvent.agent:userorg.altId",
        "path" : "AuditEvent.agent.altId",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:userorg.name",
        "path" : "AuditEvent.agent.name",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:userorg.requestor",
        "path" : "AuditEvent.agent.requestor",
        "patternBoolean" : false
      },
      {
        "id" : "AuditEvent.agent:userorg.location",
        "path" : "AuditEvent.agent.location",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:userorg.policy",
        "path" : "AuditEvent.agent.policy",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:userorg.media",
        "path" : "AuditEvent.agent.media",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:userorg.network",
        "path" : "AuditEvent.agent.network",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:userorg.purposeOfUse",
        "path" : "AuditEvent.agent.purposeOfUse",
        "mustSupport" : true
      },
      {
        "id" : "AuditEvent.agent:authorizer",
        "path" : "AuditEvent.agent",
        "sliceName" : "authorizer",
        "min" : 1,
        "max" : "1",
        "constraint" : [
          {
            "key" : "val-audit-source",
            "severity" : "error",
            "human" : "The Audit Source is this agent too.",
            "expression" : "$this.who = %resource.source.observer",
            "source" : "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.AuthZconsent"
          }
        ]
      },
      {
        "id" : "AuditEvent.agent:authorizer.type",
        "path" : "AuditEvent.agent.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/extra-security-role-type",
              "code" : "authserver"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.agent:authorizer.role",
        "path" : "AuditEvent.agent.role",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:authorizer.who",
        "path" : "AuditEvent.agent.who",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:authorizer.altId",
        "path" : "AuditEvent.agent.altId",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:authorizer.name",
        "path" : "AuditEvent.agent.name",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:authorizer.requestor",
        "path" : "AuditEvent.agent.requestor",
        "patternBoolean" : false
      },
      {
        "id" : "AuditEvent.agent:authorizer.location",
        "path" : "AuditEvent.agent.location",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:authorizer.policy",
        "path" : "AuditEvent.agent.policy",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:authorizer.media",
        "path" : "AuditEvent.agent.media",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:authorizer.network",
        "path" : "AuditEvent.agent.network",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:authorizer.purposeOfUse",
        "path" : "AuditEvent.agent.purposeOfUse",
        "max" : "0"
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
          "description" : "patient and submission set involved",
          "rules" : "closed"
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
      },
      {
        "id" : "AuditEvent.entity:consent",
        "path" : "AuditEvent.entity",
        "sliceName" : "consent",
        "min" : 1,
        "max" : "*"
      },
      {
        "id" : "AuditEvent.entity:consent.what",
        "path" : "AuditEvent.entity.what",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "AuditEvent.entity:consent.type",
        "path" : "AuditEvent.entity.type",
        "min" : 1,
        "patternCoding" : {
          "system" : "http://hl7.org/fhir/resource-types",
          "code" : "Consent"
        }
      },
      {
        "id" : "AuditEvent.entity:token",
        "path" : "AuditEvent.entity",
        "sliceName" : "token",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.entity:token.what",
        "path" : "AuditEvent.entity.what",
        "min" : 1
      },
      {
        "id" : "AuditEvent.entity:token.what.identifier",
        "path" : "AuditEvent.entity.what.identifier",
        "min" : 1
      },
      {
        "id" : "AuditEvent.entity:token.what.identifier.value",
        "path" : "AuditEvent.entity.what.identifier.value",
        "short" : "jti (JWT ID)",
        "comment" : "jti SHALL be prefixed with \"urn:ietf:params:oauth:jti:\". This URN is based on RFC3553.",
        "min" : 1
      },
      {
        "id" : "AuditEvent.entity:token.type",
        "path" : "AuditEvent.entity.type",
        "min" : 1,
        "patternCoding" : {
          "system" : "https://profiles.ihe.net/ITI/BALP/CodeSystem/UserAgentTypes",
          "code" : "UserOauthAgent"
        }
      }
    ]
  }
}

```
