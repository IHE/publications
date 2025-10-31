# Document Recipient - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Document Recipient**

## CapabilityStatement: Document Recipient 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.DocumentRecipient | *Version*:4.2.3 |
| Active as of 2025-10-31 | *Computable Name*:IHE_MHD_DocumentRecipient |

 
IHE ITI Mobile access to Health Documents (MHD) - Document Recipient - with no declared Options or all declared Options. 

This is the **Requirements** CapabilityStatement for a [Document Recipient](1331_actors_and_transactions.md#133113-document-recipient) with no declared [Options](1332_actor_options.md), or all declared [Options](1332_actor_options.md). This Actor is allowed to use Minimal Metadata, [Comprehensive Metadata](1332_actor_options.md#13321-comprehensive-metadata-option) Option, [XDS on FHIR](1332_actor_options.md#13322-xds-on-fhir-option) Option, or [UnContained Comprehensive Metadata](1332_actor_options.md#13323-uncontained-reference-option).

The [Document Source](1331_actors_and_transactions.md#133111-document-source) uses the [Provide Document Bundle ITI-65](ITI-65.md) to communicate metadata and documents to the [Document Recipient](1331_actors_and_transactions.md#133113-document-recipient).

**Figure: Provide Document Bundle Interactions**

 [Raw OpenAPI-Swagger Definition file](IHE.MHD.DocumentRecipient.openapi.json) | [Download](IHE.MHD.DocumentRecipient.openapi.json) 

## Document Recipient

* Implementation Guide Version: 4.2.3 
* FHIR Version: 4.0.1 
* Supported Formats: `application/fhir+xml`, `application/fhir+json`
* Published on: 2025-10-31 10:59:52-0500 
* Published by: IHE IT Infrastructure Technical Committee 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

## FHIR RESTful Capabilities

### Mode: server

**Security**

> 

Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or SMART-on-FHIR


**Summary of System-wide Interactions**

* Supports the `transaction`interaction described as follows:

https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.ProvideBundle


* Supports the `transaction`interaction described as follows:

https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.ProvideBundle


* Supports the `transaction`interaction described as follows:

https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.ProvideBundle




## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.MHD.DocumentRecipient",
  "url" : "https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.DocumentRecipient",
  "version" : "4.2.3",
  "name" : "IHE_MHD_DocumentRecipient",
  "title" : "Document Recipient",
  "status" : "active",
  "experimental" : false,
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
  "description" : "IHE ITI Mobile access to Health Documents (MHD) - Document Recipient - with no declared Options or all declared Options.",
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
