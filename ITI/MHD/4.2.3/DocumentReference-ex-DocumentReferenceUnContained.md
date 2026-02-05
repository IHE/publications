# DocumentReference for Comprehensive minimally metadata - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DocumentReference for Comprehensive minimally metadata**

## Example DocumentReference: DocumentReference for Comprehensive minimally metadata

Profile: [MHD DocumentReference Comprehensive UnContained References Option](StructureDefinition-IHE.MHD.UnContained.Comprehensive.DocumentReference.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**masterIdentifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/6.3.0/NamingSystem-uri.html)/urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.46340 (use: usual, )

**identifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/6.3.0/NamingSystem-uri.html)/urn:uuid:0c287d32-01e3-4d87-9953-9fcc9404eb21 (use: official, )

**status**: Current

**type**: Addendum Document

**category**: History of Immunization note

**subject**: [John Schmidt Other, DoB: 1923-07-25](Patient-ex-patient.md)

**date**: 2020-12-31 23:50:50-0500

**securityLabel**: normal

> **content**

### Attachments

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **ContentType** | **Language** | **Url** | **Creation** |
| * | text/plain | English | [http://example.com/nowhere.txt](http://example.com/nowhere.txt) | 2020-12-31 23:50:50-0500 |

**format**:[IHE Format Code set for use with Document Sharing: urn:ihe:iti:xds-sd:text:2008](https://profiles.ihe.net/fhir/ihe.formatcode.fhir/1.4.0/CodeSystem-formatcode.html#formatcode-urn.58ihe.58iti.58xds-sd.58text.582008)(ITI XDS-SD TEXT)

### Contexts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **FacilityType** | **PracticeSetting** | **SourcePatientInfo** |
| * | Children's hospital | Adult mental illness - specialty (qualifier value) | [John Schmidt Other, DoB: 1923-07-25](Patient-ex-patient.md) |



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "ex-DocumentReferenceUnContained",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.DocumentReference"
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
    "value" : "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.46340"
  },
  "identifier" : [
    {
      "use" : "official",
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:uuid:0c287d32-01e3-4d87-9953-9fcc9404eb21"
    }
  ],
  "status" : "current",
  "type" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "55107-7"
      }
    ]
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://loinc.org",
          "code" : "11369-6"
        }
      ]
    }
  ],
  "subject" : {
    "reference" : "Patient/ex-patient"
  },
  "date" : "2020-12-31T23:50:50-05:00",
  "securityLabel" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-Confidentiality",
          "code" : "N"
        }
      ]
    }
  ],
  "content" : [
    {
      "attachment" : {
        "contentType" : "text/plain",
        "language" : "en",
        "url" : "http://example.com/nowhere.txt",
        "creation" : "2020-12-31T23:50:50-05:00"
      },
      "format" : {
        "system" : "http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode",
        "code" : "urn:ihe:iti:xds-sd:text:2008"
      }
    }
  ],
  "context" : {
    "facilityType" : {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "82242000"
        }
      ]
    },
    "practiceSetting" : {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "408467006"
        }
      ]
    },
    "sourcePatientInfo" : {
      "reference" : "Patient/ex-patient"
    }
  }
}

```
