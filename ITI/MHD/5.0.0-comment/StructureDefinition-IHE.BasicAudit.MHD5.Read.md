# Basic AuditEvent for a successful Read - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Basic AuditEvent for a successful Read**

## Resource Profile: Basic AuditEvent for a successful Read 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.BasicAudit.MHD5.Read | *Version*:5.0.0-comment |
| Active as of 2025-10-31 | *Computable Name*:Read |

 
A basic AuditEvent profile for when a RESTful Read action happens successfully. 
* Given a Resource Read is requested
* And that resource does not have a Patient subject or is otherwise associated with a Patient 
* when the resource is Patient specific then [PatientRead](StructureDefinition-IHE.BasicAudit.MHD5.PatientRead.md) is used
 
* And the request is authorized 
* Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)
 
* When successful 
* Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome
 
* Then the AuditEvent recorded will conform
 

**Usages:**

* Derived from this Profile: [Basic AuditEvent for a successful Read with a Patient](StructureDefinition-IHE.BasicAudit.MHD5.PatientRead.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.BasicAudit.MHD5.Read)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.BasicAudit.MHD5.Read.csv), [Excel](StructureDefinition-IHE.BasicAudit.MHD5.Read.xlsx), [Schematron](StructureDefinition-IHE.BasicAudit.MHD5.Read.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.BasicAudit.MHD5.Read",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.BasicAudit.MHD5.Read",
  "version" : "5.0.0-comment",
  "name" : "Read",
  "title" : "Basic AuditEvent for a successful Read",
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
  "description" : "A basic AuditEvent profile for when a RESTful Read action happens successfully.\n\n- Given a Resource Read is requested \n- And that resource does not have a Patient subject or is otherwise associated with a Patient\n  - when the resource is Patient specific then [PatientRead](StructureDefinition-IHE.BasicAudit.MHD5.PatientRead.html) is used\n- And the request is authorized\n  - Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)\n- When successful\n  - Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome\n- Then the AuditEvent recorded will conform",
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
        "id" : "AuditEvent.category:anyRead",
        "path" : "AuditEvent.category",
        "sliceName" : "anyRead",
        "min" : 1,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://profiles.ihe.net/ITI/MHD/ValueSet/AllReadVS"
        }
      },
      {
        "id" : "AuditEvent.code",
        "path" : "AuditEvent.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/audit-event-type",
              "code" : "rest"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.action",
        "path" : "AuditEvent.action",
        "patternCode" : "R"
      },
      {
        "id" : "AuditEvent.outcome.code",
        "path" : "AuditEvent.outcome.code",
        "patternCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/audit-event-outcome",
          "code" : "0"
        }
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
              "code" : "110152"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.agent:client.network[x]",
        "path" : "AuditEvent.agent.network[x]",
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
              "system" : "http://dicom.nema.org/resources/ontology/DCM",
              "code" : "110153"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.agent:server.network[x]",
        "path" : "AuditEvent.agent.network[x]",
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
        "id" : "AuditEvent.agent:user.requestor",
        "path" : "AuditEvent.agent.requestor",
        "patternBoolean" : true
      },
      {
        "id" : "AuditEvent.agent:user.policy",
        "path" : "AuditEvent.agent.policy",
        "mustSupport" : true
      },
      {
        "id" : "AuditEvent.agent:user.network[x]",
        "path" : "AuditEvent.agent.network[x]",
        "max" : "0"
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
        "id" : "AuditEvent.entity:transaction.role",
        "path" : "AuditEvent.entity.role",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://profiles.ihe.net/ITI/MHD/CodeSystem/BasicAuditEntityType",
              "code" : "XrequestId"
            }
          ]
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
        "id" : "AuditEvent.entity:data.role",
        "path" : "AuditEvent.entity.role",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://profiles.ihe.net/ITI/MHD/ValueSet/RestObjectRoles"
        }
      },
      {
        "id" : "AuditEvent.entity:data.securityLabel",
        "path" : "AuditEvent.entity.securityLabel",
        "short" : "may contain the security labels on the resource returned"
      }
    ]
  }
}

```
