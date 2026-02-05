# IHE Patient Master Identity Registry Message Bundle Create Example - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE Patient Master Identity Registry Message Bundle Create Example**

## Example Bundle: IHE Patient Master Identity Registry Message Bundle Create Example

Profile: [IHE Patient Master Identity Registry Message Bundle](StructureDefinition-IHE.PMIR.Bundle.md)

Bundle ex-PMIRBundleCreate of type message

-------

Entry 1 - fullUrl = https://profiles.ihe.net/ITI/PMIR/MessageHeader/ex-messageheader-create

Resource MessageHeader:

> 

Profile: [IHE Patient Master Identity Registry MessageHeader](StructureDefinition-IHE.PMIR.MessageHeader.md)

**event**:`urn:ihe:iti:pmir:2019:patient-feed`
> **destination**

> **source**
**focus**:[Bundle: type = history](Bundle-ex-bundle-history-create.md)

-------

Entry 2 - fullUrl = https://profiles.ihe.net/ITI/PMIR/Bundle/ex-bundle-history-create

Resource Bundle:

> 

Profile: [IHE Patient Master Identity Registry Bundle Message](StructureDefinition-IHE.PMIR.Bundle.History.md)

Bundle ex-bundle-history-create of type history
-------
Entry 1 - fullUrl = urn:uuid:14298d90-b285-4c4c-8252-5d4e7bb5fdb6Resource Patient:
> Example PMIR Patient for creating
Request:```POST Patient```Response:```201 Location = Patient/ex-patient-create1/_history/1```
-------
Entry 2 - fullUrl = urn:uuid:95e1726c-9c3c-4de3-bebc-15daed6b6d34Resource Patient:
> Example PMIR Patient for creating
Request:```POST Patient```Response:```201 Location = Patient/ex-patient-create2/_history/1```



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ex-PMIRBundleCreate",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle"
    ]
  },
  "type" : "message",
  "entry" : [
    {
      "fullUrl" : "https://profiles.ihe.net/ITI/PMIR/MessageHeader/ex-messageheader-create",
      "resource" : {
        "resourceType" : "MessageHeader",
        "id" : "ex-messageheader-create",
        "meta" : {
          "profile" : [
            "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.MessageHeader"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MessageHeader_ex-messageheader-create\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MessageHeader ex-messageheader-create</b></p><a name=\"ex-messageheader-create\"> </a><a name=\"hcex-messageheader-create\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-IHE.PMIR.MessageHeader.html\">IHE Patient Master Identity Registry MessageHeader</a></p></div><p><b>event</b>: urn:ihe:iti:pmir:2019:patient-feed</p><h3>Destinations</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Endpoint</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"http://example.com/patientEndpoint\">http://example.com/patientEndpoint</a></td></tr></table><h3>Sources</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Endpoint</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"http://example.com/patientSource\">http://example.com/patientSource</a></td></tr></table><p><b>focus</b>: <a href=\"Bundle-ex-bundle-history-create.html\">Bundle: type = history</a></p></div>"
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
            "reference" : "Bundle/ex-bundle-history-create"
          }
        ]
      }
    },
    {
      "fullUrl" : "https://profiles.ihe.net/ITI/PMIR/Bundle/ex-bundle-history-create",
      "resource" : {
        "resourceType" : "Bundle",
        "id" : "ex-bundle-history-create",
        "meta" : {
          "profile" : [
            "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle.History"
          ]
        },
        "type" : "history",
        "entry" : [
          {
            "fullUrl" : "urn:uuid:14298d90-b285-4c4c-8252-5d4e7bb5fdb6",
            "resource" : {
              "resourceType" : "Patient",
              "id" : "ex-patient-create1",
              "text" : {
                "status" : "additional",
                "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Example PMIR Patient for creating</div>"
              },
              "active" : true,
              "name" : [
                {
                  "use" : "official",
                  "family" : "Riegel",
                  "given" : ["David", "A."]
                }
              ],
              "telecom" : [
                {
                  "system" : "phone",
                  "value" : "+1-734-942-9512",
                  "use" : "work"
                },
                {
                  "system" : "email",
                  "value" : "DavidARiegel@jourrapide.com",
                  "use" : "work"
                }
              ],
              "gender" : "male",
              "birthDate" : "1985-07-12",
              "address" : [
                {
                  "use" : "home",
                  "type" : "both",
                  "text" : "4512 Bombardier Way\nRomulus, MI 48174",
                  "line" : ["4512 Bombardier Way"],
                  "city" : "Romulus",
                  "state" : "MI",
                  "postalCode" : "48174",
                  "country" : "US"
                }
              ]
            },
            "request" : {
              "method" : "POST",
              "url" : "Patient"
            },
            "response" : {
              "status" : "201",
              "location" : "Patient/ex-patient-create1/_history/1"
            }
          },
          {
            "fullUrl" : "urn:uuid:95e1726c-9c3c-4de3-bebc-15daed6b6d34",
            "resource" : {
              "resourceType" : "Patient",
              "id" : "ex-patient-create2",
              "meta" : {
                "profile" : [
                  "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Patient.Related"
                ]
              },
              "text" : {
                "status" : "additional",
                "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Example PMIR Patient for creating</div>"
              },
              "active" : true,
              "name" : [
                {
                  "use" : "official",
                  "family" : "Wooten",
                  "given" : ["Lucille", "T."]
                }
              ],
              "telecom" : [
                {
                  "system" : "phone",
                  "value" : "+1-570-508-4343",
                  "use" : "work"
                },
                {
                  "system" : "email",
                  "value" : "LucilleTWooten@teleworm.us",
                  "use" : "work"
                }
              ],
              "gender" : "female",
              "birthDate" : "1971-12-14",
              "address" : [
                {
                  "use" : "home",
                  "type" : "both",
                  "text" : "3799 High Meadow Lane\nScranton, PA 18503",
                  "line" : ["3799 High Meadow Lane"],
                  "city" : "Scranton",
                  "state" : "PA",
                  "postalCode" : "18503",
                  "country" : "US"
                }
              ],
              "link" : [
                {
                  "other" : {
                    "reference" : "RelatedPerson/ex-related-mom"
                  },
                  "type" : "seealso"
                }
              ]
            },
            "request" : {
              "method" : "POST",
              "url" : "Patient"
            },
            "response" : {
              "status" : "201",
              "location" : "Patient/ex-patient-create2/_history/1"
            }
          }
        ]
      }
    }
  ]
}

```
