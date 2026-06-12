# Audit Example of De-Identification at source - De-Identification Handbook v2.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Example of De-Identification at source**

## Example AuditEvent: Audit Example of De-Identification at source

Profile: [Audit Event for De-Identification at Source](StructureDefinition-IHE.BasicAudit.DeIdentification.Source.md)

Security Label: [test health data (Details: v3 Code System ActReason code HTEST = 'test health data')](http://hl7.org/fhir/R4/v3/ActReason/cs.html)

**type**: [DICOM: 110106](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-110106) (Export)

**subtype**: [ISO 21089-2017 Health Record Lifecycle Events: deidentify](http://hl7.org/fhir/R4/codesystem-iso-21089-lifecycle.html#iso-21089-lifecycle-deidentify) (De-Identify (Anononymize) Record Lifecycle Event), [FHIR Restful Interactions: read](http://hl7.org/fhir/R4/codesystem-restful-interaction.html#restful-interaction-read) (read)

**action**: Read/View/Print

**recorded**: 2020-04-29 09:49:00+0000

**outcome**: Success

**purposeOfEvent**: healthcare research

> **agent****type**: Source Role ID**who**: model number ABC, serial number 1234**requestor**: false

### Networks

| | | |
| :--- | :--- | :--- |
| - | **Address** | **Type** |
| * | myDevice.example.com | Machine Name |


> **agent****type**: Destination Role ID**who**: myMachine.example.org**requestor**: false

### Networks

| | | |
| :--- | :--- | :--- |
| - | **Address** | **Type** |
| * | http://server.example.com/fhir | URI |


> **agent****type**: Patient Advocate**who**: [http://example.org/fhir/Patient/ex-patient](http://example.org/fhir/Patient/ex-patient)**requestor**: true

### Sources

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Site** | **Observer** | **Type** |
| * | mobile app foo-bar | model number ABC, serial number 1234 | [Audit Event Source Type: 1](http://hl7.org/fhir/R4/codesystem-audit-source-type.html#audit-source-type-1)(User Device) |

> **entity****what**: [http://example.org/fhir/Patient/ex-patient](http://example.org/fhir/Patient/ex-patient)**type**: [Audit event entity type: 1](http://hl7.org/fhir/R4/codesystem-audit-entity-type.html#audit-entity-type-1) (Person)**role**: [AuditEventEntityRole: 1](http://hl7.org/fhir/R4/codesystem-object-role.html#object-role-1) (Patient)

> **entity****what**: [http://example.org/fhir/Consent/ex-consent](http://example.org/fhir/Consent/ex-consent)**type**: [ResourceType: Consent](http://hl7.org/fhir/R4/codesystem-resource-types.html#resource-types-Consent) (Consent)

> **entity****what**: De-Identification Algorithm Identifier for FooBar De-Identification Algorithm (Identifier: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/6.5.0/NamingSystem-uri.html)/urn:uuid:bed39a2d-3212-4f24-a5c8-e4c168968057)**type**: [Entity Type for De-Identification: DeId-algorithm](CodeSystem-DeIdentificationEntityType.md#DeIdentificationEntityType-DeId-algorithm) (De-Identification Algorithm)



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "ex-auditDeIdentification-source",
  "meta" : {
    "profile" : ["https://profiles.ihe.net/ITI/DeId/StructureDefinition/IHE.BasicAudit.DeIdentification.Source"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST"
    }]
  },
  "type" : {
    "system" : "http://dicom.nema.org/resources/ontology/DCM",
    "code" : "110106",
    "display" : "Export"
  },
  "subtype" : [{
    "system" : "http://terminology.hl7.org/CodeSystem/iso-21089-lifecycle",
    "code" : "deidentify",
    "display" : "De-Identify (Anononymize) Record Lifecycle Event"
  },
  {
    "system" : "http://hl7.org/fhir/restful-interaction",
    "code" : "read",
    "display" : "read"
  }],
  "action" : "R",
  "recorded" : "2020-04-29T09:49:00.000Z",
  "outcome" : "0",
  "purposeOfEvent" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HRESCH",
      "display" : "healthcare research"
    }]
  }],
  "agent" : [{
    "type" : {
      "coding" : [{
        "system" : "http://dicom.nema.org/resources/ontology/DCM",
        "code" : "110153",
        "display" : "Source Role ID"
      }]
    },
    "who" : {
      "display" : "model number ABC, serial number 1234"
    },
    "requestor" : false,
    "network" : {
      "address" : "myDevice.example.com",
      "type" : "1"
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://dicom.nema.org/resources/ontology/DCM",
        "code" : "110152",
        "display" : "Destination Role ID"
      }]
    },
    "who" : {
      "display" : "myMachine.example.org"
    },
    "requestor" : false,
    "network" : {
      "address" : "http://server.example.com/fhir",
      "type" : "5"
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "429577009",
        "display" : "Patient Advocate"
      }]
    },
    "who" : {
      "reference" : "http://example.org/fhir/Patient/ex-patient"
    },
    "requestor" : true
  }],
  "source" : {
    "site" : "mobile app foo-bar",
    "observer" : {
      "display" : "model number ABC, serial number 1234"
    },
    "type" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/security-source-type",
      "code" : "1",
      "display" : "User Device"
    }]
  },
  "entity" : [{
    "what" : {
      "reference" : "http://example.org/fhir/Patient/ex-patient"
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
      "reference" : "http://example.org/fhir/Consent/ex-consent"
    },
    "type" : {
      "system" : "http://hl7.org/fhir/resource-types",
      "code" : "Consent"
    }
  },
  {
    "what" : {
      "identifier" : {
        "system" : "urn:ietf:rfc:3986",
        "value" : "urn:uuid:bed39a2d-3212-4f24-a5c8-e4c168968057"
      },
      "display" : "De-Identification Algorithm Identifier for FooBar De-Identification Algorithm"
    },
    "type" : {
      "system" : "https://profiles.ihe.net/ITI/DeId/CodeSystem/DeIdentificationEntityType",
      "code" : "DeId-algorithm"
    }
  }]
}

```
