# DocumentReference for Minimal metadata with an encounter - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DocumentReference for Minimal metadata with an encounter**

## Example DocumentReference: DocumentReference for Minimal metadata with an encounter

Profile: [MHD DocumentReference Minimal](StructureDefinition-IHE.MHD.Minimal.DocumentReference.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**identifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.0.1/NamingSystem-uri.html)/urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.50220.62012 (use: usual, ), [Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.0.1/NamingSystem-uri.html)/urn:uuid:7d5bb8ac-68ee-4926-85e7-b8aac8e1f09d (use: official, )

**status**: Current

**context**: [Encounter: status = in-progress; class = ambulatory](Encounter-ex-encounter.md)

**custodian**: [Organization nowhere](Organization-ex-organization.md)

> **content**

### Attachments

| | | |
| :--- | :--- | :--- |
| - | **ContentType** | **Url** |
| * | text/plain | [http://example.com/nowhere.txt](http://example.com/nowhere.txt) |




## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "ex-DocumentReferenceMinimalEncounter",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.DocumentReference"
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
      "value" : "urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.50220.62012"
    },
    {
      "use" : "official",
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:uuid:7d5bb8ac-68ee-4926-85e7-b8aac8e1f09d"
    }
  ],
  "status" : "current",
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
        "url" : "http://example.com/nowhere.txt"
      }
    }
  ]
}

```
