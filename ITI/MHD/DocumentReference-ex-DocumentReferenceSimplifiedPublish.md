# DocumentReference for Simplified Publish with an encounter - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DocumentReference for Simplified Publish with an encounter**

## Example DocumentReference: DocumentReference for Simplified Publish with an encounter

Profile: [MHD DocumentReference for Simplified Publish](StructureDefinition-IHE.MHD.SimplifiedPublish.DocumentReference.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**masterIdentifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/6.3.0/NamingSystem-uri.html)/urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.60220.62012

**status**: Current

**subject**: [John Schmidt Other, DoB: 1923-07-25](Patient-ex-patient.md)

**custodian**: [Organization nowhere](Organization-ex-organization.md)

> **content**

### Attachments

| | | |
| :--- | :--- | :--- |
| - | **ContentType** | **Data** |
| * | text/plain | `SGVsbG8gV29ybGQ=` |


### Contexts

| | |
| :--- | :--- |
| - | **Encounter** |
| * | [Encounter: status = in-progress; class = ambulatory (ActCode#AMB)](Encounter-ex-encounter.md) |



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "ex-DocumentReferenceSimplifiedPublish",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.SimplifiedPublish.DocumentReference"
    ],
    "security" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST"
      }
    ]
  },
  "masterIdentifier" : {
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.60220.62012"
  },
  "status" : "current",
  "subject" : {
    "reference" : "Patient/ex-patient"
  },
  "custodian" : {
    "reference" : "Organization/ex-organization"
  },
  "content" : [
    {
      "attachment" : {
        "contentType" : "text/plain",
        "data" : "SGVsbG8gV29ybGQ="
      }
    }
  ],
  "context" : {
    "encounter" : [
      {
        "reference" : "Encounter/ex-encounter"
      }
    ]
  }
}

```
