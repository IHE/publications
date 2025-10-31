# Publisher organization identity of the SubmissionSet - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Publisher organization identity of the SubmissionSet**

## Extension: Publisher organization identity of the SubmissionSet 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-sourceId | *Version*:5.0.0-comment |
| Active as of 2025-10-31 | *Computable Name*:SourceId |

The globally unique, immutable, identifier of the entity that contributed the SubmissionSet. When a broker is involved in sending SubmissionSets from a collection of client systems, it shall use a different sourceId for submissions from each separate system to allow for tracking. The format of the identifier is an OID.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MHD SubmissionSet Minimal](StructureDefinition-IHE.MHD.Minimal.SubmissionSet.md)
* Examples for this Extension: [Bundle/ex-ProvideDocumentBundle-addToFolder](Bundle-ex-ProvideDocumentBundle-addToFolder.md), [Bundle/ex-comprehensiveProvideDocumentBundleComplete](Bundle-ex-comprehensiveProvideDocumentBundleComplete.md), [Bundle/ex-comprehensiveProvideDocumentBundleDocument](Bundle-ex-comprehensiveProvideDocumentBundleDocument.md), [Bundle/ex-comprehensiveProvideDocumentBundleMultiple](Bundle-ex-comprehensiveProvideDocumentBundleMultiple.md)...Show 10 more,[Bundle/ex-comprehensiveProvideDocumentBundleReplace](Bundle-ex-comprehensiveProvideDocumentBundleReplace.md),[Bundle/ex-comprehensiveProvideDocumentBundleSimple](Bundle-ex-comprehensiveProvideDocumentBundleSimple.md),[Bundle/ex-minimalProvideDocumentBundleSimple](Bundle-ex-minimalProvideDocumentBundleSimple.md),[Bundle/ex-minimalProvideDocumentBundleSimpleContained](Bundle-ex-minimalProvideDocumentBundleSimpleContained.md),[Bundle/ex-unContainedComprehensiveProvideDocumentBundleComplete](Bundle-ex-unContainedComprehensiveProvideDocumentBundleComplete.md),[List/ex-compEmailPackage](List-ex-compEmailPackage.md),[List/ex-compSubmissionSetFull](List-ex-compSubmissionSetFull.md),[List/ex-compSubmissionSetFullUnContained](List-ex-compSubmissionSetFullUnContained.md),[List/ex-compSubmissionSetList](List-ex-compSubmissionSetList.md)and[List/ex-minimalSubmissionSet](List-ex-minimalSubmissionSet.md)
* Search Parameters using this Extension: [SourceId](SearchParameter-List-SourceId.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/ihe-sourceId)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ihe-sourceId.csv), [Excel](StructureDefinition-ihe-sourceId.xlsx), [Schematron](StructureDefinition-ihe-sourceId.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ihe-sourceId",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-sourceId",
  "version" : "5.0.0-comment",
  "name" : "SourceId",
  "title" : "Publisher organization identity of the SubmissionSet",
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
  "description" : "The globally unique, immutable, identifier of the entity that contributed the SubmissionSet. When a broker is involved in sending SubmissionSets from a collection of client systems, it shall use a different sourceId for submissions from each separate system to allow for tracking. The format of the identifier is an OID.",
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
        "short" : "Publisher organization identity of the SubmissionSet",
        "definition" : "The globally unique, immutable, identifier of the entity that contributed the SubmissionSet. When a broker is involved in sending SubmissionSets from a collection of client systems, it shall use a different sourceId for submissions from each separate system to allow for tracking. The format of the identifier is an OID."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-sourceId"
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
