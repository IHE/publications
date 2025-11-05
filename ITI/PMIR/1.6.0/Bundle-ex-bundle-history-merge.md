# PMIR History Bundle for merge - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PMIR History Bundle for merge**

## Example Bundle: PMIR History Bundle for merge

Profile: [IHE Patient Master Identity Registry Bundle Message](StructureDefinition-IHE.PMIR.Bundle.History.md)

Bundle ex-bundle-history-merge of type history

-------

Entry 1 - fullUrl = https://profiles.ihe.net/ITI/PMIR/Patient/ex-patient-merge

Resource Patient:

> Example PMIR Patient for merging

Request:

```
PUT Patient/ex-patient-merge

```

Response:

```
200

```



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ex-bundle-history-merge",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle.History"
    ]
  },
  "type" : "history",
  "entry" : [
    {
      "fullUrl" : "https://profiles.ihe.net/ITI/PMIR/Patient/ex-patient-merge",
      "resource" : {
        "resourceType" : "Patient",
        "id" : "ex-patient-merge",
        "meta" : {
          "profile" : [
            "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Patient.Merge"
          ]
        },
        "text" : {
          "status" : "additional",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_ex-patient-merge\"> </a>Example PMIR Patient for merging</div>"
        },
        "active" : false,
        "link" : [
          {
            "other" : {
              "reference" : "Patient/ex-patient-merged"
            },
            "type" : "replaced-by"
          }
        ]
      },
      "request" : {
        "method" : "PUT",
        "url" : "Patient/ex-patient-merge"
      },
      "response" : {
        "status" : "200"
      }
    }
  ]
}

```
