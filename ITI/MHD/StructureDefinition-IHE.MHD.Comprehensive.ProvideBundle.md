# MHD Comprehensive Provide Document Bundle - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MHD Comprehensive Provide Document Bundle**

## Resource Profile: MHD Comprehensive Provide Document Bundle 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.ProvideBundle | *Version*:4.2.3 |
| Active as of 2025-10-31 | *Computable Name*:ComprehensiveProvideDocumentBundle |

 
A profile on the Bundle transaction for ITI-65 Provide Document resources with Comprehensive Metadata for MHD. 
* [Comprehensive Metadata](StructureDefinition-IHE.MHD.Comprehensive.ProvideBundle.md): `https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.ProvideBundle` 
* this is otherwise known as XDS-on-FHIR
* shall be a Transaction Bundle
* all resources shall be compliant with comprehensive constraints, they may be marked comprehensive
* shall create a [SubmissionSet type List](StructureDefinition-IHE.MHD.Minimal.SubmissionSet.md) that is either minimal, comprehensive, or unContained
* may create one or more [DocumentReference](StructureDefinition-IHE.MHD.Minimal.DocumentReference.md) that is either minimal, comprehensive, or unContained 
* with a document as a [Binary](http://hl7.org/fhir/R4/binary.html)
* or, when implementing the **ITI-65 FHIR Document Publish** option, a [FHIR Document Bundle](http://hl7.org/fhir/R4/bundle.html)
 
* may create/update one or more [Folder type List](StructureDefinition-IHE.MHD.Minimal.Folder.md) that is either minimal, comprehensive, or unContained
* may create/update/read one [Patient](http://hl7.org/fhir/R4/patient.html)
 
 

**Usages:**

* Examples for this Profile: [Bundle/ex-ProvideDocumentBundle-addToFolder](Bundle-ex-ProvideDocumentBundle-addToFolder.md), [Bundle/ex-comprehensiveProvideDocumentBundleComplete](Bundle-ex-comprehensiveProvideDocumentBundleComplete.md), [Bundle/ex-comprehensiveProvideDocumentBundleDocument](Bundle-ex-comprehensiveProvideDocumentBundleDocument.md), [Bundle/ex-comprehensiveProvideDocumentBundleMultiple](Bundle-ex-comprehensiveProvideDocumentBundleMultiple.md)...Show 2 more,[Bundle/ex-comprehensiveProvideDocumentBundleReplace](Bundle-ex-comprehensiveProvideDocumentBundleReplace.md)and[Bundle/ex-comprehensiveProvideDocumentBundleSimple](Bundle-ex-comprehensiveProvideDocumentBundleSimple.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.MHD.Comprehensive.ProvideBundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.Comprehensive.ProvideBundle.csv), [Excel](StructureDefinition-IHE.MHD.Comprehensive.ProvideBundle.xlsx), [Schematron](StructureDefinition-IHE.MHD.Comprehensive.ProvideBundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.Comprehensive.ProvideBundle",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.ProvideBundle",
  "version" : "4.2.3",
  "name" : "ComprehensiveProvideDocumentBundle",
  "title" : "MHD Comprehensive Provide Document Bundle",
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
  "description" : "A profile on the Bundle transaction for ITI-65 Provide Document resources with Comprehensive Metadata for MHD.\r\n\r\n- [Comprehensive Metadata](StructureDefinition-IHE.MHD.Comprehensive.ProvideBundle.html): `https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.ProvideBundle`\r\n  - this is otherwise known as XDS-on-FHIR\r\n  - shall be a Transaction Bundle\r\n  - all resources shall be compliant with comprehensive constraints, they may be marked comprehensive\r\n  - shall create a [SubmissionSet type List](StructureDefinition-IHE.MHD.Minimal.SubmissionSet.html) that is either minimal, comprehensive, or unContained\r\n  - may create one or more [DocumentReference](StructureDefinition-IHE.MHD.Minimal.DocumentReference.html) that is either minimal, comprehensive, or unContained\r\n    - with a document as a [Binary](http://hl7.org/fhir/R4/binary.html)\r\n    - or, when implementing the **ITI-65 FHIR Document Publish** option, a [FHIR Document Bundle](http://hl7.org/fhir/R4/bundle.html)\r\n  - may create/update one or more [Folder type List](StructureDefinition-IHE.MHD.Minimal.Folder.html) that is either minimal, comprehensive, or unContained\r\n  - may create/update/read one [Patient](http://hl7.org/fhir/R4/patient.html)",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
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
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.ProvideBundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.entry:SubmissionSet",
        "path" : "Bundle.entry",
        "sliceName" : "SubmissionSet"
      },
      {
        "id" : "Bundle.entry:SubmissionSet.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "List",
            "profile" : [
              "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.SubmissionSet"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DocumentRefs",
        "path" : "Bundle.entry",
        "sliceName" : "DocumentRefs"
      },
      {
        "id" : "Bundle.entry:DocumentRefs.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "DocumentReference",
            "profile" : [
              "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.DocumentReference"
            ]
          }
        ]
      }
    ]
  }
}

```
