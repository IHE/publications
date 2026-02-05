# DocumentReference for Comprehensive fully filled metadata for a On-Demand document - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DocumentReference for Comprehensive fully filled metadata for a On-Demand document**

## Example DocumentReference: DocumentReference for Comprehensive fully filled metadata for a On-Demand document



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "ex-DocumentReferenceComprehensiveOnDemand",
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
  "masterIdentifier" : {
    "use" : "usual",
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.57340"
  },
  "identifier" : [
    {
      "use" : "official",
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:uuid:0c287d32-01e3-4d87-9953-9fc59407eb21"
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
  "date" : "2020-01-31T23:50:50-05:00",
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
      "reference" : "#in-patient"
    }
  }
}

```
