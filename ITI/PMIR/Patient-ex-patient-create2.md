# PMIR example Patient for create - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PMIR example Patient for create**

## Example Patient: PMIR example Patient for create

Example PMIR Patient for creating



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ex-patient-create2",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Patient.Related"
    ]
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
}

```
