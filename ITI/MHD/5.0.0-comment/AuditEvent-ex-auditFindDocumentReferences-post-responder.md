# Audit Example of ITI-67 using POST recorded at responder - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Example of ITI-67 using POST recorded at responder**

## Example AuditEvent: Audit Example of ITI-67 using POST recorded at responder

Profile: [Audit Event for Find Document References Transaction at Document Responder](StructureDefinition-IHE.MHD.FindDocumentReferences.Audit.Responder.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**category**: Find Document References, search

**code**: Restful Operation

**action**: Execute

**recorded**: 2020-04-29 09:49:00+0000

### Outcomes

| | |
| :--- | :--- |
| - | **Code** |
| * | [AuditEventOutcome: 0](http://terminology.hl7.org/6.5.0/CodeSystem-audit-event-outcome.html#audit-event-outcome-0)(Success) |

> **agent****type**:Source Role ID**who**:[Device](Device-ex-device.md)**requestor**: false**network**: 2001:0db8:85a3:0000:0000:8a2e:0370:7334

> **agent****type**:Destination Role ID**who**: http://server.example.com/fhir**requestor**: false**network**:[http://server.example.com/fhir](http://server.example.com/fhir)

### Sources

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Site** | **Observer** | **Type** |
| * | HIE MHD api example | http://server.example.com/fhir | Application Server |

> **entity****role**:Query**query**:`UE9TVCB0ZXN0LmZoaXIubmV0L2ZoaXIvRG9jdW1lbnRSZWZlcmVuY2UvX3NlYXJjaApIb3N0IHRlc3QuZmhpci5uZXQKQ29udGVudC1UeXBlOiBhcHBsaWNhdGlvbi94LXd3dy1mb3JtLXVybGVuY29kZWQKQWNjZXB0OiBhcHBsaWNhdGlvbi9maGlyK2pzb24KCnBhdGllbnQ9OTg3NiZzdGF0dXM9Y3VycmVudCZ0eXBlPWh0dHA6Ly9sb2luYy5vcmd8MTIzNC01Cg==`

### Details

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | Query Description | POST fhir.example.com/fhir/DocumentReference/_search Host fhir.example.com Content-Type: application/x-www-form-urlencoded Accept: application/fhir+json patient=9876&status=current&type=http://loinc.org|1234-5 |


> **entity****what**:[John Schmidt Other, DoB: 1923-07-25](Patient-ex-patient.md)**role**:Patient



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "ex-auditFindDocumentReferences-post-responder",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.FindDocumentReferences.Audit.Responder"
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
          "code" : "ITI-67",
          "display" : "Find Document References"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "http://hl7.org/fhir/restful-interaction",
          "code" : "search",
          "display" : "search"
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
  "action" : "E",
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
            "code" : "110153",
            "display" : "Source Role ID"
          }
        ]
      },
      "who" : {
        "reference" : "Device/ex-device"
      },
      "requestor" : false,
      "networkString" : "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
    },
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
        "display" : "http://server.example.com/fhir"
      },
      "requestor" : false,
      "networkUri" : "http://server.example.com/fhir"
    }
  ],
  "source" : {
    "site" : {
      "display" : "HIE MHD api example"
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
      "role" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/object-role",
            "code" : "24",
            "display" : "Query"
          }
        ]
      },
      "query" : "UE9TVCB0ZXN0LmZoaXIubmV0L2ZoaXIvRG9jdW1lbnRSZWZlcmVuY2UvX3NlYXJjaApIb3N0IHRlc3QuZmhpci5uZXQKQ29udGVudC1UeXBlOiBhcHBsaWNhdGlvbi94LXd3dy1mb3JtLXVybGVuY29kZWQKQWNjZXB0OiBhcHBsaWNhdGlvbi9maGlyK2pzb24KCnBhdGllbnQ9OTg3NiZzdGF0dXM9Y3VycmVudCZ0eXBlPWh0dHA6Ly9sb2luYy5vcmd8MTIzNC01Cg==",
      "detail" : [
        {
          "type" : {
            "text" : "Query Description"
          },
          "valueString" : "POST fhir.example.com/fhir/DocumentReference/_search\nHost fhir.example.com\nContent-Type: application/x-www-form-urlencoded\nAccept: application/fhir+json\n\npatient=9876&status=current&type=http://loinc.org|1234-5"
        }
      ]
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
