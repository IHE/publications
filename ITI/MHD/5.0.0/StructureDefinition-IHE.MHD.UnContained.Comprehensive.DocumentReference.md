# MHD DocumentReference Comprehensive UnContained References Option - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MHD DocumentReference Comprehensive UnContained References Option**

## Resource Profile: MHD DocumentReference Comprehensive UnContained References Option 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.DocumentReference | *Version*:5.0.0 |
| Active as of 2025-12-18 | *Computable Name*:UnContainedComprehensiveDocumentReference |

 
A profile on the DocumentReference resource for MHD with Comprehensive Metadata Option but without a requirement for contained author, authenticator, or sourcePatientInfo. 
* MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model,
* the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and
* the use defined here is FHIR DocumentReference implementation of the
* ebRIM implementation at [3:4.2.3.2 Document Entry](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.2).
* with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)
 

**Usages:**

* Derived from this Profile: [MHD DocumentReference Comprehensive](StructureDefinition-IHE.MHD.Comprehensive.DocumentReference.md)
* Use this Profile: [MHD UnContained Comprehensive Provide Document Bundle](StructureDefinition-IHE.MHD.UnContained.Comprehensive.ProvideBundle.md)
* Examples for this Profile: [DocumentReference/ex-DocumentReferenceUnContained](DocumentReference-ex-DocumentReferenceUnContained.md) and [DocumentReference/ex-DocumentReferenceUnContainedFully](DocumentReference-ex-DocumentReferenceUnContainedFully.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.MHD.UnContained.Comprehensive.DocumentReference)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.UnContained.Comprehensive.DocumentReference.csv), [Excel](StructureDefinition-IHE.MHD.UnContained.Comprehensive.DocumentReference.xlsx), [Schematron](StructureDefinition-IHE.MHD.UnContained.Comprehensive.DocumentReference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.UnContained.Comprehensive.DocumentReference",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.DocumentReference",
  "version" : "5.0.0",
  "name" : "UnContainedComprehensiveDocumentReference",
  "title" : "MHD DocumentReference Comprehensive UnContained References Option",
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
  "description" : "A profile on the DocumentReference resource for MHD with Comprehensive Metadata Option but without a requirement for contained author, authenticator, or sourcePatientInfo. \r\n- MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, \r\n- the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and \r\n- the use defined here is FHIR DocumentReference implementation of the \r\n- ebRIM implementation at [3:4.2.3.2 Document Entry](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.2).\r\n- with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)",
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
      "identity" : "DocumentEntry-Mapping",
      "uri" : "urn:ihe:iti:xds:documententry",
      "name" : "XDS and MHD Mapping"
    },
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "fhircomposition",
      "uri" : "http://hl7.org/fhir/composition",
      "name" : "FHIR Composition"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "xds",
      "uri" : "http://ihe.net/xds",
      "name" : "XDS metadata equivalent"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 V2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.DocumentReference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "DocumentReference",
        "path" : "DocumentReference"
      },
      {
        "id" : "DocumentReference.type",
        "path" : "DocumentReference.type",
        "min" : 1
      },
      {
        "id" : "DocumentReference.category",
        "path" : "DocumentReference.category",
        "min" : 1
      },
      {
        "id" : "DocumentReference.subject",
        "path" : "DocumentReference.subject",
        "min" : 1
      },
      {
        "id" : "DocumentReference.facilityType",
        "path" : "DocumentReference.facilityType",
        "min" : 1
      },
      {
        "id" : "DocumentReference.practiceSetting",
        "path" : "DocumentReference.practiceSetting",
        "min" : 1
      },
      {
        "id" : "DocumentReference.securityLabel",
        "path" : "DocumentReference.securityLabel",
        "min" : 1
      },
      {
        "id" : "DocumentReference.content.attachment.language",
        "path" : "DocumentReference.content.attachment.language",
        "min" : 1
      },
      {
        "id" : "DocumentReference.content.attachment.creation",
        "path" : "DocumentReference.content.attachment.creation",
        "min" : 1
      },
      {
        "id" : "DocumentReference.content.profile",
        "path" : "DocumentReference.content.profile",
        "min" : 1
      }
    ]
  }
}

```
