# Audit Example of Privacy Disclosure at source - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Example of Privacy Disclosure at source**

## Example AuditEvent: Audit Example of Privacy Disclosure at source

Profile: [Audit Event for Privacy Disclosure at Source](StructureDefinition-IHE.BasicAudit.PrivacyDisclosure.Source.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**type**: [DICOM: 110106](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-110106) (Export)

**subtype**: [ISO 21089 2017 Health Record Lifecycle Events: disclose](http://terminology.hl7.org/6.5.0/CodeSystem-iso-21089-lifecycle.html#iso-21089-lifecycle-disclose) (Disclose Record Lifecycle Event), [FHIR Restful Interactions: read](http://hl7.org/fhir/R4/codesystem-restful-interaction.html#restful-interaction-read) (read)

**action**: Read/View/Print

**recorded**: 2020-04-29 09:49:00+0000

**outcome**: Success

**purposeOfEvent**: patient requested

> **agent****type**:Source Role ID**who**: model number ABC, serial number 1234**requestor**: false

### Networks

| | | |
| :--- | :--- | :--- |
| - | **Address** | **Type** |
| * | myDevice.example.com | Machine Name |


> **agent****type**:Destination Role ID**who**: myMachine.example.org**requestor**: false

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
| * | mobile app foo-bar | model number ABC, serial number 1234 | [Audit Event Source Type: 1](http://terminology.hl7.org/6.5.0/CodeSystem-security-source-type.html#security-source-type-1)(User Device) |

> **entity****what**:[John Schmidt Other, DoB: 1923-07-25](Patient-ex-patient.md)**type**:[Audit event entity type: 1](http://terminology.hl7.org/6.5.0/CodeSystem-audit-entity-type.html#audit-entity-type-1)(Person)**role**:[AuditEventEntityRole: 1](http://terminology.hl7.org/6.5.0/CodeSystem-object-role.html#object-role-1)(Patient)

> **entity****what**:[DocumentReference: status = current](DocumentReference-ex-documentreference.md)**type**:[Audit event entity type: 2](http://terminology.hl7.org/6.5.0/CodeSystem-audit-entity-type.html#audit-entity-type-2)(System Object)**role**:[AuditEventEntityRole: 3](http://terminology.hl7.org/6.5.0/CodeSystem-object-role.html#object-role-3)(Report)



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "ex-auditPrivacyDisclosure-source2",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PrivacyDisclosure.Source"
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
    "code" : "110106",
    "display" : "Export"
  },
  "subtype" : [
    {
      "system" : "http://terminology.hl7.org/CodeSystem/iso-21089-lifecycle",
      "code" : "disclose",
      "display" : "Disclose Record Lifecycle Event"
    },
    {
      "system" : "http://hl7.org/fhir/restful-interaction",
      "code" : "read",
      "display" : "read"
    }
  ],
  "action" : "R",
  "recorded" : "2020-04-29T09:49:00.000Z",
  "outcome" : "0",
  "purposeOfEvent" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "PATRQT",
          "display" : "patient requested"
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
            "code" : "110153",
            "display" : "Source Role ID"
          }
        ]
      },
      "who" : {
        "display" : "model number ABC, serial number 1234"
      },
      "requestor" : false,
      "network" : {
        "address" : "myDevice.example.com",
        "type" : "1"
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
        "display" : "myMachine.example.org"
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
    "site" : "mobile app foo-bar",
    "observer" : {
      "display" : "model number ABC, serial number 1234"
    },
    "type" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/security-source-type",
        "code" : "1",
        "display" : "User Device"
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
        "code" : "1",
        "display" : "Person"
      },
      "role" : {
        "system" : "http://terminology.hl7.org/CodeSystem/object-role",
        "code" : "1",
        "display" : "Patient"
      }
    },
    {
      "what" : {
        "reference" : "DocumentReference/ex-documentreference"
      },
      "type" : {
        "system" : "http://terminology.hl7.org/CodeSystem/audit-entity-type",
        "code" : "2",
        "display" : "System Object"
      },
      "role" : {
        "system" : "http://terminology.hl7.org/CodeSystem/object-role",
        "code" : "3",
        "display" : "Report"
      }
    }
  ]
}

```
