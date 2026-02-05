# Audit Example of ITI-65 at recipient - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Example of ITI-65 at recipient**

## Example AuditEvent: Audit Example of ITI-65 at recipient

Profile: [Audit Event for Provide Bundle Transaction at Recipient](StructureDefinition-IHE.MHD.ProvideBundle.Audit.Recipient.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**category**: Provide Document Bundle

**code**: Import

**action**: Create

**recorded**: 2020-04-29 09:49:00+0000

### Outcomes

| | |
| :--- | :--- |
| - | **Code** |
| * | [AuditEventOutcome: 0](http://terminology.hl7.org/6.5.0/CodeSystem-audit-event-outcome.html#audit-event-outcome-0)(Success) |

> **agent****type**:Source Role ID**who**: myMachine.example.org**requestor**: false**network**: 2001:0db8:85a3:0000:0000:8a2e:0370:7334

> **agent****type**:Destination Role ID**who**:[Device](Device-ex-device.md)**requestor**: false**network**:[http://server.example.com/fhir](http://server.example.com/fhir)

### Sources

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Site** | **Observer** | **Type** |
| * | server.example.com | [Device](Device-ex-device.md) | Application Server |

> **entity****what**:[John Schmidt Other, DoB: 1923-07-25](Patient-ex-patient.md)**role**:Patient

> **entity****what**:[List for 'SubmissionSet as a FHIR List' for 'Unspecified Subject'](List-ex-minimalSubmissionSet.md)**role**:Job



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "ex-auditProvideBundle-recipient",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.ProvideBundle.Audit.Recipient"
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
          "code" : "ITI-65",
          "display" : "Provide Document Bundle"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://dicom.nema.org/resources/ontology/DCM",
        "code" : "110107",
        "display" : "Import"
      }
    ]
  },
  "action" : "C",
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
        "display" : "myMachine.example.org"
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
      "display" : "server.example.com"
    },
    "observer" : {
      "reference" : "Device/ex-device"
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
    },
    {
      "what" : {
        "reference" : "List/ex-minimalSubmissionSet"
      },
      "role" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/object-role",
            "code" : "20",
            "display" : "Job"
          }
        ]
      }
    }
  ]
}

```
