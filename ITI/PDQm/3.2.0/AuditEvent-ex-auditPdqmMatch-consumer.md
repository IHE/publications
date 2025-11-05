# Audit Example of ITI-119 at Consumer - Patient Demographics Query for Mobile (PDQm) v3.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Example of ITI-119 at Consumer**

## Example AuditEvent: Audit Example of ITI-119 at Consumer

Profile: [Audit Event for PDQm Match at Consumer](StructureDefinition-IHE.PDQm.Match.Audit.Consumer.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**type**: [Audit Event ID: rest](http://terminology.hl7.org/6.5.0/CodeSystem-audit-event-type.html#audit-event-type-rest) (RESTful Operation)

**subtype**: unknown: ITI-119 (Patient Demographics Match), [FHIR Restful Interactions: search](http://hl7.org/fhir/R4/codesystem-restful-interaction.html#restful-interaction-search) (search)

**recorded**: 2023-09-20 19:17:32+0000

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
| * | [Audit event entity type: 2](http://terminology.hl7.org/6.5.0/CodeSystem-audit-entity-type.html#audit-entity-type-2)(System Object) | [AuditEventEntityRole: 24](http://terminology.hl7.org/6.5.0/CodeSystem-object-role.html#object-role-24)(Query) | (base64 data - 2,136 base64 chars) |



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "ex-auditPdqmMatch-consumer",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Match.Audit.Consumer"
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
    "code" : "rest"
  },
  "subtype" : [
    {
      "system" : "urn:ihe:event-type-code",
      "code" : "ITI-119",
      "display" : "Patient Demographics Match"
    },
    {
      "system" : "http://hl7.org/fhir/restful-interaction",
      "code" : "search",
      "display" : "search"
    }
  ],
  "recorded" : "2023-09-20T19:17:32Z",
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
      "query" : "ew0KICAicmVzb3VyY2VUeXBlIiA6ICJQYXJhbWV0ZXJzIiwNCiAgImlkIiA6ICJleC1tYXRjaC1pbnB1dCIsDQogICJtZXRhIiA6IHsNCiAgICAicHJvZmlsZSIgOiBbDQogICAgICAiaHR0cHM6Ly9wcm9maWxlcy5paGUubmV0L0lUSS9QRFFtL1N0cnVjdHVyZURlZmluaXRpb24vSUhFLlBEUW0uTWF0Y2hQYXJhbWV0ZXJzSW4iDQogICAgXSwNCiAgICAic2VjdXJpdHkiIDogWw0KICAgICAgew0KICAgICAgICAic3lzdGVtIiA6ICJodHRwOi8vdGVybWlub2xvZ3kuaGw3Lm9yZy9Db2RlU3lzdGVtL3YzLUFjdFJlYXNvbiIsDQogICAgICAgICJjb2RlIiA6ICJIVEVTVCINCiAgICAgIH0NCiAgICBdDQogIH0sDQogICJwYXJhbWV0ZXIiIDogWw0KICAgIHsNCiAgICAgICJuYW1lIiA6ICJyZXNvdXJjZSIsDQogICAgICAicmVzb3VyY2UiIDogew0KICAgICAgICAicmVzb3VyY2VUeXBlIiA6ICJQYXRpZW50IiwNCiAgICAgICAgImlkIiA6ICJleC1tYXRjaC1pbnB1dC1wYXRpZW50IiwNCiAgICAgICAgIm1ldGEiIDogew0KICAgICAgICAgICJwcm9maWxlIiA6IFsNCiAgICAgICAgICAgICJodHRwczovL3Byb2ZpbGVzLmloZS5uZXQvSVRJL1BEUW0vU3RydWN0dXJlRGVmaW5pdGlvbi9JSEUuUERRbS5NYXRjaElucHV0Ig0KICAgICAgICAgIF0sDQogICAgICAgICAgInNlY3VyaXR5IiA6IFsNCiAgICAgICAgICAgIHsNCiAgICAgICAgICAgICAgInN5c3RlbSIgOiAiaHR0cDovL3Rlcm1pbm9sb2d5LmhsNy5vcmcvQ29kZVN5c3RlbS92My1BY3RSZWFzb24iLA0KICAgICAgICAgICAgICAiY29kZSIgOiAiSFRFU1QiDQogICAgICAgICAgICB9DQogICAgICAgICAgXQ0KICAgICAgICB9LA0KICAgICAgICAidGV4dCIgOiB7DQogICAgICAgICAgInN0YXR1cyIgOiAiZW1wdHkiLA0KICAgICAgICAgICJkaXYiIDogIjxkaXYgeG1sbnM9XCJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hodG1sXCI+VGhpcyBQYXRpZW50IFJlc291cmNlIGNvbnRhaW5zIGEgc2V0IG9mIGRpc2NyZXRlIGRlbW9ncmFwaGljcyB0byBzZXJ2ZSBhcyBpbnB1dCB0byB0aGUgJG1hdGNoIG9wZXJhdGlvbi48L2Rpdj4iDQogICAgICAgIH0sDQogICAgICAgICJpZGVudGlmaWVyIiA6IFsNCiAgICAgICAgICB7DQogICAgICAgICAgICAic3lzdGVtIiA6ICJodHRwOi8vZXhhbXBsZS5vcmcvZXhhbXBsZVN5c3RlbSIsDQogICAgICAgICAgICAidmFsdWUiIDogIjg2NzUzMTAiDQogICAgICAgICAgfQ0KICAgICAgICBdLA0KICAgICAgICAibmFtZSIgOiBbDQogICAgICAgICAgew0KICAgICAgICAgICAgImZhbWlseSIgOiAiU2NobWlkdCIsDQogICAgICAgICAgICAiZ2l2ZW4iIDogWw0KICAgICAgICAgICAgICAiSm9obiINCiAgICAgICAgICAgIF0NCiAgICAgICAgICB9DQogICAgICAgIF0sDQogICAgICAgICJnZW5kZXIiIDogIm90aGVyIiwNCiAgICAgICAgImJpcnRoRGF0ZSIgOiAiMTkyMy0wNy0yNSIsDQogICAgICAgICJhZGRyZXNzIiA6IFsNCiAgICAgICAgICB7DQogICAgICAgICAgICAic3RhdGUiIDogIldJIiwNCiAgICAgICAgICAgICJjb3VudHJ5IiA6ICJVU0EiDQogICAgICAgICAgfQ0KICAgICAgICBdDQogICAgICB9DQogICAgfQ0KICBdDQp9"
    }
  ]
}

```
