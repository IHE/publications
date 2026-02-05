# Example Comprehensive Folder - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Comprehensive Folder**

## Example List: Example Comprehensive Folder

Profile: [MHD Folder Comprehensive](StructureDefinition-IHE.MHD.Comprehensive.Folder.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

## Example Folder with comprehensive metadata

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2004-12-25 23:50:50-0500 | Mode: Working List | Status: Current | Code: Folder as a FHIR List |
| Subject:[John Schmidt Other, DoB: 1923-07-25](Patient-ex-patient.md) | | | |

* **Items**: [DocumentReference: status = current](DocumentReference-ex-documentreference.md)
* **Items**: [DocumentReference: status = current](DocumentReference-ex-documentreference2.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "ex-compFolder",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.Folder"
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
      "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-designationType",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "284548004"
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "use" : "official",
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:uuid:0a468477-5dd1-4a81-bddf-8d5ee9b0cac3"
    },
    {
      "use" : "usual",
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.46341"
    }
  ],
  "status" : "current",
  "mode" : "working",
  "title" : "Example Folder with comprehensive metadata",
  "code" : {
    "coding" : [
      {
        "system" : "https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes",
        "code" : "folder"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ex-patient"
  },
  "date" : "2004-12-25T23:50:50-05:00",
  "entry" : [
    {
      "item" : {
        "reference" : "DocumentReference/ex-documentreference"
      }
    },
    {
      "item" : {
        "reference" : "DocumentReference/ex-documentreference2"
      }
    }
  ]
}

```
