# Example $match Output Bundle - Error - Patient Demographics Query for Mobile (PDQm) v3.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example $match Output Bundle - Error**

## Example Bundle: Example $match Output Bundle - Error

Profile: [PDQm Match Output Bundle Profile](StructureDefinition-IHE.PDQm.MatchParametersOut.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

Bundle ex-match-output-error of type searchset

-------

Entry 1 - fullUrl = https://profiles.ihe.net/ITI/PDQm/OperationOutcome-ex-match-failure.html

Search:Mode = outcome

Resource OperationOutcome:

> 



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ex-match-output-error",
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
  ],
  "entry" : [
    {
      "fullUrl" : "https://profiles.ihe.net/ITI/PDQm/OperationOutcome-ex-match-failure.html",
      "resource" : {
        "resourceType" : "OperationOutcome",
        "id" : "ex-match-failure",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"OperationOutcome_ex-match-failure\"> </a><p class=\"res-header-id\"><b>Generated Narrative: OperationOutcome ex-match-failure</b></p><a name=\"ex-match-failure\"> </a><a name=\"hcex-match-failure\"> </a><h3>Issues</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Severity</b></td><td><b>Code</b></td><td><b>Details</b></td></tr><tr><td style=\"display: none\">*</td><td>Error</td><td>Timeout</td><td><span title=\"Codes:\">The operation timed out waiting for the backend server.</span></td></tr></table></div>"
        },
        "issue" : [
          {
            "severity" : "error",
            "code" : "timeout",
            "details" : {
              "text" : "The operation timed out waiting for the backend server."
            }
          }
        ]
      },
      "search" : {
        "mode" : "outcome"
      }
    }
  ]
}

```
