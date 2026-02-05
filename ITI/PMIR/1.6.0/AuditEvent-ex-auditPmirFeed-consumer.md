# Audit Example of ITI-93 for Consumer - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Example of ITI-93 for Consumer**

## Example AuditEvent: Audit Example of ITI-93 for Consumer

Profile: [Audit Event for Mobile Patient Identity Feed by the Supplier and Consumer](StructureDefinition-IHE.PMIR.Feed.Audit.md)

**type**: [DICOM: 110110](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-110110) (Patient Record)

**subtype**: unknown: ITI-93 (Mobile Patient Identity Feed)

**action**: Execute

**recorded**: 2022-04-13 19:02:40+0000

**outcome**: Success

> **agent****type**:Source Role ID**who**:[Device](Device-ex-device.md)**requestor**: true

### Networks

| | | |
| :--- | :--- | :--- |
| - | **Address** | **Type** |
| * | supplier.example.org | Machine Name |


> **agent****type**:Destination Role ID**who**:[Device](Device-ex-pmir.md)**name**: https://pmir.example.org/**requestor**: false

### Networks

| | | |
| :--- | :--- | :--- |
| - | **Address** | **Type** |
| * | pmir.example.org | Machine Name |


### Sources

| | | |
| :--- | :--- | :--- |
| - | **Observer** | **Type** |
| * | [Device](Device-ex-pmir.md) | [Audit Event Source Type: 4](http://terminology.hl7.org/6.5.0/CodeSystem-security-source-type.html#security-source-type-4)(Application Server) |

> **entity****what**:[David A. Riegel (official) Male, DoB: 1985-07-12](Patient-ex-patient-create1.md)**type**:[Audit event entity type: 1](http://terminology.hl7.org/6.5.0/CodeSystem-audit-entity-type.html#audit-entity-type-1)(Person)**role**:[AuditEventEntityRole: 1](http://terminology.hl7.org/6.5.0/CodeSystem-object-role.html#object-role-1)(Patient)

> **entity****what**:[MessageHeader: event[x] = urn:ihe:iti:pmir:2019:patient-feed](MessageHeader-ex-messageheader-create.md)**type**:[ResourceType: MessageHeader](http://hl7.org/fhir/R4/codesystem-resource-types.html#resource-types-MessageHeader)(MessageHeader)**name**: urn:ihe:iti:pmir:2019:patient-feed



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "ex-auditPmirFeed-consumer",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Feed.Audit"
    ]
  },
  "type" : {
    "system" : "http://dicom.nema.org/resources/ontology/DCM",
    "code" : "110110",
    "display" : "Patient Record"
  },
  "subtype" : [
    {
      "system" : "urn:ihe:event-type-code",
      "code" : "ITI-93",
      "display" : "Mobile Patient Identity Feed"
    }
  ],
  "action" : "E",
  "recorded" : "2022-04-13T19:02:40Z",
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
      "requestor" : true,
      "network" : {
        "address" : "supplier.example.org",
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
        "reference" : "Device/ex-pmir"
      },
      "name" : "https://pmir.example.org/",
      "requestor" : false,
      "network" : {
        "address" : "pmir.example.org",
        "type" : "1"
      }
    }
  ],
  "source" : {
    "observer" : {
      "reference" : "Device/ex-pmir"
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
        "reference" : "Patient/ex-patient-create1"
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
        "reference" : "MessageHeader/ex-messageheader-create"
      },
      "type" : {
        "system" : "http://hl7.org/fhir/resource-types",
        "code" : "MessageHeader",
        "display" : "MessageHeader"
      },
      "name" : "urn:ihe:iti:pmir:2019:patient-feed"
    }
  ]
}

```
