# Example Comprehensive Email SubmissionSet - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Comprehensive Email SubmissionSet**

## Example List: Example Comprehensive Email SubmissionSet

Profile: [MHD SubmissionSet Comprehensive](StructureDefinition-IHE.MHD.Comprehensive.SubmissionSet.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

## Example SubmissionSet for comprehensive metadata with an intendedRecipient

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2004-12-25 23:50:50-0500 | Mode: Working List | Status: Current | Code: SubmissionSet as a FHIR List |
| Subject:[John Schmidt Other, DoB: 1923-07-25](Patient-ex-patient.md) | | | |

* **Items**: [DocumentReference: status = current](DocumentReference-ex-documentreference.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "ex-compEmailPackage",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.SubmissionSet"
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
      "value" : "urn:uuid:1d136ed2-d27b-4353-8ccf-49581ab4ae66"
    },
    {
      "use" : "usual",
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.46356"
    }
  ],
  "status" : "current",
  "mode" : "working",
  "title" : "Example SubmissionSet for comprehensive metadata with an intendedRecipient",
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
  "entry" : [
    {
      "item" : {
        "reference" : "DocumentReference/ex-documentreference"
      }
    }
  ]
}

```
