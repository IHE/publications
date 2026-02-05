# Example Minimal Folder - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Minimal Folder**

## Example List: Example Minimal Folder

Profile: [MHD Folder Minimal](StructureDefinition-IHE.MHD.Minimal.Folder.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

| | | |
| :--- | :--- | :--- |
| Mode: Working List | Status: Current | Code: Folder as a FHIR List |
|  | | |

* **Items**: [DocumentReference: status = current](DocumentReference-ex-documentreference.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "ex-minimalFolder",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.Folder"
    ],
    "security" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST"
      }
    ]
  },
  "identifier" : [
    {
      "use" : "official",
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:uuid:5e2d58a3-2286-4a0e-8637-86f51be2d184"
    },
    {
      "use" : "usual",
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.46391"
    }
  ],
  "status" : "current",
  "mode" : "working",
  "code" : {
    "coding" : [
      {
        "system" : "https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes",
        "code" : "folder"
      }
    ]
  },
  "entry" : [
    {
      "item" : {
        "reference" : "DocumentReference/ex-documentreference"
      }
    }
  ]
}

```
