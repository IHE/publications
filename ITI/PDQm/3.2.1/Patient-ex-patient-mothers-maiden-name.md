# Example PDQm Patient with Mothers Maiden Name Extension - Patient Demographics Query for Mobile (PDQm) v3.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example PDQm Patient with Mothers Maiden Name Extension**

## Example Patient: Example PDQm Patient with Mothers Maiden Name Extension

Profile: [PDQm Patient Profile](StructureDefinition-IHE.PDQm.Patient.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

John Schmit Male, DoB: 1932-07-25 ( http://example.org/exampleSystem#90210)

-------

| | |
| :--- | :--- |
| Contact Detail | WI USA |
| [Patient Mother's Maiden Name](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-patient-mothersMaidenName.html) | Doe |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ex-patient-mothers-maiden-name",
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
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName",
      "valueString" : "Doe"
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/exampleSystem",
      "value" : "90210"
    }
  ],
  "name" : [
    {
      "use" : "usual",
      "text" : "John Schmit",
      "family" : "Schmit",
      "given" : ["John"]
    }
  ],
  "gender" : "male",
  "birthDate" : "1932-07-25",
  "address" : [
    {
      "state" : "WI",
      "country" : "USA"
    }
  ]
}

```
