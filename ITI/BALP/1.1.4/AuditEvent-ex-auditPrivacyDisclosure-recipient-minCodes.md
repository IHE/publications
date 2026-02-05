# Audit Example of Privacy Disclosure at recipient - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Example of Privacy Disclosure at recipient**

## Example AuditEvent: Audit Example of Privacy Disclosure at recipient

Profile: [Audit Event for a Privacy Disclosure as recorded by a Recipient](StructureDefinition-IHE.BasicAudit.PrivacyDisclosure.Recipient.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**type**: [DICOM: 110107](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-110107) (Import)

**subtype**: [ISO 21089 2017 Health Record Lifecycle Events: disclose](http://terminology.hl7.org/6.5.0/CodeSystem-iso-21089-lifecycle.html#iso-21089-lifecycle-disclose) (Disclose Record Lifecycle Event)

**action**: Create

**recorded**: 2020-04-29 09:49:00+0000

**outcome**: Success

**purposeOfEvent**: patient requested

> **agent****type**:Source Role ID**who**: myMachine.example.org**requestor**: false

### Networks

| | | |
| :--- | :--- | :--- |
| - | **Address** | **Type** |
| * | 2001:0db8:85a3:0000:0000:8a2e:0370:7334 | IP Address |


> **agent****type**:Destination Role ID**who**:[Device](Device-ex-device.md)**requestor**: false

### Networks

| | | |
| :--- | :--- | :--- |
| - | **Address** | **Type** |
| * | http://server.example.com/fhir | URI |


> **agent****type**:Patient Advocate**who**:[John Schmidt Other, DoB: 1923-07-25](Patient-ex-patient.md)**requestor**: true

### Sources

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Site** | **Observer** | **Type** |
| * | server.example.com | [Device](Device-ex-device.md) | [Audit Event Source Type: 4](http://terminology.hl7.org/6.5.0/CodeSystem-security-source-type.html#security-source-type-4)(Application Server) |

> **entity****what**:[John Schmidt Other, DoB: 1923-07-25](Patient-ex-patient.md)**type**:[Audit event entity type: 1](http://terminology.hl7.org/6.5.0/CodeSystem-audit-entity-type.html#audit-entity-type-1)(Person)**role**:[AuditEventEntityRole: 1](http://terminology.hl7.org/6.5.0/CodeSystem-object-role.html#object-role-1)(Patient)

> **entity****what**:[DocumentReference: status = current](DocumentReference-ex-documentreference.md)**type**:[Audit event entity type: 2](http://terminology.hl7.org/6.5.0/CodeSystem-audit-entity-type.html#audit-entity-type-2)(System Object)**role**:[AuditEventEntityRole: 3](http://terminology.hl7.org/6.5.0/CodeSystem-object-role.html#object-role-3)(Report)



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "ex-auditPrivacyDisclosure-recipient-minCodes",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PrivacyDisclosure.Recipient"
    ],
    "security" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST"
      }
    ]
  },
  "type" : {
    "system" : "http://dicom.nema.org/resources/ontology/DCM",
    "code" : "110107"
  },
  "subtype" : [
    {
      "system" : "http://terminology.hl7.org/CodeSystem/iso-21089-lifecycle",
      "code" : "disclose"
    }
  ],
  "action" : "C",
  "recorded" : "2020-04-29T09:49:00.000Z",
  "outcome" : "0",
  "purposeOfEvent" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "PATRQT"
        }
      ]
    }
  ],
  "agent" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://dicom.nema.org/resources/ontology/DCM",
            "code" : "110153"
          }
        ]
      },
      "who" : {
        "display" : "myMachine.example.org"
      },
      "requestor" : false,
      "network" : {
        "address" : "2001:0db8:85a3:0000:0000:8a2e:0370:7334",
        "type" : "2"
      }
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
      "network" : {
        "address" : "http://server.example.com/fhir",
        "type" : "5"
      }
    },
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "429577009",
            "display" : "Patient Advocate"
          }
        ]
      },
      "who" : {
        "reference" : "Patient/ex-patient"
      },
      "requestor" : true
    }
  ],
  "source" : {
    "site" : "server.example.com",
    "observer" : {
      "reference" : "Device/ex-device"
    },
    "type" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/security-source-type",
        "code" : "4"
      }
    ]
  },
  "entity" : [
    {
      "what" : {
        "reference" : "Patient/ex-patient"
      },
      "type" : {
        "system" : "http://terminology.hl7.org/CodeSystem/audit-entity-type",
        "code" : "1"
      },
      "role" : {
        "system" : "http://terminology.hl7.org/CodeSystem/object-role",
        "code" : "1"
      }
    },
    {
      "what" : {
        "reference" : "DocumentReference/ex-documentreference"
      },
      "type" : {
        "system" : "http://terminology.hl7.org/CodeSystem/audit-entity-type",
        "code" : "2"
      },
      "role" : {
        "system" : "http://terminology.hl7.org/CodeSystem/object-role",
        "code" : "3"
      }
    }
  ]
}

```
