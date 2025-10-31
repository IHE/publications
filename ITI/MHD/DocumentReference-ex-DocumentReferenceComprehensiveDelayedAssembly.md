# DocumentReference for Comprehensive fully filled metadata for a Deferred Creation - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DocumentReference for Comprehensive fully filled metadata for a Deferred Creation**

## Example DocumentReference: DocumentReference for Comprehensive fully filled metadata for a Deferred Creation



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "ex-DocumentReferenceComprehensiveDelayedAssembly",
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
  "masterIdentifier" : {
    "use" : "usual",
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.47340"
  },
  "identifier" : [
    {
      "use" : "official",
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:uuid:0c287d32-01e3-4d87-9953-9fcc9407eb21"
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
  "author" : [
    {
      "reference" : "#in-author"
    }
  ],
  "authenticator" : {
    "reference" : "#in-author"
  },
  "relatesTo" : [
    {
      "code" : "appends",
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
        "size" : 0,
        "hash" : "ZGEzOWEzZWU1ZTZiNGIwZDMyNTViZmVmOTU2MDE4OTBhZmQ4MDcwOQ==",
        "title" : "DocumentReference for Comprehensive fully filled metadata",
        "creation" : "2020-12-31T23:50:50-05:00"
      },
      "format" : {
        "system" : "http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode",
        "code" : "urn:ihe:iti:xds-sd:text:2008"
      }
    }
  ],
  "context" : {
    "event" : [
      {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
            "code" : "ACCTRECEIVABLE"
          }
        ]
      }
    ],
    "period" : {
      "start" : "2020-12-31T23:50:50-05:00",
      "end" : "2020-12-31T23:50:50-05:00"
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
    "sourcePatientInfo" : {
      "reference" : "#in-patient"
    },
    "related" : [
      {
        "identifier" : {
          "system" : "urn:ietf:rfc:3986",
          "value" : "urn:oid:1.2.840.113556.1.8000.2554.17917.46600.21181.17878.33419.62048.57128.2759"
        }
      }
    ]
  }
}

```
