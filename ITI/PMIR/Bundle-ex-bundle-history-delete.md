# PMIR History Bundle for delete - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PMIR History Bundle for delete**

## Example Bundle: PMIR History Bundle for delete

Profile: [IHE Patient Master Identity Registry Bundle Message](StructureDefinition-IHE.PMIR.Bundle.History.md)

Bundle ex-bundle-history-delete of type history

-------

Entry 1 - fullUrl = https://example.org/FHIR/Patient/ex-patient-delete

Request:

```
DELETE Patient/ex-patient-delete

```

Response:

```
202

```



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ex-bundle-history-delete",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle.History"
    ]
  },
  "type" : "history",
  "entry" : [
    {
      "fullUrl" : "https://example.org/FHIR/Patient/ex-patient-delete",
      "request" : {
        "method" : "DELETE",
        "url" : "Patient/ex-patient-delete"
      },
      "response" : {
        "status" : "202"
      }
    }
  ]
}

```
