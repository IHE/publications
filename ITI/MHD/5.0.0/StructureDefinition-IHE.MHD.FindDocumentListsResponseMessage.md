# MHD Find Document Lists Response Message - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MHD Find Document Lists Response Message**

## Resource Profile: MHD Find Document Lists Response Message 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.FindDocumentListsResponseMessage | *Version*:5.0.0 |
| Active as of 2025-12-18 | *Computable Name*:FindListsResponse |

 
A profile on the Find Document Lists Response message for ITI-66 

**Usages:**

* Examples for this Profile: [Bundle/ex-findDocumentListsResponse](Bundle-ex-findDocumentListsResponse.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.MHD.FindDocumentListsResponseMessage)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.FindDocumentListsResponseMessage.csv), [Excel](StructureDefinition-IHE.MHD.FindDocumentListsResponseMessage.xlsx), [Schematron](StructureDefinition-IHE.MHD.FindDocumentListsResponseMessage.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.FindDocumentListsResponseMessage",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.FindDocumentListsResponseMessage",
  "version" : "5.0.0",
  "name" : "FindListsResponse",
  "title" : "MHD Find Document Lists Response Message",
  "status" : "active",
  "date" : "2025-12-18T09:48:18-06:00",
  "publisher" : "IHE IT Infrastructure Technical Committee",
  "contact" : [
    {
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.ihe.net/ihe_domains/it_infrastructure/"
        }
      ]
    },
    {
      "telecom" : [
        {
          "system" : "email",
          "value" : "iti@ihe.net"
        }
      ]
    },
    {
      "name" : "IHE IT Infrastructure Technical Committee",
      "telecom" : [
        {
          "system" : "email",
          "value" : "iti@ihe.net"
        }
      ]
    }
  ],
  "description" : "A profile on the Find Document Lists Response message for ITI-66",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
          "code" : "001"
        }
      ]
    }
  ],
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 V2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "patternCode" : "searchset"
      },
      {
        "id" : "Bundle.total",
        "path" : "Bundle.total",
        "min" : 1
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resource"
            }
          ],
          "rules" : "closed"
        }
      },
      {
        "id" : "Bundle.entry:SubmissionSet",
        "path" : "Bundle.entry",
        "sliceName" : "SubmissionSet",
        "short" : "SubmissionSets",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:SubmissionSet.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:SubmissionSet.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "List",
            "profile" : [
              "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.SubmissionSet"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Folder",
        "path" : "Bundle.entry",
        "sliceName" : "Folder",
        "short" : "Folders",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Folder.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:Folder.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "List",
            "profile" : [
              "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.Folder"
            ]
          }
        ]
      }
    ]
  }
}

```
