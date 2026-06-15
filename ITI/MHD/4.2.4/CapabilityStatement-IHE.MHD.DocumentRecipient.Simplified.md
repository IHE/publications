# Document Recipient implementing Simplified Publish Option - Mobile access to Health Documents (MHD) v4.2.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Document Recipient implementing Simplified Publish Option**

## CapabilityStatement: Document Recipient implementing Simplified Publish Option 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.DocumentRecipient.Simplified | *Version*:4.2.4 |
| Active as of 2026-06-15 | *Computable Name*:IHE_MHD_DocumentRecipient_Simplified |

 
IHE ITI Mobile access to Health Documents (MHD) - Document Recipient - with Simplified Publish declared Option. 

This is the **Requirements** CapabilityStatement for a [Document Recipient](1331_actors_and_transactions.md#133113-document-recipient) with Simplified Publish Option declared [Option](1332_actor_options.md).

The [Document Source](1331_actors_and_transactions.md#133111-document-source) uses the [Simplified Publish ITI-105](ITI-105.md) to communicate metadata and a document to the [Document Recipient](1331_actors_and_transactions.md#133113-document-recipient).

**Figure: Simplified Publish Interactions**

 [Raw OpenAPI-Swagger Definition file](IHE.MHD.DocumentRecipient.Simplified.openapi.json) | [Download](IHE.MHD.DocumentRecipient.Simplified.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.MHD.DocumentRecipient.Simplified",
  "url" : "https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.DocumentRecipient.Simplified",
  "version" : "4.2.4",
  "name" : "IHE_MHD_DocumentRecipient_Simplified",
  "title" : "Document Recipient implementing Simplified Publish Option",
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
  "description" : "IHE ITI Mobile access to Health Documents (MHD) - Document Recipient - with Simplified Publish declared Option.",
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
    "mode" : "server",
    "security" : {
      "description" : "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or SMART-on-FHIR"
    },
    "resource" : [{
      "type" : "DocumentReference",
      "profile" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.SimplifiedPublish.DocumentReference",
      "interaction" : [{
        "code" : "create"
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
