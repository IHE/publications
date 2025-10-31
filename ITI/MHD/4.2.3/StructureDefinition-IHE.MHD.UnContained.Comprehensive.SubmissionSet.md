# MHD SubmissionSet Comprehensive UnContained - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MHD SubmissionSet Comprehensive UnContained**

## Resource Profile: MHD SubmissionSet Comprehensive UnContained 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.SubmissionSet | *Version*:4.2.3 |
| Active as of 2025-10-31 | *Computable Name*:SubmissionSetComprehensiveUnContained |

 
A profile on the List resource for MHD UnContained Comprehensive SubmissionSet. 
* MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model,
* the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and
* the use defined here is FHIR List for use as a SubmissionSet implementation of the
* ebRIM implementation at [3:4.2.3.3 SubmissionSet Attributes](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.3).
* with use-cases and constraints found in [3:4.3.1 Submission Metadata Attribute Optionality](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3.1) for 
* MHD Document Source that has implemented both Comprehensive Metadata Option and UnContained References Option
 
 

**Usages:**

* Derived from this Profile: [MHD SubmissionSet Comprehensive](StructureDefinition-IHE.MHD.Comprehensive.SubmissionSet.md)
* Use this Profile: [MHD UnContained Comprehensive Provide Document Bundle](StructureDefinition-IHE.MHD.UnContained.Comprehensive.ProvideBundle.md)
* Examples for this Profile: [List/ex-compSubmissionSetFullUnContained](List-ex-compSubmissionSetFullUnContained.md)
* CapabilityStatements using this Profile: [Document Responder (server)](CapabilityStatement-IHE.MHD.DocumentResponder.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.MHD.UnContained.Comprehensive.SubmissionSet)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.UnContained.Comprehensive.SubmissionSet.csv), [Excel](StructureDefinition-IHE.MHD.UnContained.Comprehensive.SubmissionSet.xlsx), [Schematron](StructureDefinition-IHE.MHD.UnContained.Comprehensive.SubmissionSet.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.UnContained.Comprehensive.SubmissionSet",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.SubmissionSet",
  "version" : "4.2.3",
  "name" : "SubmissionSetComprehensiveUnContained",
  "title" : "MHD SubmissionSet Comprehensive UnContained",
  "status" : "active",
  "date" : "2025-10-31T10:59:52-05:00",
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
  "description" : "A profile on the List resource for MHD UnContained Comprehensive SubmissionSet.\r\n- MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, \r\n- the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and \r\n- the use defined here is FHIR List for use as a SubmissionSet implementation of the \r\n- ebRIM implementation at [3:4.2.3.3 SubmissionSet Attributes](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.3).\r\n- with use-cases and constraints found in [3:4.3.1 Submission Metadata Attribute Optionality](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3.1) for \r\n  - MHD Document Source that has implemented both Comprehensive Metadata Option and UnContained References Option",
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
      "identity" : "SubmissionSet-Mapping",
      "uri" : "urn:ihe:iti:xds:submissionset",
      "name" : "XDS and MHD Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "List",
  "baseDefinition" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.SubmissionSet",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "List.extension",
        "path" : "List.extension",
        "min" : 2
      },
      {
        "id" : "List.extension:designationType",
        "path" : "List.extension",
        "sliceName" : "designationType",
        "min" : 1
      },
      {
        "id" : "List.subject",
        "path" : "List.subject",
        "min" : 1
      }
    ]
  }
}

```
