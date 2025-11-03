# Author organization of the SubmissionSet - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Author organization of the SubmissionSet**

## Extension: Author organization of the SubmissionSet 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-authorOrg | *Version*:4.2.3 |
| Active as of 2025-10-31 | *Computable Name*:AuthorOrg |

When the author of the SubmissionSet is an Organization, this extension shall be used.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MHD SubmissionSet Minimal](StructureDefinition-IHE.MHD.Minimal.SubmissionSet.md)
* Examples for this Extension: [Bundle/ex-comprehensiveProvideDocumentBundleComplete](Bundle-ex-comprehensiveProvideDocumentBundleComplete.md), [Bundle/ex-unContainedComprehensiveProvideDocumentBundleComplete](Bundle-ex-unContainedComprehensiveProvideDocumentBundleComplete.md) and [List/ex-compSubmissionSetFull](List-ex-compSubmissionSetFull.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/ihe-authorOrg)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ihe-authorOrg.csv), [Excel](StructureDefinition-ihe-authorOrg.xlsx), [Schematron](StructureDefinition-ihe-authorOrg.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ihe-authorOrg",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-authorOrg",
  "version" : "4.2.3",
  "name" : "AuthorOrg",
  "title" : "Author organization of the SubmissionSet",
  "status" : "active",
  "date" : "2025-10-31T14:38:46-05:00",
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
  "description" : "When the author of the SubmissionSet is an Organization, this extension shall be used.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
          "code" : "001",
          "display" : "World"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "List.source"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Author organization of the SubmissionSet",
        "definition" : "When the author of the SubmissionSet is an Organization, this extension shall be used."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-authorOrg"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Organization"]
          }
        ]
      }
    ]
  }
}

```
