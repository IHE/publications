# Audit Example of ITI-78 at Consumer - Patient Demographics Query for Mobile (PDQm) v3.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Example of ITI-78 at Consumer**

## Example AuditEvent: Audit Example of ITI-78 at Consumer

Profile: [Audit Event for PDQm Query at Consumer](StructureDefinition-IHE.PDQm.Query.Audit.Consumer.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**type**: [Audit Event ID: rest](http://terminology.hl7.org/6.5.0/CodeSystem-audit-event-type.html#audit-event-type-rest) (Restful Operation)

**subtype**: unknown: ITI-78 (Mobile Patient Demographics Query), [FHIR Restful Interactions: search](http://hl7.org/fhir/R4/codesystem-restful-interaction.html#restful-interaction-search) (search)

**action**: Execute

**recorded**: 2021-07-13 19:17:32+0000

**outcome**: Success

> **agent****type**:Source Role ID**who**:[Device](Device-ex-device.md)**requestor**: false

### Networks

| | | |
| :--- | :--- | :--- |
| - | **Address** | **Type** |
| * | 2001:0db8:85a3:0000:0000:8a2e:0370:7334 | IP Address |


> **agent****type**:Destination Role ID**who**: http://server.example.com/fhir**requestor**: false

### Networks

| | | |
| :--- | :--- | :--- |
| - | **Address** | **Type** |
| * | http://server.example.com/fhir | URI |


### Sources

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Site** | **Observer** | **Type** |
| * | fancy mobile app | [Device](Device-ex-device.md) | [Audit Event Source Type: 1](http://terminology.hl7.org/6.5.0/CodeSystem-security-source-type.html#security-source-type-1)(User Device) |

### Entities

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Type** | **Role** | **Query** |
| * | [Audit event entity type: 2](http://terminology.hl7.org/6.5.0/CodeSystem-audit-entity-type.html#audit-entity-type-2)(System Object) | [AuditEventEntityRole: 24](http://terminology.hl7.org/6.5.0/CodeSystem-object-role.html#object-role-24)(Query) | `R0VUIGh0dHBzOi8vc2VydmVyLmV4YW1wbGUuY29tL2ZoaXIvUGF0aWVudD9mYW1pbHk9TU9IUiZnaXZlbj1BTElDRSZhY3RpdmU9dHJ1ZSZnZW5kZXI9ZmVtYWxlCkFjY2VwdDogYXBwbGljYXRpb24vZmhpcitqc29uOyBmaGlyVmVyc2lvbj00LjA=` |



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "ex-auditPdqmQuery-consumer",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Query.Audit.Consumer"
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
      "system" : "urn:ihe:event-type-code",
      "code" : "ITI-78",
      "display" : "Mobile Patient Demographics Query"
    },
    {
      "system" : "http://hl7.org/fhir/restful-interaction",
      "code" : "search",
      "display" : "search"
    }
  ],
  "action" : "E",
  "recorded" : "2021-07-13T19:17:32Z",
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
        "reference" : "Device/ex-device"
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
        "display" : "http://server.example.com/fhir"
      },
      "requestor" : false,
      "network" : {
        "address" : "http://server.example.com/fhir",
        "type" : "5"
      }
    }
  ],
  "source" : {
    "site" : "fancy mobile app",
    "observer" : {
      "reference" : "Device/ex-device"
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
      "query" : "R0VUIGh0dHBzOi8vc2VydmVyLmV4YW1wbGUuY29tL2ZoaXIvUGF0aWVudD9mYW1pbHk9TU9IUiZnaXZlbj1BTElDRSZhY3RpdmU9dHJ1ZSZnZW5kZXI9ZmVtYWxlCkFjY2VwdDogYXBwbGljYXRpb24vZmhpcitqc29uOyBmaGlyVmVyc2lvbj00LjA="
    }
  ]
}

```
