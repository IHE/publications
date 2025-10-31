# Server - Audit Example of a basic patient identifiable Query (POST) - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Server - Audit Example of a basic patient identifiable Query (POST)**

## Example AuditEvent: Server - Audit Example of a basic patient identifiable Query (POST)

Server - Audit Example of a basic patient identifiable Query (POST)

Audit Example for a RESTful Query using POST with a patient subject, recorded by the server

* recorded by the server
* server is FHIR application server defined by ex-device
* client is a computer at myMachine.example.org
* user is John Smith
* query is for an Observation for given patient
* patient is specified

The search received, and thus recorded:

```
POST /r4/Observation/_search HTTP/1.1
Host: test.fhir.org
Content-Type: application/x-www-form-urlencoded
Accept: application/fhir+json; fhirVersion=4.0
Content-Length: 87

patient=ex-patient&_lastUpdated=gt2020-11-06T21:52:30.300Z&_sort=_lastUpdated&_count=10

```

Profile: [Basic AuditEvent for a successful Query with Patient](StructureDefinition-IHE.BasicAudit.PatientQuery.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**type**: [Audit Event ID: rest](http://terminology.hl7.org/6.5.0/CodeSystem-audit-event-type.html#audit-event-type-rest) (Restful Operation)

**subtype**: [FHIR Restful Interactions: search-type](http://hl7.org/fhir/R4/codesystem-restful-interaction.html#restful-interaction-search-type) (search-type)

**action**: Execute

**recorded**: 2020-04-29 09:49:00+0000

**outcome**: Success

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


> **agent****type**:information recipient**who**: John Smith**requestor**: true

### Sources

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Site** | **Observer** | **Type** |
| * | server.example.com | [Device](Device-ex-device.md) | [Audit Event Source Type: 4](http://terminology.hl7.org/6.5.0/CodeSystem-security-source-type.html#security-source-type-4)(Application Server) |

> **entity****type**:[Audit event entity type: 2](http://terminology.hl7.org/6.5.0/CodeSystem-audit-entity-type.html#audit-entity-type-2)(System Object)**role**:[AuditEventEntityRole: 24](http://terminology.hl7.org/6.5.0/CodeSystem-object-role.html#object-role-24)(Query)**description**: POST /r4/Observation/_search HTTP/1.1 Host: test.fhir.org Content-Type: application/x-www-form-urlencoded Accept: application/fhir+json; fhirVersion=4.0 Content-Length: 87 patient=ex-patient&_lastUpdated=gt2020-11-06T21:52:30.300Z&_sort=_lastUpdated&_count=10**query**:`UE9TVCAvcjQvT2JzZXJ2YXRpb24vX3NlYXJjaCBIVFRQLzEuMQpIb3N0OiB0ZXN0LmZoaXIub3JnCkNvbnRlbnQtVHlwZTogYXBwbGljYXRpb24veC13d3ctZm9ybS11cmxlbmNvZGVkCkFjY2VwdDogYXBwbGljYXRpb24vZmhpcitqc29uOyBmaGlyVmVyc2lvbj00LjAKQ29udGVudC1MZW5ndGg6IDg3CgpwYXRpZW50PWV4LXBhdGllbnQmX2xhc3RVcGRhdGVkPWd0MjAyMC0xMS0wNlQyMTo1MjozMC4zMDBaJl9zb3J0PV9sYXN0VXBkYXRlZCZfY291bnQ9MTAKCgoK`

> **entity****what**:[John Schmidt Other, DoB: 1923-07-25](Patient-ex-patient.md)**type**:[Audit event entity type: 1](http://terminology.hl7.org/6.5.0/CodeSystem-audit-entity-type.html#audit-entity-type-1)(Person)**role**:[AuditEventEntityRole: 1](http://terminology.hl7.org/6.5.0/CodeSystem-object-role.html#object-role-1)(Patient)



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "ex-auditBasicQueryPost",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PatientQuery"
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
      "code" : "search-type",
      "display" : "search-type"
    }
  ],
  "action" : "E",
  "recorded" : "2020-04-29T09:49:00.000Z",
  "outcome" : "0",
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
            "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
            "code" : "IRCP",
            "display" : "information recipient"
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
    "site" : "server.example.com",
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
      "type" : {
        "system" : "http://terminology.hl7.org/CodeSystem/audit-entity-type",
        "code" : "2",
        "display" : "System Object"
      },
      "role" : {
        "system" : "http://terminology.hl7.org/CodeSystem/object-role",
        "code" : "24",
        "display" : "Query"
      },
      "description" : "POST /r4/Observation/_search HTTP/1.1\nHost: test.fhir.org\nContent-Type: application/x-www-form-urlencoded\nAccept: application/fhir+json; fhirVersion=4.0\nContent-Length: 87\n\npatient=ex-patient&_lastUpdated=gt2020-11-06T21:52:30.300Z&_sort=_lastUpdated&_count=10",
      "query" : "UE9TVCAvcjQvT2JzZXJ2YXRpb24vX3NlYXJjaCBIVFRQLzEuMQpIb3N0OiB0ZXN0LmZoaXIub3JnCkNvbnRlbnQtVHlwZTogYXBwbGljYXRpb24veC13d3ctZm9ybS11cmxlbmNvZGVkCkFjY2VwdDogYXBwbGljYXRpb24vZmhpcitqc29uOyBmaGlyVmVyc2lvbj00LjAKQ29udGVudC1MZW5ndGg6IDg3CgpwYXRpZW50PWV4LXBhdGllbnQmX2xhc3RVcGRhdGVkPWd0MjAyMC0xMS0wNlQyMTo1MjozMC4zMDBaJl9zb3J0PV9sYXN0VXBkYXRlZCZfY291bnQ9MTAKCgoK"
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
