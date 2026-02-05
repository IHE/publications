# Example Patient input for PDQm $match - Patient Demographics Query for Mobile (PDQm) v3.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Patient input for PDQm $match**

## Example Patient: Example Patient input for PDQm $match

This Patient Resource contains a set of discrete demographics to serve as input to the $match operation.



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ex-match-input-patient",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.MatchInputPatient"
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
      "family" : "Schmidt",
      "given" : ["John"]
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
