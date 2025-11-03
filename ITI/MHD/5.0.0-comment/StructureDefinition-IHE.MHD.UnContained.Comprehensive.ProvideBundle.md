# MHD UnContained Comprehensive Provide Document Bundle - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MHD UnContained Comprehensive Provide Document Bundle**

## Resource Profile: MHD UnContained Comprehensive Provide Document Bundle 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.ProvideBundle | *Version*:5.0.0-comment |
| Active as of 2025-10-31 | *Computable Name*:UnContainedComprehensiveProvideDocumentBundle |

 
A profile on the Bundle transaction for ITI-65 Provide Document resources with UnContained allowed but requiring Comprehensive Metadata for MHD. 
* [UnContained Comprehensive Metadata](StructureDefinition-IHE.MHD.UnContained.Comprehensive.ProvideBundle.md): `https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.ProvideBundle` 
* note that Minimal Metadata does not require containment, so UnContained Minimal is the same as Minimal Metadata
* note that UnContained only applies to DocumentReference and SubmissionSet type Lists; so the following apply
* shall be a Transaction Bundle
* all resources shall be compliant with comprehensive unContained constraints, they may be marked comprehensive unContained
* shall create a [SubmissionSet type List](StructureDefinition-IHE.MHD.Minimal.SubmissionSet.md) that is either minimal, comprehensive, or unContained
* may create one or more [DocumentReference](StructureDefinition-IHE.MHD.Minimal.DocumentReference.md) that is either minimal, comprehensive, or unContained 
* with a document as a [Binary](http://hl7.org/fhir/R5/binary.html)
* or, when implementing the **ITI-65 FHIR Document Publish** option, a [FHIR Document Bundle](http://hl7.org/fhir/R5/bundle.html)
 
* may create/update one or more [Folder type List](StructureDefinition-IHE.MHD.Minimal.Folder.md) that is either minimal, comprehensive, or unContained
* may create/update/read one [Patient](http://hl7.org/fhir/R5/patient.html)
 
 

**Usages:**

* Derived from this Profile: [MHD Comprehensive Provide Document Bundle](StructureDefinition-IHE.MHD.Comprehensive.ProvideBundle.md)
* Examples for this Profile: [Bundle/ex-unContainedComprehensiveProvideDocumentBundleComplete](Bundle-ex-unContainedComprehensiveProvideDocumentBundleComplete.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.MHD.UnContained.Comprehensive.ProvideBundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.UnContained.Comprehensive.ProvideBundle.csv), [Excel](StructureDefinition-IHE.MHD.UnContained.Comprehensive.ProvideBundle.xlsx), [Schematron](StructureDefinition-IHE.MHD.UnContained.Comprehensive.ProvideBundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.UnContained.Comprehensive.ProvideBundle",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.ProvideBundle",
  "version" : "5.0.0-comment",
  "name" : "UnContainedComprehensiveProvideDocumentBundle",
  "title" : "MHD UnContained Comprehensive Provide Document Bundle",
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
  "description" : "A profile on the Bundle transaction for ITI-65 Provide Document resources with UnContained allowed but requiring Comprehensive Metadata for MHD.\r\n\r\n- [UnContained Comprehensive Metadata](StructureDefinition-IHE.MHD.UnContained.Comprehensive.ProvideBundle.html): `https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.ProvideBundle` \r\n  - note that Minimal Metadata does not require containment, so UnContained Minimal is the same as Minimal Metadata\r\n  - note that UnContained only applies to DocumentReference and SubmissionSet type Lists; so the following apply\r\n  - shall be a Transaction Bundle\r\n  - all resources shall be compliant with comprehensive unContained constraints, they may be marked comprehensive unContained\r\n  - shall create a [SubmissionSet type List](StructureDefinition-IHE.MHD.Minimal.SubmissionSet.html) that is either minimal, comprehensive, or unContained\r\n  - may create one or more [DocumentReference](StructureDefinition-IHE.MHD.Minimal.DocumentReference.html) that is either minimal, comprehensive, or unContained\r\n    - with a document as a [Binary](http://hl7.org/fhir/R5/binary.html)\r\n    - or, when implementing the **ITI-65 FHIR Document Publish** option, a [FHIR Document Bundle](http://hl7.org/fhir/R5/bundle.html)\r\n  - may create/update one or more [Folder type List](StructureDefinition-IHE.MHD.Minimal.Folder.html) that is either minimal, comprehensive, or unContained\r\n  - may create/update/read one [Patient](http://hl7.org/fhir/R5/patient.html)",
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
  "baseDefinition" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.ProvideBundle",
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
              "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.SubmissionSet"
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
              "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.DocumentReference"
            ]
          }
        ]
      }
    ]
  }
}

```
