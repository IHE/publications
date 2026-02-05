# MHD SubmissionSet Comprehensive - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MHD SubmissionSet Comprehensive**

## Resource Profile: MHD SubmissionSet Comprehensive 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.SubmissionSet | *Version*:4.2.3 |
| Active as of 2025-10-31 | *Computable Name*:SubmissionSetComprehensive |

 
A profile on the List resource for MHD Comprehensive SubmissionSet. 
* MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model,
* the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and
* the use defined here is FHIR List for use as a SubmissionSet implementation of the
* ebRIM implementation at [3:4.2.3.3 SubmissionSet Attributes](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.3).
* with use-cases and constraints found in [3:4.3.1 Submission Metadata Attribute Optionality](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3.1) for 
* MHD Comprehensive Option Document Source
* aka the XDS Document Source requirements
* aka the XDR Document Source requirements
 
 

**Usages:**

* Use this Profile: [MHD Comprehensive Provide Document Bundle](StructureDefinition-IHE.MHD.Comprehensive.ProvideBundle.md)
* Examples for this Profile: [List/ex-compEmailPackage](List-ex-compEmailPackage.md) and [List/ex-compSubmissionSetList](List-ex-compSubmissionSetList.md)
* CapabilityStatements using this Profile: [Document Responder (server)](CapabilityStatement-IHE.MHD.DocumentResponder.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.MHD.Comprehensive.SubmissionSet)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.Comprehensive.SubmissionSet.csv), [Excel](StructureDefinition-IHE.MHD.Comprehensive.SubmissionSet.xlsx), [Schematron](StructureDefinition-IHE.MHD.Comprehensive.SubmissionSet.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.Comprehensive.SubmissionSet",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.SubmissionSet",
  "version" : "4.2.3",
  "name" : "SubmissionSetComprehensive",
  "title" : "MHD SubmissionSet Comprehensive",
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
  "description" : "A profile on the List resource for MHD Comprehensive SubmissionSet.\r\n- MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, \r\n- the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and \r\n- the use defined here is FHIR List for use as a SubmissionSet implementation of the \r\n- ebRIM implementation at [3:4.2.3.3 SubmissionSet Attributes](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.3).\r\n- with use-cases and constraints found in [3:4.3.1 Submission Metadata Attribute Optionality](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3.1) for \r\n  - MHD Comprehensive Option Document Source\r\n  - aka the XDS Document Source requirements\r\n  - aka the XDR Document Source requirements",
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
  "baseDefinition" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.SubmissionSet",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "List.source",
        "path" : "List.source",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Practitioner",
              "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
              "http://hl7.org/fhir/StructureDefinition/Patient",
              "http://hl7.org/fhir/StructureDefinition/Device"
            ],
            "aggregation" : ["contained"]
          }
        ]
      }
    ]
  }
}

```
