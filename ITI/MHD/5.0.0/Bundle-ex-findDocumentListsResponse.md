# Example of a Find Document Lists Response Message with a folder - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example of a Find Document Lists Response Message with a folder**

## Example Bundle: Example of a Find Document Lists Response Message with a folder



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ex-findDocumentListsResponse",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.FindDocumentListsResponseMessage"
    ],
    "security" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST"
      }
    ]
  },
  "type" : "searchset",
  "timestamp" : "2021-04-16T11:32:24Z",
  "total" : 1,
  "link" : [
    {
      "relation" : "self",
      "url" : "fhir.example.com/fhir/List?patient=9876&code=folder&status=current&designationType=http://snomed.info/sct|225728007"
    }
  ],
  "entry" : [
    {
      "fullUrl" : "http://example.org/List/in-minimalFolder",
      "resource" : {
        "resourceType" : "List",
        "id" : "in-minimalFolder",
        "meta" : {
          "profile" : [
            "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.Folder"
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"List_in-minimalFolder\"> </a><p class=\"res-header-id\"><b>Generated Narrative: List in-minimalFolder</b></p><a name=\"in-minimalFolder\"> </a><a name=\"hcin-minimalFolder\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-IHE.MHD.Minimal.Folder.html\">MHD Folder Minimal</a></p><p style=\"margin-bottom: 0px\">Security Label: test health data (Details: ActReason code HTEST = 'test health data')</p></div><table class=\"clstu\"><tr><td>Mode: Working List </td><td>Status: Current </td><td>Code: Folder as a FHIR List </td></tr><tr><td/></tr></table><table class=\"grid\"><tr style=\"backgound-color: #eeeeee\"><td><b>Items</b></td></tr><tr><td><a href=\"DocumentReference-ex-documentreference.html\">DocumentReference: status = current</a></td></tr></table></div>"
        },
        "identifier" : [
          {
            "use" : "official",
            "system" : "urn:ietf:rfc:3986",
            "value" : "urn:uuid:29bef0e7-bb06-46b8-8241-ca2a5f8f7f2c"
          },
          {
            "use" : "usual",
            "system" : "urn:ietf:rfc:3986",
            "value" : "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.46342"
          }
        ],
        "status" : "current",
        "mode" : "working",
        "code" : {
          "coding" : [
            {
              "system" : "https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes",
              "code" : "folder"
            }
          ]
        },
        "entry" : [
          {
            "item" : {
              "reference" : "DocumentReference/ex-documentreference"
            }
          }
        ]
      }
    }
  ]
}

```
