# Example $match Input Parameters Where Only Patient Is Specified - Patient Demographics Query for Mobile (PDQm) v3.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example $match Input Parameters Where Only Patient Is Specified**

## Example Parameters: Example $match Input Parameters Where Only Patient Is Specified

Profile: [PDQm Match Input Parameters Profile](StructureDefinition-IHE.PDQm.MatchParametersIn.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

## Parameters



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "ex-match-input-patient-only",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.MatchParametersIn"
    ],
    "security" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST"
      }
    ]
  },
  "parameter" : [
    {
      "name" : "resource",
      "resource" : {
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
        "text" : {
          "status" : "empty",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">This Patient Resource contains a set of discrete demographics to serve as input to the $match operation.</div>"
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
    }
  ]
}

```
