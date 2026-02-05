# IHE Patient Master Identity Registry Message Bundle Delete Example - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE Patient Master Identity Registry Message Bundle Delete Example**

## Example Bundle: IHE Patient Master Identity Registry Message Bundle Delete Example

Profile: [IHE Patient Master Identity Registry Message Bundle](StructureDefinition-IHE.PMIR.Bundle.md)

Bundle ex-PMIRBundleDelete of type message

-------

Entry 1 - fullUrl = https://profiles.ihe.net/ITI/PMIR/MessageHeader/ex-messageheader-delete

Resource MessageHeader:

> 

Profile: [IHE Patient Master Identity Registry MessageHeader](StructureDefinition-IHE.PMIR.MessageHeader.md)

**event**:`urn:ihe:iti:pmir:2019:patient-feed`
> **destination**

> **source**
**focus**:[Bundle: type = history](Bundle-ex-bundle-history-delete.md)

-------

Entry 2 - fullUrl = https://profiles.ihe.net/ITI/PMIR/Bundle/ex-bundle-history-delete

Resource Bundle:

> 

Profile: [IHE Patient Master Identity Registry Bundle Message](StructureDefinition-IHE.PMIR.Bundle.History.md)

Bundle ex-bundle-history-delete of type history
-------
Entry 1 - fullUrl = https://example.org/FHIR/Patient/ex-patient-deleteRequest:```DELETE Patient/ex-patient-delete```Response:```202```



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ex-PMIRBundleDelete",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle"
    ]
  },
  "type" : "message",
  "entry" : [
    {
      "fullUrl" : "https://profiles.ihe.net/ITI/PMIR/MessageHeader/ex-messageheader-delete",
      "resource" : {
        "resourceType" : "MessageHeader",
        "id" : "ex-messageheader-delete",
        "meta" : {
          "profile" : [
            "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.MessageHeader"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MessageHeader_ex-messageheader-delete\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MessageHeader ex-messageheader-delete</b></p><a name=\"ex-messageheader-delete\"> </a><a name=\"hcex-messageheader-delete\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-IHE.PMIR.MessageHeader.html\">IHE Patient Master Identity Registry MessageHeader</a></p></div><p><b>event</b>: urn:ihe:iti:pmir:2019:patient-feed</p><h3>Destinations</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Endpoint</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"http://example.com/patientEndpoint\">http://example.com/patientEndpoint</a></td></tr></table><h3>Sources</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Endpoint</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"http://example.com/patientSource\">http://example.com/patientSource</a></td></tr></table><p><b>focus</b>: <a href=\"Bundle-ex-bundle-history-delete.html\">Bundle: type = history</a></p></div>"
        },
        "eventUri" : "urn:ihe:iti:pmir:2019:patient-feed",
        "destination" : [
          {
            "endpoint" : "http://example.com/patientEndpoint"
          }
        ],
        "source" : {
          "endpoint" : "http://example.com/patientSource"
        },
        "focus" : [
          {
            "reference" : "Bundle/ex-bundle-history-delete"
          }
        ]
      }
    },
    {
      "fullUrl" : "https://profiles.ihe.net/ITI/PMIR/Bundle/ex-bundle-history-delete",
      "resource" : {
        "resourceType" : "Bundle",
        "id" : "ex-bundle-history-delete",
        "meta" : {
          "profile" : [
            "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle.History"
          ]
        },
        "type" : "history",
        "entry" : [
          {
            "fullUrl" : "https://example.org/FHIR/Patient/ex-patient-delete",
            "request" : {
              "method" : "DELETE",
              "url" : "Patient/ex-patient-delete"
            },
            "response" : {
              "status" : "202"
            }
          }
        ]
      }
    }
  ]
}

```
