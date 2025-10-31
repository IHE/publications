# DocumentReference for Simplified Publish with an encounter - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DocumentReference for Simplified Publish with an encounter**

## Example DocumentReference: DocumentReference for Simplified Publish with an encounter

Profile: [MHD DocumentReference for Simplified Publish](StructureDefinition-IHE.MHD.SimplifiedPublish.DocumentReference.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**identifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/6.5.0/NamingSystem-uri.html)/urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.60220.62012 (use: usual, )

**status**: Current

**subject**: [John Schmidt Other, DoB: 1923-07-25](Patient-ex-patient.md)

**context**: [Encounter: status = in-progress; class = ambulatory](Encounter-ex-encounter.md)

**custodian**: [Organization nowhere](Organization-ex-organization.md)

> **content**

### Attachments

| | | |
| :--- | :--- | :--- |
| - | **ContentType** | **Data** |
| * | text/plain | `SGVsbG8gV29ybGQ=` |




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
  "identifier" : [
    {
      "use" : "usual",
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.60220.62012"
    }
  ],
  "status" : "current",
  "subject" : {
    "reference" : "Patient/ex-patient"
  },
  "context" : [
    {
      "reference" : "Encounter/ex-encounter"
    }
  ],
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
  ]
}

```
