# Example $match Output Bundle - No Patients Found - Patient Demographics Query for Mobile (PDQm) v3.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example $match Output Bundle - No Patients Found**

## Example Bundle: Example $match Output Bundle - No Patients Found

Profile: [PDQm Match Output Bundle Profile](StructureDefinition-IHE.PDQm.MatchParametersOut.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

Bundle ex-match-output-empty of type searchset



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ex-match-output-empty",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.MatchParametersOut"
    ],
    "security" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST"
      }
    ]
  },
  "type" : "searchset",
  "link" : [
    {
      "relation" : "self",
      "url" : "http://example.com/fhir/Bundle-ex-match-output-empty.html"
    }
  ]
}

```
