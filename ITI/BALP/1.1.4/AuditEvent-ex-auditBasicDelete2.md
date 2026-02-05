# Client - Audit Example of a basic patient identifiable Delete - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Client - Audit Example of a basic patient identifiable Delete**

## Example AuditEvent: Client - Audit Example of a basic patient identifiable Delete

Profile: [Basic AuditEvent for a successful Delete with Patient](StructureDefinition-IHE.BasicAudit.PatientDelete.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**type**: [Audit Event ID: rest](http://terminology.hl7.org/6.5.0/CodeSystem-audit-event-type.html#audit-event-type-rest) (Restful Operation)

**subtype**: [FHIR Restful Interactions: delete](http://hl7.org/fhir/R4/codesystem-restful-interaction.html#restful-interaction-delete) (delete)

**action**: Delete

**recorded**: 2020-04-29 09:49:00+0000

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


> **agent****type**:Custodian**who**: Charley Miller**requestor**: true

### Sources

| | | |
| :--- | :--- | :--- |
| - | **Observer** | **Type** |
| * | [Device](Device-ex-device.md) | [Audit Event Source Type: 4](http://terminology.hl7.org/6.5.0/CodeSystem-security-source-type.html#security-source-type-4)(Application Server) |

> **entity****what**:[List for 'Unspecified List Type' for 'Unspecified Subject'](List-ex-list.md)**type**:[Audit event entity type: 2](http://terminology.hl7.org/6.5.0/CodeSystem-audit-entity-type.html#audit-entity-type-2)(System Object)**role**:[AuditEventEntityRole: 4](http://terminology.hl7.org/6.5.0/CodeSystem-object-role.html#object-role-4)(Domain Resource)

> **entity****what**:[John Schmidt Other, DoB: 1923-07-25](Patient-ex-patient.md)**type**:[Audit event entity type: 1](http://terminology.hl7.org/6.5.0/CodeSystem-audit-entity-type.html#audit-entity-type-1)(Person)**role**:[AuditEventEntityRole: 1](http://terminology.hl7.org/6.5.0/CodeSystem-object-role.html#object-role-1)(Patient)



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "ex-auditBasicDelete2",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PatientDelete"
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
  "recorded" : "2020-04-29T09:49:00.000Z",
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
            "code" : "CST",
            "display" : "Custodian"
          }
        ]
      },
      "who" : {
        "display" : "Charley Miller"
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
        "reference" : "List/ex-list"
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
    },
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
    }
  ]
}

```
