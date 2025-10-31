# Server - Audit Example of a basic Query (GET) - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Server - Audit Example of a basic Query (GET)**

## Example AuditEvent: Server - Audit Example of a basic Query (GET)

Profile: [Basic AuditEvent for a successful Query](StructureDefinition-IHE.BasicAudit.Query.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**type**: [Audit Event ID: rest](http://terminology.hl7.org/6.5.0/CodeSystem-audit-event-type.html#audit-event-type-rest) (Restful Operation)

**subtype**: [FHIR Restful Interactions: search](http://hl7.org/fhir/R4/codesystem-restful-interaction.html#restful-interaction-search) (search)

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

> **entity****type**:[Audit event entity type: 2](http://terminology.hl7.org/6.5.0/CodeSystem-audit-entity-type.html#audit-entity-type-2)(System Object)**role**:[AuditEventEntityRole: 24](http://terminology.hl7.org/6.5.0/CodeSystem-object-role.html#object-role-24)(Query)**description**: GET test.fhir.org/r4/MeasureReport?_lastUpdated=gt2020-11-06T21:52:30.300Z&_sort=_lastUpdated&_count=10 Accept: application/fhir+json; fhirVersion=4.0 X-Request-Id: 4a8dca3c-2205-4dc7-90e1-db877781d7cc**query**:`R0VUIHRlc3QuZmhpci5vcmcvcjQvTWVhc3VyZVJlcG9ydD9fbGFzdFVwZGF0ZWQ9Z3QyMDIwLTExLTA2VDIxOjUyOjMwLjMwMFomX3NvcnQ9X2xhc3RVcGRhdGVkJl9jb3VudD0xMApBY2NlcHQ6IGFwcGxpY2F0aW9uL2ZoaXIranNvbjsgZmhpclZlcnNpb249NC4wClgtUmVxdWVzdC1JZDogNGE4ZGNhM2MtMjIwNS00ZGM3LTkwZTEtZGI4Nzc3ODFkN2Nj`

> **entity****what**: Identifier: 4a8dca3c-2205-4dc7-90e1-db877781d7cc**type**:[Entity Types that are defined in IHE BasicAudit: XrequestId](CodeSystem-BasicAuditEntityType.md#BasicAuditEntityType-XrequestId)(transport specific unique identifier where http X-Request-Id is used)



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "ex-auditBasicQueryGetNoPatient",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.Query"
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
      "code" : "search",
      "display" : "search"
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
      "description" : "GET test.fhir.org/r4/MeasureReport?_lastUpdated=gt2020-11-06T21:52:30.300Z&_sort=_lastUpdated&_count=10\nAccept: application/fhir+json; fhirVersion=4.0\nX-Request-Id: 4a8dca3c-2205-4dc7-90e1-db877781d7cc",
      "query" : "R0VUIHRlc3QuZmhpci5vcmcvcjQvTWVhc3VyZVJlcG9ydD9fbGFzdFVwZGF0ZWQ9Z3QyMDIwLTExLTA2VDIxOjUyOjMwLjMwMFomX3NvcnQ9X2xhc3RVcGRhdGVkJl9jb3VudD0xMApBY2NlcHQ6IGFwcGxpY2F0aW9uL2ZoaXIranNvbjsgZmhpclZlcnNpb249NC4wClgtUmVxdWVzdC1JZDogNGE4ZGNhM2MtMjIwNS00ZGM3LTkwZTEtZGI4Nzc3ODFkN2Nj"
    },
    {
      "what" : {
        "identifier" : {
          "value" : "4a8dca3c-2205-4dc7-90e1-db877781d7cc"
        }
      },
      "type" : {
        "system" : "https://profiles.ihe.net/ITI/BALP/CodeSystem/BasicAuditEntityType",
        "code" : "XrequestId"
      }
    }
  ]
}

```
