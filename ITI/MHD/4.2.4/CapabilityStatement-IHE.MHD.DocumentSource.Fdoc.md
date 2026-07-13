# Document Source (publisher) implementing ITI-65 FHIR Documents Publish Option - Mobile access to Health Documents (MHD) v4.2.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Document Source (publisher) implementing ITI-65 FHIR Documents Publish Option**

## CapabilityStatement: Document Source (publisher) implementing ITI-65 FHIR Documents Publish Option 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.DocumentSource.Fdoc | *Version*:4.2.4 |
| Active as of 2026-06-15 | *Computable Name*:IHE_MHD_DocumentSource_Fdoc |

 
IHE ITI Mobile access to Health Documents (MHD) - Document Source (publisher) - with ITI-65 FHIR Documents Publish Option. 

 [Raw OpenAPI-Swagger Definition file](IHE.MHD.DocumentSource.Fdoc.openapi.json) | [Download](IHE.MHD.DocumentSource.Fdoc.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.MHD.DocumentSource.Fdoc",
  "url" : "https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.DocumentSource.Fdoc",
  "version" : "4.2.4",
  "name" : "IHE_MHD_DocumentSource_Fdoc",
  "title" : "Document Source (publisher) implementing ITI-65 FHIR Documents Publish Option",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-15T14:51:09-05:00",
  "publisher" : "IHE IT Infrastructure Technical Committee",
  "contact" : [{
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ihe.net/ihe_domains/it_infrastructure/"
    }]
  },
  {
    "telecom" : [{
      "system" : "email",
      "value" : "iti@ihe.net"
    }]
  },
  {
    "name" : "IHE IT Infrastructure Technical Committee",
    "telecom" : [{
      "system" : "email",
      "value" : "iti@ihe.net"
    }]
  }],
  "description" : "IHE ITI Mobile access to Health Documents (MHD) - Document Source (publisher) - with ITI-65 FHIR Documents Publish Option.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["application/fhir+xml", "application/fhir+json"],
  "rest" : [{
    "mode" : "client",
    "security" : {
      "description" : "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or SMART-on-FHIR"
    },
    "interaction" : [{
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
    }]
  }]
}

```
