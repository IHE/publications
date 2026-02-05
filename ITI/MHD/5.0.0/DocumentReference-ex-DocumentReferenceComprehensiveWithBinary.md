# DocumentReference for Comprehensive fully filled metadata for a document in a Binary - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DocumentReference for Comprehensive fully filled metadata for a document in a Binary**

## Example DocumentReference: DocumentReference for Comprehensive fully filled metadata for a document in a Binary



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "ex-DocumentReferenceComprehensiveWithBinary",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.DocumentReference"
    ],
    "security" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST"
      }
    ]
  },
  "contained" : [
    {
      "resourceType" : "Patient",
      "id" : "in-patient"
    }
  ],
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/documentreference-sourcepatient",
      "valueReference" : {
        "reference" : "#in-patient"
      }
    }
  ],
  "identifier" : [
    {
      "use" : "usual",
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41381.57340"
    },
    {
      "use" : "official",
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:uuid:0c287d32-01e3-4d87-9953-91c59407eb21"
    }
  ],
  "status" : "current",
  "type" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "60591-5"
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
  "date" : "2020-02-01T23:50:50-05:00",
  "securityLabel" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-Confidentiality",
          "code" : "R"
        }
      ]
    }
  ],
  "content" : [
    {
      "attachment" : {
        "contentType" : "text/plain",
        "language" : "en",
        "url" : "Binary/ex-b-binary",
        "size" : "11",
        "hash" : "MGE0ZDU1YThkNzc4ZTUwMjJmYWI3MDE5NzdjNWQ4NDBiYmM0ODZkMA==",
        "title" : "Hello World",
        "creation" : "2020-02-01T23:50:50-05:00"
      },
      "profile" : [
        {
          "valueCoding" : {
            "system" : "http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode",
            "code" : "urn:ihe:iti:xds-sd:text:2008"
          }
        }
      ]
    }
  ]
}

```
