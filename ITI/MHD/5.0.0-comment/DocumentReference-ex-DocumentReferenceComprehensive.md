# DocumentReference for Comprehensive fully filled metadata - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DocumentReference for Comprehensive fully filled metadata**

## Example DocumentReference: DocumentReference for Comprehensive fully filled metadata



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "ex-DocumentReferenceComprehensive",
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
      "resourceType" : "Practitioner",
      "id" : "in-author",
      "telecom" : [
        {
          "system" : "email",
          "value" : "JohnMoehrke@gmail.com"
        }
      ]
    },
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
    },
    {
      "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-referenceId",
      "valueIdentifier" : {
        "system" : "urn:ietf:rfc:3986",
        "value" : "urn:oid:1.2.840.113556.1.8000.2554.17917.46600.21181.17878.33419.62048.57128.2759"
      }
    }
  ],
  "identifier" : [
    {
      "use" : "usual",
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.46340"
    },
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
  "event" : [
    {
      "concept" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
            "code" : "ACCTRECEIVABLE"
          }
        ]
      }
    }
  ],
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
  "period" : {
    "start" : "2020-12-31T23:50:50-05:00",
    "end" : "2020-12-31T23:50:50-05:00"
  },
  "date" : "2020-12-31T23:50:50-05:00",
  "author" : [
    {
      "reference" : "#in-author"
    }
  ],
  "attester" : [
    {
      "mode" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/composition-attestation-mode",
            "code" : "professional"
          }
        ]
      },
      "party" : {
        "reference" : "#in-author"
      }
    }
  ],
  "relatesTo" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/document-relationship-type",
            "code" : "appends"
          }
        ]
      },
      "target" : {
        "reference" : "DocumentReference/ex-documentreference"
      }
    }
  ],
  "description" : "Example of a Comprehensive DocumentReference resource. This is fully filled for all mandatory elements and all optional elements.",
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
        "size" : "190",
        "hash" : "OGEzOGYyNjMzMDA2ZmQ1MzUxNDljNDRhM2E3M2YzMTI0MzdiMzQ3OA==",
        "title" : "DocumentReference for Comprehensive fully filled metadata",
        "creation" : "2020-12-31T23:50:50-05:00"
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
