# Audit Example of ITI-68 at consumer - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Example of ITI-68 at consumer**

## Example AuditEvent: Audit Example of ITI-68 at consumer

Profile: [Audit Event for Retrieve Document Transaction at Document Consumer](StructureDefinition-IHE.MHD.RetrieveDocument.Audit.Consumer.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**category**: Retrieve Document, read

**code**: Restful Operation

**action**: Read

**recorded**: 2020-04-29 09:49:00+0000

### Outcomes

| | |
| :--- | :--- |
| - | **Code** |
| * | [AuditEventOutcome: 0](http://terminology.hl7.org/6.5.0/CodeSystem-audit-event-outcome.html#audit-event-outcome-0)(Success) |

> **agent****type**:Destination Role ID**who**: model number ABC, serial number 1234**requestor**: false**network**: 2001:0db8:85a3:0000:0000:8a2e:0370:7334

> **agent****type**:Source Role ID**who**:[Device](Device-ex-device.md)**requestor**: false**network**:[http://server.example.com/fhir](http://server.example.com/fhir)

### Sources

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Site** | **Observer** | **Type** |
| * | mobile app foo-bar | model number ABC, serial number 1234 | User Device |

> **entity****what**:[http://example.org/blah/blah.pdf](http://example.org/blah/blah.pdf)**role**:Report

> **entity****what**:[John Schmidt Other, DoB: 1923-07-25](Patient-ex-patient.md)**role**:Patient



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "ex-auditRetrieveDocument-consumer",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.RetrieveDocument.Audit.Consumer"
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
      "networkString" : "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
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
        "reference" : "Device/ex-device"
      },
      "requestor" : false,
      "networkUri" : "http://server.example.com/fhir"
    }
  ],
  "source" : {
    "site" : {
      "display" : "mobile app foo-bar"
    },
    "observer" : {
      "display" : "model number ABC, serial number 1234"
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
