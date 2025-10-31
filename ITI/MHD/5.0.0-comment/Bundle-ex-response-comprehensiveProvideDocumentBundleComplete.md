# Response to fully populated Provide Document Bundle with one document with sourcePatientInfo - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Response to fully populated Provide Document Bundle with one document with sourcePatientInfo**

## Example Bundle: Response to fully populated Provide Document Bundle with one document with sourcePatientInfo

Profile: [MHD Provide Document Bundle Response](StructureDefinition-IHE.MHD.ProvideDocumentBundleResponse.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

Bundle ex-response-comprehensiveProvideDocumentBundleComplete of type transaction-response

-------

Entry 1

Response:

```
201 Created
Location = List/501
LastModified = 2020-10-05T11:56:15.094+00:00

```

-------

Entry 2

Response:

```
201 Created
Location = List/502
LastModified = 2020-10-05T11:56:15.095+00:00

```

-------

Entry 3

Response:

```
201 Created
Location = DocumentReference/501
LastModified = 2020-10-05T11:56:15.096+00:00

```

-------

Entry 4

Response:

```
201 Created
Location = Binary/501
LastModified = 2020-10-05T11:56:15.097+00:00

```



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ex-response-comprehensiveProvideDocumentBundleComplete",
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
        "location" : "List/502",
        "lastModified" : "2020-10-05T11:56:15.095+00:00"
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
