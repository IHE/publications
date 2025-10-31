# Dummy Patient example - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dummy Patient example**

## Example Patient: Dummy Patient example

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

John Schmidt Other, DoB: 1923-07-25

-------

| | |
| :--- | :--- |
| Contact Detail | WI USA |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ex-patient",
  "meta" : {
    "security" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST"
      }
    ]
  },
  "name" : [
    {
      "use" : "usual",
      "family" : "Schmidt",
      "given" : ["John"]
    },
    {
      "use" : "old",
      "family" : "Schnidt",
      "given" : ["John", "Jacob", "Jingle", "Heimer"],
      "period" : {
        "end" : "1960"
      }
    },
    {
      "use" : "official",
      "family" : "Schmidt",
      "given" : ["John", "Jacob", "Jingleheimer"],
      "period" : {
        "start" : "1960-01-01"
      }
    },
    {
      "use" : "nickname",
      "family" : "Schmidt",
      "given" : ["Jack"]
    }
  ],
  "gender" : "other",
  "birthDate" : "1923-07-25",
  "address" : [
    {
      "state" : "WI",
      "country" : "USA"
    }
  ]
}

```
