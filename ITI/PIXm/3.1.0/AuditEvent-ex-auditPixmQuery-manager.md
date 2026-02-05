# Audit Example of ITI-83 at Manager - Patient Identifier Cross-referencing for mobile (PIXm) v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Example of ITI-83 at Manager**

## Example AuditEvent: Audit Example of ITI-83 at Manager

Profile: [Audit Event for PIXm Query by the Manager](StructureDefinition-IHE.PIXm.Query.Audit.Manager.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**type**: [Audit Event ID: rest](http://terminology.hl7.org/6.5.0/CodeSystem-audit-event-type.html#audit-event-type-rest) (Restful Operation)

**subtype**: unknown: ITI-83 (Mobile Patient Identifier Cross-reference Query), [FHIR Restful Interactions: search](http://hl7.org/fhir/R4/codesystem-restful-interaction.html#restful-interaction-search) (search)

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
| * | HIE PIXm api example | http://server.example.com/fhir | [Audit Event Source Type: 4](http://terminology.hl7.org/6.5.0/CodeSystem-security-source-type.html#security-source-type-4)(Application Server) |

> **entity****type**:[Audit event entity type: 2](http://terminology.hl7.org/6.5.0/CodeSystem-audit-entity-type.html#audit-entity-type-2)(System Object)**role**:[AuditEventEntityRole: 24](http://terminology.hl7.org/6.5.0/CodeSystem-object-role.html#object-role-24)(Query)**description**: https://server.example.com/fhir/Patient/$ihe-pix?sourceIdentifier=urn:oid:1.3.6.1.4.1.21367.13.20.1000|IHERED-994&targetSystem=urn:oid:1.3.6.1.4.1.21367.13.20.3000**query**:`aHR0cHM6Ly9zZXJ2ZXIuZXhhbXBsZS5jb20vZmhpci9QYXRpZW50LyRpaGUtcGl4P3NvdXJjZUlkZW50aWZpZXI9dXJuOm9pZDoxLjMuNi4xLjQuMS4yMTM2Ny4xMy4yMC4xMDAwfElIRVJFRC05OTQmdGFyZ2V0U3lzdGVtPXVybjpvaWQ6MS4zLjYuMS40LjEuMjEzNjcuMTMuMjAuMzAwMA==`

> **entity****what**: Identifier:`urn:oid:1.3.6.1.4.1.21367.13.20.1000`/IHERED-994**type**:[Audit event entity type: 1](http://terminology.hl7.org/6.5.0/CodeSystem-audit-entity-type.html#audit-entity-type-1)(Person)**role**:[AuditEventEntityRole: 1](http://terminology.hl7.org/6.5.0/CodeSystem-object-role.html#object-role-1)(Patient)



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "ex-auditPixmQuery-manager",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Query.Audit.Manager"
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
      "code" : "ITI-83",
      "display" : "Mobile Patient Identifier Cross-reference Query"
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
    "site" : "HIE PIXm api example",
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
      "description" : "https://server.example.com/fhir/Patient/$ihe-pix?sourceIdentifier=urn:oid:1.3.6.1.4.1.21367.13.20.1000|IHERED-994&targetSystem=urn:oid:1.3.6.1.4.1.21367.13.20.3000",
      "query" : "aHR0cHM6Ly9zZXJ2ZXIuZXhhbXBsZS5jb20vZmhpci9QYXRpZW50LyRpaGUtcGl4P3NvdXJjZUlkZW50aWZpZXI9dXJuOm9pZDoxLjMuNi4xLjQuMS4yMTM2Ny4xMy4yMC4xMDAwfElIRVJFRC05OTQmdGFyZ2V0U3lzdGVtPXVybjpvaWQ6MS4zLjYuMS40LjEuMjEzNjcuMTMuMjAuMzAwMA=="
    },
    {
      "what" : {
        "identifier" : {
          "system" : "urn:oid:1.3.6.1.4.1.21367.13.20.1000",
          "value" : "IHERED-994"
        }
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
