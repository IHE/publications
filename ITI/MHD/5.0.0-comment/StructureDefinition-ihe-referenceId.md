# Holds values from DocumentEntry.referenceIdList that are not appropriate for .context or .basedOn - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Holds values from DocumentEntry.referenceIdList that are not appropriate for .context or .basedOn**

## Extension: Holds values from DocumentEntry.referenceIdList that are not appropriate for .context or .basedOn 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-referenceId | *Version*:5.0.0-comment |
| Active as of 2025-10-31 | *Computable Name*:ReferenceId |

This extension holds values from DocumentEntry.referenceIdList that are not appropriate for .context or .basedOn. This extension can hold any identifier that is related to the DocumentReference. This extension is added for FHIR R5 as DocumentReference does not have a .context.related element, and this extension will not be needed in R6 as there is a DocumentReference.related element there.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MHD DocumentReference Minimal](StructureDefinition-IHE.MHD.Minimal.DocumentReference.md)
* Examples for this Extension: [Bundle/ex-comprehensiveProvideDocumentBundleComplete](Bundle-ex-comprehensiveProvideDocumentBundleComplete.md), [Bundle/ex-unContainedComprehensiveProvideDocumentBundleComplete](Bundle-ex-unContainedComprehensiveProvideDocumentBundleComplete.md), [DocumentReference/ex-DocumentReferenceComprehensive](DocumentReference-ex-DocumentReferenceComprehensive.md), [DocumentReference/ex-DocumentReferenceComprehensiveDelayedAssembly](DocumentReference-ex-DocumentReferenceComprehensiveDelayedAssembly.md) and [DocumentReference/ex-DocumentReferenceUnContainedFully](DocumentReference-ex-DocumentReferenceUnContainedFully.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/ihe-referenceId)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ihe-referenceId.csv), [Excel](StructureDefinition-ihe-referenceId.xlsx), [Schematron](StructureDefinition-ihe-referenceId.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ihe-referenceId",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-referenceId",
  "version" : "5.0.0-comment",
  "name" : "ReferenceId",
  "title" : "Holds values from DocumentEntry.referenceIdList that are not appropriate for .context or .basedOn",
  "status" : "active",
  "date" : "2025-10-31T11:44:01-05:00",
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
  "description" : "This extension holds values from DocumentEntry.referenceIdList that are not appropriate for .context or .basedOn. This extension can hold any identifier that is related to the DocumentReference. This extension is added for FHIR R5 as DocumentReference does not have a .context.related element, and this extension will not be needed in R6 as there is a DocumentReference.related element there.",
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
      "expression" : "DocumentReference"
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
        "short" : "Holds values from DocumentEntry.referenceIdList that are not appropriate for .context or .basedOn",
        "definition" : "This extension holds values from DocumentEntry.referenceIdList that are not appropriate for .context or .basedOn. This extension can hold any identifier that is related to the DocumentReference. This extension is added for FHIR R5 as DocumentReference does not have a .context.related element, and this extension will not be needed in R6 as there is a DocumentReference.related element there."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-referenceId"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      }
    ]
  }
}

```
