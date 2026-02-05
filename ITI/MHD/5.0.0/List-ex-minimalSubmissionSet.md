# SubmissionSet for Minimal metadata - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SubmissionSet for Minimal metadata**

## Example List: SubmissionSet for Minimal metadata

Profile: [MHD SubmissionSet Minimal](StructureDefinition-IHE.MHD.Minimal.SubmissionSet.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2004-12-25 23:50:50-0500 | Mode: Working List | Status: Current | Code: SubmissionSet as a FHIR List |
|  | | | |

* **Items**: [DocumentReference: status = current](DocumentReference-ex-documentreference.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "ex-minimalSubmissionSet",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.SubmissionSet"
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
      "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-sourceId",
      "valueIdentifier" : {
        "value" : "urn:oid:1.2.3.4"
      }
    }
  ],
  "identifier" : [
    {
      "use" : "official",
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:uuid:40b3366f-7e4b-4d02-bbac-901aaa8d7183"
    },
    {
      "use" : "usual",
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.46354"
    }
  ],
  "status" : "current",
  "mode" : "working",
  "code" : {
    "coding" : [
      {
        "system" : "https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes",
        "code" : "submissionset"
      }
    ]
  },
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
