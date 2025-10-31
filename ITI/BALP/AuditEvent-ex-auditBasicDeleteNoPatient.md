# Server - Audit Example of a basic object Delete at server - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Server - Audit Example of a basic object Delete at server**

## Example AuditEvent: Server - Audit Example of a basic object Delete at server

Profile: [Basic AuditEvent for a successful Delete](StructureDefinition-IHE.BasicAudit.Delete.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**type**: [Audit Event ID: rest](http://terminology.hl7.org/6.5.0/CodeSystem-audit-event-type.html#audit-event-type-rest) (Restful Operation)

**subtype**: [FHIR Restful Interactions: delete](http://hl7.org/fhir/R4/codesystem-restful-interaction.html#restful-interaction-delete) (delete)

**action**: Delete

**recorded**: 2020-04-06 09:49:00+0000

**outcome**: Success

> **agent****type**:Application**who**: myMachine.example.org**requestor**: false

### Networks

| | | |
| :--- | :--- | :--- |
| - | **Address** | **Type** |
| * | 2001:0db8:85a3:0000:0000:8a2e:0370:7334 | IP Address |


> **agent****type**:Custodian**who**:[Device](Device-ex-device.md)**requestor**: false

### Networks

| | | |
| :--- | :--- | :--- |
| - | **Address** | **Type** |
| * | http://server.example.com/fhir | URI |


> **agent****type**:author (originator)**who**: John Smith**requestor**: true

### Sources

| | | |
| :--- | :--- | :--- |
| - | **Observer** | **Type** |
| * | [Device](Device-ex-device.md) | [Audit Event Source Type: 4](http://terminology.hl7.org/6.5.0/CodeSystem-security-source-type.html#security-source-type-4)(Application Server) |

### Entities

| | | | |
| :--- | :--- | :--- | :--- |
| - | **What** | **Type** | **Role** |
| * | [MeasureReport: status = pending; type = summary; measure = http://example.org/fhir/uv/saner/Measure/FEMADailyHospitalCOVID19Reporting; period = 2020-04-05 --> 2020-04-05](MeasureReport-ex-measurereport.md) | [Audit event entity type: 2](http://terminology.hl7.org/6.5.0/CodeSystem-audit-entity-type.html#audit-entity-type-2)(System Object) | [AuditEventEntityRole: 4](http://terminology.hl7.org/6.5.0/CodeSystem-object-role.html#object-role-4)(Domain Resource) |



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "ex-auditBasicDeleteNoPatient",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.Delete"
    ],
    "security" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST"
      }
    ]
  },
  "type" : {
    "system" : "http://terminology.hl7.org/CodeSystem/audit-event-type",
    "code" : "rest",
    "display" : "Restful Operation"
  },
  "subtype" : [
    {
      "system" : "http://hl7.org/fhir/restful-interaction",
      "code" : "delete",
      "display" : "delete"
    }
  ],
  "action" : "D",
  "recorded" : "2020-04-06T09:49:00.000Z",
  "outcome" : "0",
  "agent" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://dicom.nema.org/resources/ontology/DCM",
            "code" : "110150",
            "display" : "Application"
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
            "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
            "code" : "custodian",
            "display" : "Custodian"
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
            "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
            "code" : "AUT",
            "display" : "author (originator)"
          }
        ]
      },
      "who" : {
        "display" : "John Smith"
      },
      "requestor" : true
    }
  ],
  "source" : {
    "observer" : {
      "reference" : "Device/ex-device"
    },
    "type" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/security-source-type",
        "code" : "4",
        "display" : "Application Server"
      }
    ]
  },
  "entity" : [
    {
      "what" : {
        "reference" : "MeasureReport/ex-measurereport"
      },
      "type" : {
        "system" : "http://terminology.hl7.org/CodeSystem/audit-entity-type",
        "code" : "2",
        "display" : "System Object"
      },
      "role" : {
        "system" : "http://terminology.hl7.org/CodeSystem/object-role",
        "code" : "4",
        "display" : "Domain Resource"
      }
    }
  ]
}

```
