# Example UnContained Comprehensive Full SubmissionSet - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example UnContained Comprehensive Full SubmissionSet**

## Example List: Example UnContained Comprehensive Full SubmissionSet

Profile: [MHD SubmissionSet Comprehensive UnContained](StructureDefinition-IHE.MHD.UnContained.Comprehensive.SubmissionSet.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

## Example SubmissionSet for comprehensive metadata

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2004-12-25 23:50:50-0500 | Mode: Working List | Status: Current | Code: SubmissionSet as a FHIR List |
| Subject:[John Schmidt Other, DoB: 1923-07-25](Patient-ex-patient.md)Source: | | | |

* **Items**: [DocumentReference: status = current](DocumentReference-ex-documentreference.md)
* **Items**: [List for 'Unspecified List Type' for 'Unspecified Subject'](List-ex-list.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "ex-compSubmissionSetFullUnContained",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.SubmissionSet"
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
      "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-designationType",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "225728007"
          }
        ]
      }
    },
    {
      "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-sourceId",
      "valueIdentifier" : {
        "value" : "urn:oid:1.2.3.4"
      }
    },
    {
      "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-intendedRecipient",
      "valueReference" : {
        "reference" : "Practitioner/ex-practitioner"
      }
    }
  ],
  "identifier" : [
    {
      "use" : "official",
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:uuid:479f69ae-4bb1-4cdb-97bd-80e2c9b85d01"
    },
    {
      "use" : "usual",
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.46357"
    }
  ],
  "status" : "current",
  "mode" : "working",
  "title" : "Example SubmissionSet for comprehensive metadata",
  "code" : {
    "coding" : [
      {
        "system" : "https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes",
        "code" : "submissionset"
      }
    ]
  },
  "subject" : [
    {
      "reference" : "Patient/ex-patient"
    }
  ],
  "date" : "2004-12-25T23:50:50-05:00",
  "source" : {
    "reference" : "Practitioner/ex-practitioner"
  },
  "entry" : [
    {
      "item" : {
        "reference" : "DocumentReference/ex-documentreference"
      }
    },
    {
      "item" : {
        "reference" : "List/ex-list"
      }
    }
  ]
}

```
