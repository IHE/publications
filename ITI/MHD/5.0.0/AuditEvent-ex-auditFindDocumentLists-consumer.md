# Audit Example of ITI-66 at Consumer - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Example of ITI-66 at Consumer**

## Example AuditEvent: Audit Example of ITI-66 at Consumer

Profile: [Audit Event for Find Document Lists Transaction by the Document Consumer](StructureDefinition-IHE.MHD.FindDocumentLists.Audit.Consumer.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**category**: Find Document Lists, search

**code**: Restful Operation

**action**: Execute

**recorded**: 2020-04-29 09:49:00+0000

### Outcomes

| | |
| :--- | :--- |
| - | **Code** |
| * | [AuditEventOutcome: 0](http://terminology.hl7.org/7.0.1/CodeSystem-audit-event-outcome.html#audit-event-outcome-0)(Success) |

> **agent****type**:Source Role ID**who**:[Device](Device-ex-device.md)**requestor**: false**network**: 2001:0db8:85a3:0000:0000:8a2e:0370:7334

> **agent****type**:Destination Role ID**who**: http://server.example.com/fhir**requestor**: false**network**:[http://server.example.com/fhir](http://server.example.com/fhir)

### Sources

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Site** | **Observer** | **Type** |
| * | fancy mobile app | [Device](Device-ex-device.md) | User Device |

> **entity****role**:Query**query**:`R0VUIHRlc3QuZmhpci5uZXQvUjQvZmhpci9MaXN0P3BhdGllbnQ9OTg3NiZjb2RlPXN1Ym1pc3Npb25zZXQmc3RhdHVzPWN1cnJlbnQmZGVzaWduYXRpb25UeXBlPWh0dHA6Ly9sb2luYy5vcmd8MTIzNC01Cg==`

> **entity****what**:[John Schmidt Other, DoB: 1923-07-25](Patient-ex-patient.md)**role**:Patient



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "ex-auditFindDocumentLists-consumer",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.FindDocumentLists.Audit.Consumer"
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
          "code" : "ITI-66",
          "display" : "Find Document Lists"
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
      "display" : "fancy mobile app"
    },
    "observer" : {
      "reference" : "Device/ex-device"
    },
    "type" : [
      {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/security-source-type",
            "code" : "1",
            "display" : "User Device"
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
      "query" : "R0VUIHRlc3QuZmhpci5uZXQvUjQvZmhpci9MaXN0P3BhdGllbnQ9OTg3NiZjb2RlPXN1Ym1pc3Npb25zZXQmc3RhdHVzPWN1cnJlbnQmZGVzaWduYXRpb25UeXBlPWh0dHA6Ly9sb2luYy5vcmd8MTIzNC01Cg=="
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
