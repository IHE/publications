# Audit Example of ITI-68 at responder - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Example of ITI-68 at responder**

## Example AuditEvent: Audit Example of ITI-68 at responder

Profile: [Audit Event for Retrieve Document Transaction at the Document Responder](StructureDefinition-IHE.MHD.RetrieveDocument.Audit.Responder.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**category**: Retrieve Document, read

**code**: Restful Operation

**action**: Read

**recorded**: 2020-04-29 09:49:00+0000

### Outcomes

| | |
| :--- | :--- |
| - | **Code** |
| * | [AuditEventOutcome: 0](http://terminology.hl7.org/7.0.1/CodeSystem-audit-event-outcome.html#audit-event-outcome-0)(Success) |

> **agent****type**:Destination Role ID**who**: model number ABC, serial number 1234**requestor**: false**network**: myDevice.example.com

> **agent****type**:Source Role ID**who**: http://server.example.com/fhir**requestor**: false**network**:[http://server.example.com/fhir](http://server.example.com/fhir)

### Sources

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Site** | **Observer** | **Type** |
| * | server.example.com | http://server.example.com/fhir | Application Server |

> **entity****what**:[http://example.org/blah/blah.pdf](http://example.org/blah/blah.pdf)**role**:Report

> **entity****what**:[John Schmidt Other, DoB: 1923-07-25](Patient-ex-patient.md)**role**:Patient



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "ex-auditRetrieveDocument-responder",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.RetrieveDocument.Audit.Responder"
    ],
    "security" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST"
      }
    ]
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "urn:ihe:event-type-code",
          "code" : "ITI-68",
          "display" : "Retrieve Document"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "http://hl7.org/fhir/restful-interaction",
          "code" : "read",
          "display" : "read"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/audit-event-type",
        "code" : "rest",
        "display" : "Restful Operation"
      }
    ]
  },
  "action" : "R",
  "recorded" : "2020-04-29T09:49:00.000Z",
  "outcome" : {
    "code" : {
      "system" : "http://terminology.hl7.org/CodeSystem/audit-event-outcome",
      "code" : "0",
      "display" : "Success"
    }
  },
  "agent" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://dicom.nema.org/resources/ontology/DCM",
            "code" : "110152",
            "display" : "Destination Role ID"
          }
        ]
      },
      "who" : {
        "display" : "model number ABC, serial number 1234"
      },
      "requestor" : false,
      "networkUri" : "myDevice.example.com"
    },
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://dicom.nema.org/resources/ontology/DCM",
            "code" : "110153",
            "display" : "Source Role ID"
          }
        ]
      },
      "who" : {
        "display" : "http://server.example.com/fhir"
      },
      "requestor" : false,
      "networkUri" : "http://server.example.com/fhir"
    }
  ],
  "source" : {
    "site" : {
      "display" : "server.example.com"
    },
    "observer" : {
      "display" : "http://server.example.com/fhir"
    },
    "type" : [
      {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/security-source-type",
            "code" : "4",
            "display" : "Application Server"
          }
        ]
      }
    ]
  },
  "entity" : [
    {
      "what" : {
        "reference" : "http://example.org/blah/blah.pdf"
      },
      "role" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/object-role",
            "code" : "3",
            "display" : "Report"
          }
        ]
      }
    },
    {
      "what" : {
        "reference" : "Patient/ex-patient"
      },
      "role" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/object-role",
            "code" : "1",
            "display" : "Patient"
          }
        ]
      }
    }
  ]
}

```
