# PMIR History Bundle for create - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PMIR History Bundle for create**

## Example Bundle: PMIR History Bundle for create

Profile: [IHE Patient Master Identity Registry Bundle Message](StructureDefinition-IHE.PMIR.Bundle.History.md)

Bundle ex-bundle-history-create of type history

-------

Entry 1 - fullUrl = urn:uuid:14298d90-b285-4c4c-8252-5d4e7bb5fdb6

Resource Patient:

> Example PMIR Patient for creating

Request:

```
POST Patient

```

Response:

```
201
Location = Patient/ex-patient-create1/_history/1

```

-------

Entry 2 - fullUrl = urn:uuid:95e1726c-9c3c-4de3-bebc-15daed6b6d34

Resource Patient:

> Example PMIR Patient for creating

Request:

```
POST Patient

```

Response:

```
201
Location = Patient/ex-patient-create2/_history/1

```



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ex-bundle-history-create",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle.History"
    ]
  },
  "type" : "history",
  "entry" : [
    {
      "fullUrl" : "urn:uuid:14298d90-b285-4c4c-8252-5d4e7bb5fdb6",
      "resource" : {
        "resourceType" : "Patient",
        "id" : "ex-patient-create1",
        "text" : {
          "status" : "additional",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_ex-patient-create1\"> </a>Example PMIR Patient for creating</div>"
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
            "value" : "+1-734-942-9512",
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
            "text" : "4512 Bombardier Way\nRomulus, MI 48174",
            "line" : ["4512 Bombardier Way"],
            "city" : "Romulus",
            "state" : "MI",
            "postalCode" : "48174",
            "country" : "US"
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "Patient"
      },
      "response" : {
        "status" : "201",
        "location" : "Patient/ex-patient-create1/_history/1"
      }
    },
    {
      "fullUrl" : "urn:uuid:95e1726c-9c3c-4de3-bebc-15daed6b6d34",
      "resource" : {
        "resourceType" : "Patient",
        "id" : "ex-patient-create2",
        "meta" : {
          "profile" : [
            "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Patient.Related"
          ]
        },
        "text" : {
          "status" : "additional",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_ex-patient-create2\"> </a>Example PMIR Patient for creating</div>"
        },
        "active" : true,
        "name" : [
          {
            "use" : "official",
            "family" : "Wooten",
            "given" : ["Lucille", "T."]
          }
        ],
        "telecom" : [
          {
            "system" : "phone",
            "value" : "+1-570-508-4343",
            "use" : "work"
          },
          {
            "system" : "email",
            "value" : "LucilleTWooten@teleworm.us",
            "use" : "work"
          }
        ],
        "gender" : "female",
        "birthDate" : "1971-12-14",
        "address" : [
          {
            "use" : "home",
            "type" : "both",
            "text" : "3799 High Meadow Lane\nScranton, PA 18503",
            "line" : ["3799 High Meadow Lane"],
            "city" : "Scranton",
            "state" : "PA",
            "postalCode" : "18503",
            "country" : "US"
          }
        ],
        "link" : [
          {
            "other" : {
              "reference" : "RelatedPerson/ex-related-mom"
            },
            "type" : "seealso"
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "Patient"
      },
      "response" : {
        "status" : "201",
        "location" : "Patient/ex-patient-create2/_history/1"
      }
    }
  ]
}

```
