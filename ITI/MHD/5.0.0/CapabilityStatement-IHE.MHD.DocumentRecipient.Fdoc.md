# Document Recipient implementing ITI-65 FHIR Documents Publish Option - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Document Recipient implementing ITI-65 FHIR Documents Publish Option**

## CapabilityStatement: Document Recipient implementing ITI-65 FHIR Documents Publish Option 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.DocumentRecipient.Fdoc | *Version*:5.0.0 |
| Active as of 2025-12-18 | *Computable Name*:IHE_MHD_DocumentRecipient_Fdoc |

 
IHE ITI Mobile access to Health Documents (MHD) - Document Recipient - with ITI-65 FHIR Documents Publish declared Option. 

 [Raw OpenAPI-Swagger Definition file](IHE.MHD.DocumentRecipient.Fdoc.openapi.json) | [Download](IHE.MHD.DocumentRecipient.Fdoc.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.MHD.DocumentRecipient.Fdoc",
  "url" : "https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.DocumentRecipient.Fdoc",
  "version" : "5.0.0",
  "name" : "IHE_MHD_DocumentRecipient_Fdoc",
  "title" : "Document Recipient implementing ITI-65 FHIR Documents Publish Option",
  "status" : "active",
  "experimental" : false,
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
  "description" : "IHE ITI Mobile access to Health Documents (MHD) - Document Recipient - with ITI-65 FHIR Documents Publish declared Option.",
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
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["application/fhir+xml", "application/fhir+json"],
  "rest" : [
    {
      "mode" : "server",
      "security" : {
        "description" : "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or SMART-on-FHIR"
      },
      "interaction" : [
        {
          "code" : "transaction",
          "documentation" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.ProvideBundle"
        },
        {
          "code" : "transaction",
          "documentation" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.ProvideBundle"
        },
        {
          "code" : "transaction",
          "documentation" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.ProvideBundle"
        }
      ]
    }
  ]
}

```
