# Basic AuditEvent for a successful Delete - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Basic AuditEvent for a successful Delete**

## Resource Profile: Basic AuditEvent for a successful Delete 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.Delete | *Version*:1.1.4 |
| Active as of 2025-10-31 | *Computable Name*:Delete |

 
A basic AuditEvent profile for when a RESTful Delete action happens successfully. 
* Given a Resource Delete is requested
* And that resource has does not have a Patient subject or is otherwise associated with a Patient 
* when the resource is Patient specific then [PatientDelete](StructureDefinition-IHE.BasicAudit.PatientDelete.md) is used
 
* And the request is authorized 
* Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)
 
* When successful 
* Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome
 
* Then the AuditEvent recorded will conform
 

**Usages:**

* Derived from this Profile: [Basic AuditEvent for a successful Delete with Patient](StructureDefinition-IHE.BasicAudit.PatientDelete.md)
* Examples for this Profile: [AuditEvent/ex-auditBasicDeleteNoPatient](AuditEvent-ex-auditBasicDeleteNoPatient.md)
* CapabilityStatements using this Profile: [IHE ATNA Audit Record Repository supporting BALP Content](CapabilityStatement-IHE.BALP.ATNA.AuditRecordRepository.md), [IHE BALP Audit Consumer](CapabilityStatement-IHE.BALP.AuditConsumer.md) and [IHE BALP Audit Creator](CapabilityStatement-IHE.BALP.AuditCreator.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.balp|current/StructureDefinition/IHE.BasicAudit.Delete)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.BasicAudit.Delete.csv), [Excel](StructureDefinition-IHE.BasicAudit.Delete.xlsx), [Schematron](StructureDefinition-IHE.BasicAudit.Delete.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.BasicAudit.Delete",
  "url" : "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.Delete",
  "version" : "1.1.4",
  "name" : "Delete",
  "title" : "Basic AuditEvent for a successful Delete",
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
  "description" : "A basic AuditEvent profile for when a RESTful Delete action happens successfully.\n\n- Given a Resource Delete is requested \n- And that resource has does not have a Patient subject or is otherwise associated with a Patient\n  - when the resource is Patient specific then [PatientDelete](StructureDefinition-IHE.BasicAudit.PatientDelete.html) is used\n- And the request is authorized\n  - Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)\n- When successful\n  - Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome\n- Then the AuditEvent recorded will conform",
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
          "system" : "http://terminology.hl7.org/CodeSystem/audit-event-type",
          "code" : "rest"
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
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "AuditEvent.subtype:anyDelete",
        "path" : "AuditEvent.subtype",
        "sliceName" : "anyDelete",
        "min" : 1,
        "max" : "1",
        "patternCoding" : {
          "system" : "http://hl7.org/fhir/restful-interaction",
          "code" : "delete"
        }
      },
      {
        "id" : "AuditEvent.action",
        "path" : "AuditEvent.action",
        "patternCode" : "D"
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
          "rules" : "open"
        },
        "min" : 2
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
        "id" : "AuditEvent.agent:server",
        "path" : "AuditEvent.agent",
        "sliceName" : "server",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.agent:server.type",
        "path" : "AuditEvent.agent.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
              "code" : "custodian"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.agent:server.who",
        "path" : "AuditEvent.agent.who",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:server.media",
        "path" : "AuditEvent.agent.media",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:server.network",
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
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://profiles.ihe.net/ITI/BALP/ValueSet/DataSources"
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
              "path" : "type"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "AuditEvent.entity:transaction",
        "path" : "AuditEvent.entity",
        "sliceName" : "transaction",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.entity:transaction.what.identifier.value",
        "path" : "AuditEvent.entity.what.identifier.value",
        "short" : "the value of X-Request-Id",
        "min" : 1
      },
      {
        "id" : "AuditEvent.entity:transaction.type",
        "path" : "AuditEvent.entity.type",
        "min" : 1,
        "patternCoding" : {
          "system" : "https://profiles.ihe.net/ITI/BALP/CodeSystem/BasicAuditEntityType",
          "code" : "XrequestId"
        }
      },
      {
        "id" : "AuditEvent.entity:data",
        "path" : "AuditEvent.entity",
        "sliceName" : "data",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.entity:data.what",
        "path" : "AuditEvent.entity.what",
        "min" : 1
      },
      {
        "id" : "AuditEvent.entity:data.type",
        "path" : "AuditEvent.entity.type",
        "min" : 1,
        "patternCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/audit-entity-type",
          "code" : "2"
        }
      },
      {
        "id" : "AuditEvent.entity:data.role",
        "path" : "AuditEvent.entity.role",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://profiles.ihe.net/ITI/BALP/ValueSet/RestObjectRoles"
        }
      },
      {
        "id" : "AuditEvent.entity:data.securityLabel",
        "path" : "AuditEvent.entity.securityLabel",
        "short" : "may be replicated from the resource .meta.security"
      }
    ]
  }
}

```
