# Audit Example of ITI-119 at Supplier - Patient Demographics Query for Mobile (PDQm) v3.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Example of ITI-119 at Supplier**

## Example AuditEvent: Audit Example of ITI-119 at Supplier

Profile: [Audit Event for PDQm Match at Supplier](StructureDefinition-IHE.PDQm.Match.Audit.Supplier.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**type**: [Audit Event ID: rest](http://terminology.hl7.org/7.0.0/CodeSystem-audit-event-type.html#audit-event-type-rest) (Restful Operation)

**subtype**: unknown: ITI-119 (Patient Demographics Match), [FHIR Restful Interactions: search](http://hl7.org/fhir/R4/codesystem-restful-interaction.html#restful-interaction-search) (search)

**action**: Execute

**recorded**: 2023-09-21 19:17:32+0000

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
| * | HIE PDQm api example | http://server.example.com/fhir | [Audit Event Source Type: 4](http://terminology.hl7.org/7.0.0/CodeSystem-security-source-type.html#security-source-type-4)(Application Server) |

> **entity****type**:[Audit event entity type: 2](http://terminology.hl7.org/7.0.0/CodeSystem-audit-entity-type.html#audit-entity-type-2)(System Object)**role**:[AuditEventEntityRole: 24](http://terminology.hl7.org/7.0.0/CodeSystem-object-role.html#object-role-24)(Query)**query**: (base64 data - 2,136 base64 chars)

> **entity****what**:[John Schmidt Other, DoB: 1923-07-25 ( http://example.org/exampleSystem#8675309)](Patient-ex-patient.md)**type**:[Audit event entity type: 1](http://terminology.hl7.org/7.0.0/CodeSystem-audit-entity-type.html#audit-entity-type-1)(Person)**role**:[AuditEventEntityRole: 1](http://terminology.hl7.org/7.0.0/CodeSystem-object-role.html#object-role-1)(Patient)



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "ex-auditPdqmMatch-supplier",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Match.Audit.Supplier"
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
      "code" : "ITI-119",
      "display" : "Patient Demographics Match"
    },
    {
      "system" : "http://hl7.org/fhir/restful-interaction",
      "code" : "search",
      "display" : "search"
    }
  ],
  "action" : "E",
  "recorded" : "2023-09-21T19:17:32Z",
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
    "site" : "HIE PDQm api example",
    "observer" : {
      "display" : "http://server.example.com/fhir"
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
      "query" : "ew0KICAicmVzb3VyY2VUeXBlIiA6ICJQYXJhbWV0ZXJzIiwNCiAgImlkIiA6ICJleC1tYXRjaC1pbnB1dCIsDQogICJtZXRhIiA6IHsNCiAgICAicHJvZmlsZSIgOiBbDQogICAgICAiaHR0cHM6Ly9wcm9maWxlcy5paGUubmV0L0lUSS9QRFFtL1N0cnVjdHVyZURlZmluaXRpb24vSUhFLlBEUW0uTWF0Y2hQYXJhbWV0ZXJzSW4iDQogICAgXSwNCiAgICAic2VjdXJpdHkiIDogWw0KICAgICAgew0KICAgICAgICAic3lzdGVtIiA6ICJodHRwOi8vdGVybWlub2xvZ3kuaGw3Lm9yZy9Db2RlU3lzdGVtL3YzLUFjdFJlYXNvbiIsDQogICAgICAgICJjb2RlIiA6ICJIVEVTVCINCiAgICAgIH0NCiAgICBdDQogIH0sDQogICJwYXJhbWV0ZXIiIDogWw0KICAgIHsNCiAgICAgICJuYW1lIiA6ICJyZXNvdXJjZSIsDQogICAgICAicmVzb3VyY2UiIDogew0KICAgICAgICAicmVzb3VyY2VUeXBlIiA6ICJQYXRpZW50IiwNCiAgICAgICAgImlkIiA6ICJleC1tYXRjaC1pbnB1dC1wYXRpZW50IiwNCiAgICAgICAgIm1ldGEiIDogew0KICAgICAgICAgICJwcm9maWxlIiA6IFsNCiAgICAgICAgICAgICJodHRwczovL3Byb2ZpbGVzLmloZS5uZXQvSVRJL1BEUW0vU3RydWN0dXJlRGVmaW5pdGlvbi9JSEUuUERRbS5NYXRjaElucHV0Ig0KICAgICAgICAgIF0sDQogICAgICAgICAgInNlY3VyaXR5IiA6IFsNCiAgICAgICAgICAgIHsNCiAgICAgICAgICAgICAgInN5c3RlbSIgOiAiaHR0cDovL3Rlcm1pbm9sb2d5LmhsNy5vcmcvQ29kZVN5c3RlbS92My1BY3RSZWFzb24iLA0KICAgICAgICAgICAgICAiY29kZSIgOiAiSFRFU1QiDQogICAgICAgICAgICB9DQogICAgICAgICAgXQ0KICAgICAgICB9LA0KICAgICAgICAidGV4dCIgOiB7DQogICAgICAgICAgInN0YXR1cyIgOiAiZW1wdHkiLA0KICAgICAgICAgICJkaXYiIDogIjxkaXYgeG1sbnM9XCJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hodG1sXCI+VGhpcyBQYXRpZW50IFJlc291cmNlIGNvbnRhaW5zIGEgc2V0IG9mIGRpc2NyZXRlIGRlbW9ncmFwaGljcyB0byBzZXJ2ZSBhcyBpbnB1dCB0byB0aGUgJG1hdGNoIG9wZXJhdGlvbi48L2Rpdj4iDQogICAgICAgIH0sDQogICAgICAgICJpZGVudGlmaWVyIiA6IFsNCiAgICAgICAgICB7DQogICAgICAgICAgICAic3lzdGVtIiA6ICJodHRwOi8vZXhhbXBsZS5vcmcvZXhhbXBsZVN5c3RlbSIsDQogICAgICAgICAgICAidmFsdWUiIDogIjg2NzUzMTAiDQogICAgICAgICAgfQ0KICAgICAgICBdLA0KICAgICAgICAibmFtZSIgOiBbDQogICAgICAgICAgew0KICAgICAgICAgICAgImZhbWlseSIgOiAiU2NobWlkdCIsDQogICAgICAgICAgICAiZ2l2ZW4iIDogWw0KICAgICAgICAgICAgICAiSm9obiINCiAgICAgICAgICAgIF0NCiAgICAgICAgICB9DQogICAgICAgIF0sDQogICAgICAgICJnZW5kZXIiIDogIm90aGVyIiwNCiAgICAgICAgImJpcnRoRGF0ZSIgOiAiMTkyMy0wNy0yNSIsDQogICAgICAgICJhZGRyZXNzIiA6IFsNCiAgICAgICAgICB7DQogICAgICAgICAgICAic3RhdGUiIDogIldJIiwNCiAgICAgICAgICAgICJjb3VudHJ5IiA6ICJVU0EiDQogICAgICAgICAgfQ0KICAgICAgICBdDQogICAgICB9DQogICAgfQ0KICBdDQp9"
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
