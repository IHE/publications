# Document Source (publisher) implementing the Generate Metadata Option - Mobile access to Health Documents (MHD) v4.2.5-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Document Source (publisher) implementing the Generate Metadata Option**

## CapabilityStatement: Document Source (publisher) implementing the Generate Metadata Option 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.DocumentSource.Generate | *Version*:4.2.5-comment |
| Active as of 2026-06-16 | *Computable Name*:IHE_MHD_DocumentSource_Generate |

 
IHE ITI Mobile access to Health Documents (MHD) - Document Source (publisher) - with the Generate Metadata declared Options and may also declare other Options. 

This is the **Requirements** CapabilityStatement for a [Document Source](1331_actors_and_transactions.md#133111-document-source) with the Generate Metadata Option declared [Option](1332_actor_options.md).

The [Document Source](1331_actors_and_transactions.md#133111-document-source) uses the [Generate Metadata ITI-106](ITI-106.md) to communicate a document to the [Document Recipient](1331_actors_and_transactions.md#133113-document-recipient) to have a DocumentReference generated and processed.

**Figure: Generate Metadata Interactions**

 [Raw OpenAPI-Swagger Definition file](IHE.MHD.DocumentSource.Generate.openapi.json) | [Download](IHE.MHD.DocumentSource.Generate.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.MHD.DocumentSource.Generate",
  "url" : "https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.DocumentSource.Generate",
  "version" : "4.2.5-comment",
  "name" : "IHE_MHD_DocumentSource_Generate",
  "title" : "Document Source (publisher) implementing the Generate Metadata Option",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-16T19:25:56-05:00",
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
  "description" : "IHE ITI Mobile access to Health Documents (MHD) - Document Source (publisher) - with the Generate Metadata declared Options and may also declare other Options.",
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
    "resource" : [{
      "type" : "DocumentReference",
      "operation" : [{
        "name" : "$generate-metadata",
        "definition" : "https://profiles.ihe.net/ITI/MHD/OperationDefinition/generate-metadata"
      }]
    }],
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
