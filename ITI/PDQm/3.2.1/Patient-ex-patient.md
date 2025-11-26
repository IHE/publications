# Example PDQm Patient - Patient Demographics Query for Mobile (PDQm) v3.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example PDQm Patient**

## Example Patient: Example PDQm Patient

Profile: [PDQm Patient Profile](StructureDefinition-IHE.PDQm.Patient.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

John Schmidt Other, DoB: 1923-07-25 ( http://example.org/exampleSystem#8675309)

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
    "profile" : [
      "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Patient"
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
      "system" : "http://example.org/exampleSystem",
      "value" : "8675309"
    }
  ],
  "name" : [
    {
      "use" : "usual",
      "text" : "John Schmidt",
      "family" : "Schmidt",
      "given" : ["John"]
    },
    {
      "use" : "old",
      "text" : "John Jacob Jingle Heimer Schnidt",
      "family" : "Schnidt",
      "given" : ["John", "Jacob", "Jingle", "Heimer"],
      "period" : {
        "end" : "1960"
      }
    },
    {
      "use" : "official",
      "text" : "John Jacob Jingleheimer Schmidt",
      "family" : "Schmidt",
      "given" : ["John", "Jacob", "Jingleheimer"],
      "period" : {
        "start" : "1960-01-01"
      }
    },
    {
      "use" : "nickname",
      "text" : "Jack Schmidt",
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
