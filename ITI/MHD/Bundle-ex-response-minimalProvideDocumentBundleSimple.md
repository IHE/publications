# Response to Provide Document Bundle with Minimal metadata of one document - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Response to Provide Document Bundle with Minimal metadata of one document**

## Example Bundle: Response to Provide Document Bundle with Minimal metadata of one document

Profile: [MHD Provide Document Bundle Response](StructureDefinition-IHE.MHD.ProvideDocumentBundleResponse.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

Bundle ex-response-minimalProvideDocumentBundleSimple of type transaction-response

-------

Entry 1

Response:

```
201 Created
Location = List/1
LastModified = 2020-10-02T11:56:15.094+00:00

```

-------

Entry 2

Response:

```
201 Created
Location = DocumentReference/1
LastModified = 2020-10-02T11:56:15.095+00:00

```

-------

Entry 3

Response:

```
201 Created
Location = Binary/1
LastModified = 2020-10-02T11:56:15.096+00:00

```

-------

Entry 4

Response:

```
201 Created
Location = Patient/2
LastModified = 2020-10-02T11:56:15.097+00:00

```



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ex-response-minimalProvideDocumentBundleSimple",
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
        "location" : "List/1",
        "lastModified" : "2020-10-02T11:56:15.094+00:00"
      }
    },
    {
      "response" : {
        "status" : "201 Created",
        "location" : "DocumentReference/1",
        "lastModified" : "2020-10-02T11:56:15.095+00:00"
      }
    },
    {
      "response" : {
        "status" : "201 Created",
        "location" : "Binary/1",
        "lastModified" : "2020-10-02T11:56:15.096+00:00"
      }
    },
    {
      "response" : {
        "status" : "201 Created",
        "location" : "Patient/2",
        "lastModified" : "2020-10-02T11:56:15.097+00:00"
      }
    }
  ]
}

```
