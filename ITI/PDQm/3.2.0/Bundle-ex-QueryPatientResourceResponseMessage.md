# Example of a Query Patient Resource Response message - Patient Demographics Query for Mobile (PDQm) v3.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example of a Query Patient Resource Response message**

## Example Bundle: Example of a Query Patient Resource Response message

Profile: [PDQm Query Patient Resource Response message](StructureDefinition-IHE.PDQm.QueryPatientResourceResponseMessage.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

Bundle ex-QueryPatientResourceResponseMessage of type searchset

-------

Entry 1 - fullUrl = http://example.org/Patient/ex-patient

Resource Patient:

> 

Profile: [PDQm Patient Profile](StructureDefinition-IHE.PDQm.Patient.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

John Schmidt Other, DoB: 1923-07-25 ( http://example.org/exampleSystem#8675309)
-------



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ex-QueryPatientResourceResponseMessage",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.QueryPatientResourceResponseMessage"
    ],
    "security" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST"
      }
    ]
  },
  "type" : "searchset",
  "timestamp" : "2023-09-25T15:42:00Z",
  "total" : 1,
  "link" : [
    {
      "relation" : "self",
      "url" : "test.example.com/R4/fhir/Patient?family=Schmidt"
    }
  ],
  "entry" : [
    {
      "fullUrl" : "http://example.org/Patient/ex-patient",
      "resource" : {
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
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_ex-patient\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient ex-patient</b></p><a name=\"ex-patient\"> </a><a name=\"hcex-patient\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-IHE.PDQm.Patient.html\">PDQm Patient Profile</a></p><p style=\"margin-bottom: 0px\">Security Label: test health data (Details: ActReason code HTEST = 'test health data')</p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">John Schmidt Other, DoB: 1923-07-25 ( http://example.org/exampleSystem#8675309)</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\">WI USA </td></tr></table></div>"
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
    }
  ]
}

```
