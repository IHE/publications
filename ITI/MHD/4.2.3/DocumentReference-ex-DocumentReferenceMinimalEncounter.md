# DocumentReference for Minimal metadata with an encounter - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DocumentReference for Minimal metadata with an encounter**

## Example DocumentReference: DocumentReference for Minimal metadata with an encounter

Profile: [MHD DocumentReference Minimal](StructureDefinition-IHE.MHD.Minimal.DocumentReference.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**masterIdentifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/6.3.0/NamingSystem-uri.html)/urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.50220.62012 (use: usual, )

**identifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/6.3.0/NamingSystem-uri.html)/urn:uuid:7d5bb8ac-68ee-4926-85e7-b8aac8e1f09d (use: official, )

**status**: Current

**custodian**: [Organization nowhere](Organization-ex-organization.md)

> **content**

### Attachments

| | | |
| :--- | :--- | :--- |
| - | **ContentType** | **Url** |
| * | text/plain | [http://example.com/nowhere.txt](http://example.com/nowhere.txt) |


### Contexts

| | |
| :--- | :--- |
| - | **Encounter** |
| * | [Encounter: status = in-progress; class = ambulatory (ActCode#AMB)](Encounter-ex-encounter.md) |



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
  "masterIdentifier" : {
    "use" : "usual",
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.50220.62012"
  },
  "identifier" : [
    {
      "use" : "official",
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:uuid:7d5bb8ac-68ee-4926-85e7-b8aac8e1f09d"
    }
  ],
  "status" : "current",
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
