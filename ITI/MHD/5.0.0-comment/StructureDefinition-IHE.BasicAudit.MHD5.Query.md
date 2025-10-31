# Basic AuditEvent for a successful Query - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Basic AuditEvent for a successful Query**

## Resource Profile: Basic AuditEvent for a successful Query 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.BasicAudit.MHD5.Query | *Version*:5.0.0-comment |
| Active as of 2025-10-31 | *Computable Name*:Query |

 
A basic AuditEvent profile for when a RESTful Query / Search action happens successfully. 
* Given a RESTful Query is requested
* And the request does not have a Patient subject indicated 
* The requestor logging the event would potentially not know they have requested Patient specific data
* The data objects may not be patient specific kind of objects
* when the request is Patient specific then [PatientQuery](StructureDefinition-IHE.BasicAudit.MHD5.PatientQuery.md) is used
 
* And the request is authorized 
* Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)
 
* When successful 
* Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome
* Note success may result in zero or more results. The number of results and the content of the results are not recorded.
 
* And the results are not Patient specific 
* when the results are Patient specific then [PatientQuery](StructureDefinition-IHE.BasicAudit.MHD5.PatientQuery.md) are used
 
* Then the AuditEvent recorded will conform 
* The raw search request is base64 encoded and placed in the .entity[query].query element. The base64 encoding of the raw search request enables preserving exactly what was requested, including possibly malicious patterns. This enables detection of malicious or malformed requests.
* The cleaned search may be recorded (not base64) in the .entity[query].description. The cleaned search request would have removed parameters that were not understood/supported. The cleaned search request in the .description element enables more efficient processing.
 
 
Note: the pattern defined in DICOM and IHE have the client is identified as the Source Role ID, and the server is identified as the Destination Role ID. This represents the query parameters are flowing from the client to the server. This may not be so obvious, as the data actually flows the opposite direction. This pattern is established and thus followed here. 

**Usages:**

* Derived from this Profile: [Basic AuditEvent for a successful Query with Patient](StructureDefinition-IHE.BasicAudit.MHD5.PatientQuery.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.BasicAudit.MHD5.Query)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.BasicAudit.MHD5.Query.csv), [Excel](StructureDefinition-IHE.BasicAudit.MHD5.Query.xlsx), [Schematron](StructureDefinition-IHE.BasicAudit.MHD5.Query.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.BasicAudit.MHD5.Query",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.BasicAudit.MHD5.Query",
  "version" : "5.0.0-comment",
  "name" : "Query",
  "title" : "Basic AuditEvent for a successful Query",
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
  "description" : "A basic AuditEvent profile for when a RESTful Query / Search action happens successfully.\n\n- Given a RESTful Query is requested\n- And the request does not have a Patient subject indicated\n  - The requestor logging the event would potentially not know they have requested Patient specific data\n  - The data objects may not be patient specific kind of objects\n  - when the request is Patient specific then [PatientQuery](StructureDefinition-IHE.BasicAudit.MHD5.PatientQuery.html) is used\n- And the request is authorized\n  - Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)\n- When successful\n  - Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome\n  - Note success may result in zero or more results. The number of results and the content of the results are not recorded.\n- And the results are not Patient specific\n  - when the results are Patient specific then [PatientQuery](StructureDefinition-IHE.BasicAudit.MHD5.PatientQuery.html) are used\n- Then the AuditEvent recorded will conform\n  - The raw search request is base64 encoded and placed in the .entity[query].query element. The base64 encoding of the raw search request enables preserving exactly what was requested, including possibly malicious patterns. This enables detection of malicious or malformed requests.\n  - The cleaned search may be recorded (not base64) in the .entity[query].description. The cleaned search request would have removed parameters that were not understood/supported. The cleaned search request in the .description element enables more efficient processing.\n\nNote: the pattern defined in DICOM and IHE have the client is identified as the Source Role ID, and the server is identified as the Destination Role ID. This represents the query parameters are flowing from the client to the server. This may not be so obvious, as the data actually flows the opposite direction. This pattern is established and thus followed here.",
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
        "id" : "AuditEvent.category:anySearch",
        "path" : "AuditEvent.category",
        "sliceName" : "anySearch",
        "min" : 1,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://profiles.ihe.net/ITI/MHD/ValueSet/AllSearchVS"
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
        "patternCode" : "E"
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
              "code" : "110153"
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
              "code" : "110152"
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
        "id" : "AuditEvent.entity:query.role",
        "path" : "AuditEvent.entity.role",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/object-role",
              "code" : "24"
            }
          ]
        }
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
      }
    ]
  }
}

```
