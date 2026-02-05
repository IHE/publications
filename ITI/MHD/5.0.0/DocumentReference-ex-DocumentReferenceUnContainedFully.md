# DocumentReference for Comprehensive minimally filled metadata - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DocumentReference for Comprehensive minimally filled metadata**

## Example DocumentReference: DocumentReference for Comprehensive minimally filled metadata

Profile: [MHD DocumentReference Comprehensive UnContained References Option](StructureDefinition-IHE.MHD.UnContained.Comprehensive.DocumentReference.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**DocumentReference Source Patient**: [John Schmidt Other, DoB: 1923-07-25](Patient-ex-patient.md)

**Holds values from DocumentEntry.referenceIdList that are not appropriate for .context or .basedOn**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.0.1/NamingSystem-uri.html)/urn:oid:1.2.840.113556.1.8000.2554.17917.46600.21181.17878.33419.62048.57128.2759

**identifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.0.1/NamingSystem-uri.html)/urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.46340 (use: usual, ), [Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.0.1/NamingSystem-uri.html)/urn:uuid:0c287d32-01e3-4d87-9953-9fcc9404eb21 (use: official, )

**status**: Current

**type**: Addendum Document

**category**: History of Immunization note

**subject**: [John Schmidt Other, DoB: 1923-07-25](Patient-ex-patient.md)

### Events

| | |
| :--- | :--- |
| - | **Concept** |
| * | account receivable |

**facilityType**: Children's hospital

**practiceSetting**: Adult mental illness - specialty (qualifier value)

**period**: 2020-12-31 23:50:50-0500 --> 2020-12-31 23:50:50-0500

**date**: 2020-12-31 23:50:50-0500

**author**: [Practitioner: telecom = JohnMoehrke@gmail.com](Practitioner-ex-practitioner.md)

### Attesters

| | | |
| :--- | :--- | :--- |
| - | **Mode** | **Party** |
| * | Professional | [Practitioner: telecom = JohnMoehrke@gmail.com](Practitioner-ex-practitioner.md) |

### RelatesTos

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Target** |
| * | Appends | [DocumentReference: status = current](DocumentReference-ex-documentreference.md) |

**description**: 

Example of a Comprehensive DocumentReference resource. This is minimally filled for all mandatory elements.

**securityLabel**: normal

> **content**

### Attachments

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| - | **ContentType** | **Language** | **Url** | **Size** | **Hash** | **Title** | **Creation** |
| * | text/plain | English | [http://example.com/nowhere.txt](http://example.com/nowhere.txt) | 0 | `ZGEzOWEzZWU1ZTZiNGIwZDMyNTViZmVmOTU2MDE4OTBhZmQ4MDcwOQ==` | DocumentReference for Comprehensive minimally filled metadata | 2020-12-31 23:50:50-0500 |

### Profiles

| | |
| :--- | :--- |
| - | **Value[x]** |
| * | [IHE Format Code set for use with Document Sharing: urn:ihe:iti:xds-sd:text:2008](http://tx.fhir.org/r5/ValueSet/formatcode#formatcode-urn.58ihe.58iti.58xds-sd.58text.582008)(ITI XDS-SD TEXT) |




## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "ex-DocumentReferenceUnContainedFully",
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
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/documentreference-sourcepatient",
      "valueReference" : {
        "reference" : "Patient/ex-patient"
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
      "reference" : "Practitioner/ex-practitioner"
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
        "reference" : "Practitioner/ex-practitioner"
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
  "description" : "Example of a Comprehensive DocumentReference resource. This is minimally filled for all mandatory elements.",
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
        "size" : "0",
        "hash" : "ZGEzOWEzZWU1ZTZiNGIwZDMyNTViZmVmOTU2MDE4OTBhZmQ4MDcwOQ==",
        "title" : "DocumentReference for Comprehensive minimally filled metadata",
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
