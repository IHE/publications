# Audit Example of ITI-65 at source - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Example of ITI-65 at source**

## Example AuditEvent: Audit Example of ITI-65 at source

Profile: [Audit Event for Provide Bundle Transaction at Source](StructureDefinition-IHE.MHD.ProvideBundle.Audit.Source.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**category**: Provide Document Bundle

**code**: Export

**action**: Read

**recorded**: 2020-04-29 09:49:00+0000

### Outcomes

| | |
| :--- | :--- |
| - | **Code** |
| * | [AuditEventOutcome: 0](http://terminology.hl7.org/7.0.1/CodeSystem-audit-event-outcome.html#audit-event-outcome-0)(Success) |

> **agent****type**:Source Role ID**who**: model number ABC, serial number 1234**requestor**: false**network**: myDevice.example.com

> **agent****type**:Destination Role ID**who**: myMachine.example.org**requestor**: false**network**:[http://server.example.com/fhir](http://server.example.com/fhir)

### Sources

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Site** | **Observer** | **Type** |
| * | mobile app foo-bar | model number ABC, serial number 1234 | User Device |

> **entity****what**:[John Schmidt Other, DoB: 1923-07-25](Patient-ex-patient.md)**role**:Patient

> **entity****what**:[List for 'SubmissionSet as a FHIR List' for 'Unspecified Subject'](List-ex-minimalSubmissionSet.md)**role**:Job



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "ex-auditProvideBundle-source",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.ProvideBundle.Audit.Source"
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
        "code" : "110106",
        "display" : "Export"
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
            "code" : "110153",
            "display" : "Source Role ID"
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
            "code" : "110152",
            "display" : "Destination Role ID"
          }
        ]
      },
      "who" : {
        "display" : "myMachine.example.org"
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
