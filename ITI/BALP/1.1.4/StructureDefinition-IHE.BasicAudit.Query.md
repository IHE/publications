# Basic AuditEvent for a successful Query - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Basic AuditEvent for a successful Query**

## Resource Profile: Basic AuditEvent for a successful Query 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.Query | *Version*:1.1.4 |
| Active as of 2025-10-31 | *Computable Name*:Query |

 
A basic AuditEvent profile for when a RESTful Query / Search action happens successfully. 
* Given a RESTful Query is requested
* And the request does not have a Patient subject indicated 
* The requestor logging the event would potentially not know they have requested Patient specific data
* The data objects may not be patient specific kind of objects
* when the request is Patient specific then [PatientQuery](StructureDefinition-IHE.BasicAudit.PatientQuery.md) is used
 
* And the request is authorized 
* Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)
 
* When successful 
* Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome
* Note success may result in zero or more results. The number of results and the content of the results are not recorded.
 
* And the results are not Patient specific 
* when the results are Patient specific then [PatientQuery](StructureDefinition-IHE.BasicAudit.PatientQuery.md) are used
 
* Then the AuditEvent recorded will conform 
* The raw search request is base64 encoded and placed in the .entity[query].query element. The base64 encoding of the raw search request enables preserving exactly what was requested, including possibly malicious patterns. This enables detection of malicious or malformed requests.
* The cleaned search may be recorded (not base64) in the .entity[query].description. The cleaned search request would have removed parameters that were not understood/supported. The cleaned search request in the .description element enables more efficient processing.
 
 
Note: the pattern defined in DICOM and IHE have the client is identified as the Source Role ID, and the server is identified as the Destination Role ID. This represents the query parameters are flowing from the client to the server. This may not be so obvious, as the data actually flows the opposite direction. This pattern is established and thus followed here. 

**Usages:**

* Derived from this Profile: [Basic AuditEvent for a successful Query with Patient](StructureDefinition-IHE.BasicAudit.PatientQuery.md)
* Examples for this Profile: [AuditEvent/ex-auditBasicQueryGetNoPatient](AuditEvent-ex-auditBasicQueryGetNoPatient.md)
* CapabilityStatements using this Profile: [IHE ATNA Audit Record Repository supporting BALP Content](CapabilityStatement-IHE.BALP.ATNA.AuditRecordRepository.md), [IHE BALP Audit Consumer](CapabilityStatement-IHE.BALP.AuditConsumer.md) and [IHE BALP Audit Creator](CapabilityStatement-IHE.BALP.AuditCreator.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.balp|current/StructureDefinition/IHE.BasicAudit.Query)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.BasicAudit.Query.csv), [Excel](StructureDefinition-IHE.BasicAudit.Query.xlsx), [Schematron](StructureDefinition-IHE.BasicAudit.Query.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.BasicAudit.Query",
  "url" : "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.Query",
  "version" : "1.1.4",
  "name" : "Query",
  "title" : "Basic AuditEvent for a successful Query",
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
  "description" : "A basic AuditEvent profile for when a RESTful Query / Search action happens successfully.\n\n- Given a RESTful Query is requested\n- And the request does not have a Patient subject indicated\n  - The requestor logging the event would potentially not know they have requested Patient specific data\n  - The data objects may not be patient specific kind of objects\n  - when the request is Patient specific then [PatientQuery](StructureDefinition-IHE.BasicAudit.PatientQuery.html) is used\n- And the request is authorized\n  - Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)\n- When successful\n  - Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome\n  - Note success may result in zero or more results. The number of results and the content of the results are not recorded.\n- And the results are not Patient specific\n  - when the results are Patient specific then [PatientQuery](StructureDefinition-IHE.BasicAudit.PatientQuery.html) are used\n- Then the AuditEvent recorded will conform\n  - The raw search request is base64 encoded and placed in the .entity[query].query element. The base64 encoding of the raw search request enables preserving exactly what was requested, including possibly malicious patterns. This enables detection of malicious or malformed requests.\n  - The cleaned search may be recorded (not base64) in the .entity[query].description. The cleaned search request would have removed parameters that were not understood/supported. The cleaned search request in the .description element enables more efficient processing.\n\nNote: the pattern defined in DICOM and IHE have the client is identified as the Source Role ID, and the server is identified as the Destination Role ID. This represents the query parameters are flowing from the client to the server. This may not be so obvious, as the data actually flows the opposite direction. This pattern is established and thus followed here.",
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
        "id" : "AuditEvent.subtype:anySearch",
        "path" : "AuditEvent.subtype",
        "sliceName" : "anySearch",
        "min" : 1,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://profiles.ihe.net/ITI/BALP/ValueSet/AllSearchVS"
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
              "code" : "110153"
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
              "system" : "http://dicom.nema.org/resources/ontology/DCM",
              "code" : "110152"
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
        "id" : "AuditEvent.entity:query",
        "path" : "AuditEvent.entity",
        "sliceName" : "query",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.entity:query.what",
        "path" : "AuditEvent.entity.what",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.entity:query.type",
        "path" : "AuditEvent.entity.type",
        "min" : 1,
        "patternCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/audit-entity-type",
          "code" : "2"
        }
      },
      {
        "id" : "AuditEvent.entity:query.role",
        "path" : "AuditEvent.entity.role",
        "min" : 1,
        "patternCoding" : {
          "system" : "http://terminology.hl7.org/CodeSystem/object-role",
          "code" : "24"
        }
      },
      {
        "id" : "AuditEvent.entity:query.lifecycle",
        "path" : "AuditEvent.entity.lifecycle",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.entity:query.securityLabel",
        "path" : "AuditEvent.entity.securityLabel",
        "short" : "may contain the security labels on the Bundle search set returned"
      },
      {
        "id" : "AuditEvent.entity:query.query",
        "path" : "AuditEvent.entity.query",
        "min" : 1
      },
      {
        "id" : "AuditEvent.entity:query.detail",
        "path" : "AuditEvent.entity.detail",
        "max" : "0"
      }
    ]
  }
}

```
