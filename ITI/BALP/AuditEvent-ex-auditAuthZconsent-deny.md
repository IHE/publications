# Audit Example of a basic Authorization Deny access - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Example of a basic Authorization Deny access**

## Example AuditEvent: Audit Example of a basic Authorization Deny access

Profile: [Basic AuditEvent pattern for when an Authorization permit is decided](StructureDefinition-IHE.BasicAudit.AuthZconsent.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**type**: [DICOM: 110113](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-110113) (Security Alert)

**subtype**: [Authorization subType events: AuthZ-Consent](CodeSystem-AuthZsubType.md#AuthZsubType-AuthZ-Consent) (Authorization Decision using Roles and Consent)

**action**: Execute

**recorded**: 2021-12-27 09:49:00+0000

**outcome**: Serious failure

**outcomeDesc**: Consent denied access to this user

> **agent****type**:Application**who**:[Device](Device-ex-device.md)**requestor**: false

### Networks

| | | |
| :--- | :--- | :--- |
| - | **Address** | **Type** |
| * | 2001:0db8:85a3:0000:0000:8a2e:0370:7334 | IP Address |


> **agent****type**:information recipient**who**:[Practitioner: telecom = JohnMoehrke@gmail.com](Practitioner-ex-practitioner.md)**requestor**: true**purposeOfUse**:patient requested

> **agent****type**:healthcare provider**who**:[Organization nowhere](Organization-ex-organization.md)**requestor**: false

> **agent****type**:Authorization Server**who**:[Device](Device-ex-authz.md)**requestor**: false

### Sources

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Site** | **Observer** | **Type** |
| * | server.example.com | [Device](Device-ex-authz.md) | [Audit Event Source Type: 6](http://terminology.hl7.org/6.5.0/CodeSystem-security-source-type.html#security-source-type-6)(Security Server) |

> **entity****what**:[John Schmidt Other, DoB: 1923-07-25](Patient-ex-patient.md)**type**:[Audit event entity type: 1](http://terminology.hl7.org/6.5.0/CodeSystem-audit-entity-type.html#audit-entity-type-1)(Person)**role**:[AuditEventEntityRole: 1](http://terminology.hl7.org/6.5.0/CodeSystem-object-role.html#object-role-1)(Patient)

> **entity****what**:[Consent: status = active; scope = Privacy Consent; category = Privacy policy acknowledgment Document](Consent-ex-consent.md)**type**:[ResourceType: Consent](http://hl7.org/fhir/R4/codesystem-resource-types.html#resource-types-Consent)(Consent)



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "ex-auditAuthZconsent-deny",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.AuthZconsent"
    ],
    "security" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST"
      }
    ]
  },
  "type" : {
    "system" : "http://dicom.nema.org/resources/ontology/DCM",
    "code" : "110113",
    "display" : "Security Alert"
  },
  "subtype" : [
    {
      "system" : "https://profiles.ihe.net/ITI/BALP/CodeSystem/AuthZsubType",
      "code" : "AuthZ-Consent"
    }
  ],
  "action" : "E",
  "recorded" : "2021-12-27T09:49:00.000Z",
  "outcome" : "8",
  "outcomeDesc" : "Consent denied access to this user",
  "agent" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://dicom.nema.org/resources/ontology/DCM",
            "code" : "110150"
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
            "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
            "code" : "IRCP"
          }
        ]
      },
      "who" : {
        "reference" : "Practitioner/ex-practitioner"
      },
      "requestor" : true,
      "purposeOfUse" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
              "code" : "PATRQT"
            }
          ]
        }
      ]
    },
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
            "code" : "PROV"
          }
        ]
      },
      "who" : {
        "reference" : "Organization/ex-organization"
      },
      "requestor" : false
    },
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/extra-security-role-type",
            "code" : "authserver"
          }
        ]
      },
      "who" : {
        "reference" : "Device/ex-authz"
      },
      "requestor" : false
    }
  ],
  "source" : {
    "site" : "server.example.com",
    "observer" : {
      "reference" : "Device/ex-authz"
    },
    "type" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/security-source-type",
        "code" : "6",
        "display" : "Security Server"
      }
    ]
  },
  "entity" : [
    {
      "what" : {
        "reference" : "Patient/ex-patient"
      },
      "type" : {
        "system" : "http://terminology.hl7.org/CodeSystem/audit-entity-type",
        "code" : "1"
      },
      "role" : {
        "system" : "http://terminology.hl7.org/CodeSystem/object-role",
        "code" : "1",
        "display" : "Patient"
      }
    },
    {
      "what" : {
        "reference" : "Consent/ex-consent"
      },
      "type" : {
        "system" : "http://hl7.org/fhir/resource-types",
        "code" : "Consent"
      }
    }
  ]
}

```
