# Audit Example of ITI-94 for Patient Identity Subscriber for Update - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Example of ITI-94 for Patient Identity Subscriber for Update**

## Example AuditEvent: Audit Example of ITI-94 for Patient Identity Subscriber for Update

Profile: [Audit Event for Subscribe to Patient Updates Transaction by the Patient Identity Subscriber and Registry for Update](StructureDefinition-IHE.PMIR.Audit.Subscription.Update.md)

**type**: [Audit Event ID: rest](http://terminology.hl7.org/6.5.0/CodeSystem-audit-event-type.html#audit-event-type-rest) (Restful Operation)

**subtype**: unknown: ITI-94 (Subscribe to Patient Updates), [FHIR Restful Interactions: update](http://hl7.org/fhir/R4/codesystem-restful-interaction.html#restful-interaction-update) (update)

**action**: Update

**recorded**: 2022-04-13 19:33:45+0000

**outcome**: Success

> **agent****type**:Source Role ID**who**:[Device](Device-ex-device.md)**requestor**: false

### Networks

| | | |
| :--- | :--- | :--- |
| - | **Address** | **Type** |
| * | subscriber.example.org | Machine Name |


> **agent****type**:Destination Role ID**who**:[Device](Device-ex-pmir.md)**requestor**: false

### Networks

| | | |
| :--- | :--- | :--- |
| - | **Address** | **Type** |
| * | https://pmir.example.org | URI |


> **agent****type**:Custodian**who**: Identifier:`http://example.org/practitioner`/1234567890**requestor**: true

### Sources

| | | |
| :--- | :--- | :--- |
| - | **Observer** | **Type** |
| * | [Device](Device-ex-device.md) | [Audit Event Source Type: 4](http://terminology.hl7.org/6.5.0/CodeSystem-security-source-type.html#security-source-type-4)(Application Server) |

> **entity****what**:[Subscription: status = active; contact = ph: +1-555-555-1212; reason = To receive Patient changes.; criteria = Patient](Subscription-ex-subscription.md)**type**:[Audit event entity type: 2](http://terminology.hl7.org/6.5.0/CodeSystem-audit-entity-type.html#audit-entity-type-2)(System Object)**role**:[AuditEventEntityRole: 4](http://terminology.hl7.org/6.5.0/CodeSystem-object-role.html#object-role-4)(Domain Resource)**description**: Patient**query**:`UGF0aWVudD9faWQ9ZXgtcGF0aWVudA==`

> **entity****what**:[David A. Riegel (official) Male, DoB: 1985-07-12](Patient-ex-patient-create1.md)**type**:[Audit event entity type: 1](http://terminology.hl7.org/6.5.0/CodeSystem-audit-entity-type.html#audit-entity-type-1)(Person)**role**:[AuditEventEntityRole: 1](http://terminology.hl7.org/6.5.0/CodeSystem-object-role.html#object-role-1)(Patient)



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "ex-auditPmirSubscription-subscriber-update",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Audit.Subscription.Update"
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
      "code" : "ITI-94",
      "display" : "Subscribe to Patient Updates"
    },
    {
      "system" : "http://hl7.org/fhir/restful-interaction",
      "code" : "update",
      "display" : "update"
    }
  ],
  "action" : "U",
  "recorded" : "2022-04-13T19:33:45Z",
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
        "address" : "subscriber.example.org",
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
      "requestor" : false,
      "network" : {
        "address" : "https://pmir.example.org",
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
        "identifier" : {
          "system" : "http://example.org/practitioner",
          "value" : "1234567890"
        }
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
        "reference" : "Subscription/ex-subscription"
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
      },
      "description" : "Patient",
      "query" : "UGF0aWVudD9faWQ9ZXgtcGF0aWVudA=="
    },
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
    }
  ]
}

```
