# MHD Minimal Provide Document Bundle - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MHD Minimal Provide Document Bundle**

## Resource Profile: MHD Minimal Provide Document Bundle 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.ProvideBundle | *Version*:5.0.0-comment |
| Active as of 2025-10-31 | *Computable Name*:MinimalProvideDocumentBundle |

 
A profile on the Bundle transaction for ITI-65 Provide Document resources with Minimal metadata for MHD. 
* [Minimal Metadata](StructureDefinition-IHE.MHD.Minimal.ProvideBundle.md): `https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.ProvideBundle` 
* shall be a Transaction Bundle
* all resources shall be compliant with minimal constraints, they may be marked minimal, comprehensive, or unContained
* shall create a [SubmissionSet type List](StructureDefinition-IHE.MHD.Minimal.SubmissionSet.md) that is either minimal, comprehensive, or unContained
* may create one or more [DocumentReference](StructureDefinition-IHE.MHD.Minimal.DocumentReference.md) that is either minimal, comprehensive, or unContained 
* with a document as a [Binary](http://hl7.org/fhir/R5/binary.html)
* or, when implementing the **ITI-65 FHIR Document Publish** option, a [FHIR Document Bundle](http://hl7.org/fhir/R5/bundle.html)
 
* when DocumentReference replace is used the UpdateDocumentRefs slice is used to indicate the superseded DocumentReference
* may create/update one or more [Folder type List](StructureDefinition-IHE.MHD.Minimal.Folder.md) that is either minimal, comprehensive, or unContained
* may create/update/read one [Patient](http://hl7.org/fhir/R5/patient.html)
 
 

**Usages:**

* Derived from this Profile: [MHD UnContained Comprehensive Provide Document Bundle](StructureDefinition-IHE.MHD.UnContained.Comprehensive.ProvideBundle.md)
* Examples for this Profile: [Bundle/ex-minimalProvideDocumentBundleSimple](Bundle-ex-minimalProvideDocumentBundleSimple.md) and [Bundle/ex-minimalProvideDocumentBundleSimpleContained](Bundle-ex-minimalProvideDocumentBundleSimpleContained.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.MHD.Minimal.ProvideBundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.Minimal.ProvideBundle.csv), [Excel](StructureDefinition-IHE.MHD.Minimal.ProvideBundle.xlsx), [Schematron](StructureDefinition-IHE.MHD.Minimal.ProvideBundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.Minimal.ProvideBundle",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.ProvideBundle",
  "version" : "5.0.0-comment",
  "name" : "MinimalProvideDocumentBundle",
  "title" : "MHD Minimal Provide Document Bundle",
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
  "description" : "A profile on the Bundle transaction for ITI-65 Provide Document resources with Minimal metadata for MHD.\r\n\r\n- [Minimal Metadata](StructureDefinition-IHE.MHD.Minimal.ProvideBundle.html): `https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.ProvideBundle`\r\n  - shall be a Transaction Bundle\r\n  - all resources shall be compliant with minimal constraints, they may be marked minimal, comprehensive, or unContained\r\n  - shall create a [SubmissionSet type List](StructureDefinition-IHE.MHD.Minimal.SubmissionSet.html) that is either minimal, comprehensive, or unContained\r\n  - may create one or more [DocumentReference](StructureDefinition-IHE.MHD.Minimal.DocumentReference.html) that is either minimal, comprehensive, or unContained\r\n    - with a document as a [Binary](http://hl7.org/fhir/R5/binary.html)\r\n    - or, when implementing the **ITI-65 FHIR Document Publish** option, a [FHIR Document Bundle](http://hl7.org/fhir/R5/bundle.html)\r\n  - when DocumentReference replace is used the UpdateDocumentRefs slice is used to indicate the superseded DocumentReference\r\n  - may create/update one or more [Folder type List](StructureDefinition-IHE.MHD.Minimal.Folder.html) that is either minimal, comprehensive, or unContained\r\n  - may create/update/read one [Patient](http://hl7.org/fhir/R5/patient.html)",
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
        "id" : "Bundle.meta.profile",
        "path" : "Bundle.meta.profile",
        "min" : 1
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "patternCode" : "transaction"
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resource"
            },
            {
              "type" : "value",
              "path" : "request.method"
            }
          ],
          "description" : "Slicing based on the profile conformance of the entry",
          "rules" : "closed"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:SubmissionSet",
        "path" : "Bundle.entry",
        "sliceName" : "SubmissionSet",
        "short" : "the SubmissionSet",
        "definition" : "The SubmissionSet defines who submitted it, why they submitted it, when they submitted, what is in it, and where it is destine.",
        "min" : 1,
        "max" : "1"
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
        "id" : "Bundle.entry:SubmissionSet.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:SubmissionSet.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:DocumentRefs",
        "path" : "Bundle.entry",
        "sliceName" : "DocumentRefs",
        "short" : "the DocumentReference resources",
        "definition" : "any new DocumentReference that are part of the SubmissionSet. These might be new or other associations",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DocumentRefs.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "DocumentReference",
            "profile" : [
              "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.DocumentReference"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DocumentRefs.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:DocumentRefs.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:UpdateDocumentRefs",
        "path" : "Bundle.entry",
        "sliceName" : "UpdateDocumentRefs",
        "short" : "the superseded DocumentReference resources",
        "definition" : "any updated DocumentReference that are part of the SubmissionSet if a new DocumentReference replaces this DocumentReference.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:UpdateDocumentRefs.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Parameters",
            "profile" : [
              "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Patch.Parameters"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:UpdateDocumentRefs.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:UpdateDocumentRefs.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "PATCH"
      },
      {
        "id" : "Bundle.entry:Documents",
        "path" : "Bundle.entry",
        "sliceName" : "Documents",
        "short" : "the Documents",
        "definition" : "the Documents referenced by the DocumentReference resources",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Documents.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Binary",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/Binary"]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Documents.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:FhirDocuments",
        "path" : "Bundle.entry",
        "sliceName" : "FhirDocuments",
        "short" : "the FHIR-FhirDocuments",
        "definition" : "the FHIR-FhirDocuments referenced by the DocumentReference resources",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:FhirDocuments.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Bundle",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/Bundle"]
          }
        ]
      },
      {
        "id" : "Bundle.entry:FhirDocuments.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:FhirDocuments.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:Folders",
        "path" : "Bundle.entry",
        "sliceName" : "Folders",
        "short" : "Folders",
        "definition" : "any Folders being created or updated",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Folders.resource",
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
      },
      {
        "id" : "Bundle.entry:Folders.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:Folders.request.method",
        "path" : "Bundle.entry.request.method",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://profiles.ihe.net/ITI/MHD/ValueSet/MHDprovideFolderActions"
        }
      },
      {
        "id" : "Bundle.entry:Patient",
        "path" : "Bundle.entry",
        "sliceName" : "Patient",
        "short" : "the Patient",
        "definition" : "the Patient",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:Patient.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Patient",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Patient.request.method",
        "path" : "Bundle.entry.request.method",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://profiles.ihe.net/ITI/MHD/ValueSet/MHDprovidePatientActions"
        }
      }
    ]
  }
}

```
