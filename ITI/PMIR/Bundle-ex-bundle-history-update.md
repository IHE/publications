# PMIR History Bundle for update - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PMIR History Bundle for update**

## Example Bundle: PMIR History Bundle for update

Profile: [IHE Patient Master Identity Registry Bundle Message](StructureDefinition-IHE.PMIR.Bundle.History.md)

Bundle ex-bundle-history-update of type history

-------

Entry 1 - fullUrl = http://example.com/fhir/Patient/ex-patient-update

Resource Patient:

> Example PMIR Patient for updating

Request:

```
PUT Patient/ex-patient-update

```

Response:

```
200
Location = Patient/ex-patient-update/_history/2

```



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ex-bundle-history-update",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle.History"
    ]
  },
  "type" : "history",
  "entry" : [
    {
      "fullUrl" : "http://example.com/fhir/Patient/ex-patient-update",
      "resource" : {
        "resourceType" : "Patient",
        "id" : "ex-patient-update",
        "text" : {
          "status" : "additional",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_ex-patient-update\"> </a>Example PMIR Patient for updating</div>"
        },
        "active" : true,
        "name" : [
          {
            "use" : "official",
            "family" : "Riegel",
            "given" : ["David", "A."]
          }
        ],
        "telecom" : [
          {
            "system" : "phone",
            "value" : "+1-812-863-3613",
            "use" : "work"
          },
          {
            "system" : "email",
            "value" : "DavidARiegel@jourrapide.com",
            "use" : "work"
          }
        ],
        "gender" : "male",
        "birthDate" : "1985-07-12",
        "address" : [
          {
            "use" : "home",
            "type" : "both",
            "text" : "4392 Stratford Park\nOwensburg, IN 47453",
            "line" : ["4392 Stratford Park"],
            "city" : "Owensburg",
            "state" : "IN",
            "postalCode" : "47453",
            "country" : "US"
          }
        ]
      },
      "request" : {
        "method" : "PUT",
        "url" : "Patient/ex-patient-update"
      },
      "response" : {
        "status" : "200",
        "location" : "Patient/ex-patient-update/_history/2"
      }
    }
  ]
}

```
