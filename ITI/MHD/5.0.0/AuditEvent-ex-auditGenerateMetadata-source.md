# Audit Example of ITI-106 at source - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Example of ITI-106 at source**

## Example AuditEvent: Audit Example of ITI-106 at source

Profile: [Audit Event for Generate Metadata ITI-106 Transaction at Source](StructureDefinition-IHE.MHD.GenerateMetadata.Audit.Source.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**category**: create, Generate Metadata

**code**: RESTful Operation

**recorded**: 2020-04-29 09:49:00+0000

### Outcomes

| | |
| :--- | :--- |
| - | **Code** |
| * | [AuditEventOutcome: 0](http://terminology.hl7.org/7.0.1/CodeSystem-audit-event-outcome.html#audit-event-outcome-0)(Success) |

> **agent****type**:Source Role ID**who**: model number ABC, serial number 1234**requestor**: false**network**: 2001:0db8:85a3:0000:0000:8a2e:0370:7334

> **agent****type**:Destination Role ID**who**:[Device](Device-ex-device.md)**requestor**: false**network**:[http://server.example.com/fhir](http://server.example.com/fhir)

### Sources

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Site** | **Observer** | **Type** |
| * | mobile app foo-bar | model number ABC, serial number 1234 | User Device |

### Entities

| | | |
| :--- | :--- | :--- |
| - | **What** | **Role** |
| * | [Binary: text/plain (16 bytes base64)](Binary-ex-binary.md) | Domain Resource |



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "ex-auditGenerateMetadata-source",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.GenerateMetadata.Audit.Source"
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
          "system" : "http://hl7.org/fhir/restful-interaction",
          "code" : "create"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "urn:ihe:event-type-code",
          "code" : "ITI-106",
          "display" : "Generate Metadata"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/audit-event-type",
        "code" : "rest"
      }
    ]
  },
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
            "code" : "110152",
            "display" : "Destination Role ID"
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
        "reference" : "Binary/ex-binary"
      },
      "role" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/object-role",
            "code" : "4",
            "display" : "Domain Resource"
          }
        ]
      }
    }
  ]
}

```
