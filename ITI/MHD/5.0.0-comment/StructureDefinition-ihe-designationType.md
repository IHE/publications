# Clinical code of the List - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Clinical code of the List**

## Extension: Clinical code of the List 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-designationType | *Version*:5.0.0-comment |
| Active as of 2025-10-31 | *Computable Name*:DesignationType |

Expresses contentType of submissionSet or the codeList of a Folder. Usually expressed in LOINC or SNOMED.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MHD common List with designationType](StructureDefinition-IHE.MHD.List.md)
* Examples for this Extension: [Bundle/ex-ProvideDocumentBundle-addToFolder](Bundle-ex-ProvideDocumentBundle-addToFolder.md), [Bundle/ex-comprehensiveProvideDocumentBundleComplete](Bundle-ex-comprehensiveProvideDocumentBundleComplete.md), [Bundle/ex-comprehensiveProvideDocumentBundleDocument](Bundle-ex-comprehensiveProvideDocumentBundleDocument.md), [Bundle/ex-comprehensiveProvideDocumentBundleMultiple](Bundle-ex-comprehensiveProvideDocumentBundleMultiple.md)...Show 8 more,[Bundle/ex-comprehensiveProvideDocumentBundleReplace](Bundle-ex-comprehensiveProvideDocumentBundleReplace.md),[Bundle/ex-comprehensiveProvideDocumentBundleSimple](Bundle-ex-comprehensiveProvideDocumentBundleSimple.md),[Bundle/ex-unContainedComprehensiveProvideDocumentBundleComplete](Bundle-ex-unContainedComprehensiveProvideDocumentBundleComplete.md),[List/ex-compEmailPackage](List-ex-compEmailPackage.md),[List/ex-compFolder](List-ex-compFolder.md),[List/ex-compSubmissionSetFull](List-ex-compSubmissionSetFull.md),[List/ex-compSubmissionSetFullUnContained](List-ex-compSubmissionSetFullUnContained.md)and[List/ex-compSubmissionSetList](List-ex-compSubmissionSetList.md)
* Search Parameters using this Extension: [DesignationType](SearchParameter-List-DesignationType.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/ihe-designationType)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ihe-designationType.csv), [Excel](StructureDefinition-ihe-designationType.xlsx), [Schematron](StructureDefinition-ihe-designationType.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ihe-designationType",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-designationType",
  "version" : "5.0.0-comment",
  "name" : "DesignationType",
  "title" : "Clinical code of the List",
  "status" : "active",
  "date" : "2025-10-31T15:07:19-05:00",
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
  "description" : "Expresses contentType of submissionSet or the codeList of a Folder. Usually expressed in LOINC or SNOMED.",
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
      "expression" : "List"
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
        "short" : "Clinical code of the List",
        "definition" : "Expresses contentType of submissionSet or the codeList of a Folder. Usually expressed in LOINC or SNOMED."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-designationType"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
