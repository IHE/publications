# Response to fully populated Provide Document Bundle with one document with sourcePatientInfo - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Response to fully populated Provide Document Bundle with one document with sourcePatientInfo**

## Example Bundle: Response to fully populated Provide Document Bundle with one document with sourcePatientInfo



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ex-response-unContainedComprehensiveProvideDocumentBundleCompt",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.ProvideDocumentBundleResponse"
    ],
    "security" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST"
      }
    ]
  },
  "type" : "transaction-response",
  "link" : [
    {
      "relation" : "self",
      "url" : "http://example.com/fhir"
    }
  ],
  "entry" : [
    {
      "response" : {
        "status" : "201 Created",
        "location" : "List/501",
        "lastModified" : "2020-10-05T11:56:15.094+00:00"
      }
    },
    {
      "response" : {
        "status" : "201 Created",
        "location" : "DocumentReference/501",
        "lastModified" : "2020-10-05T11:56:15.096+00:00"
      }
    },
    {
      "response" : {
        "status" : "201 Created",
        "location" : "Binary/501",
        "lastModified" : "2020-10-05T11:56:15.097+00:00"
      }
    }
  ]
}

```
