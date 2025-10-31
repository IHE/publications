# Document Source (publisher) implementing Comprehensive Metadata Option - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Document Source (publisher) implementing Comprehensive Metadata Option**

## CapabilityStatement: Document Source (publisher) implementing Comprehensive Metadata Option 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.DocumentSource.Comprehensive | *Version*:5.0.0-comment |
| Active as of 2025-10-31 | *Computable Name*:IHE_MHD_DocumentSource_Comprehensive |

 
IHE ITI Mobile access to Health Documents (MHD) - Document Source (publisher) - with Comprehensive Metadata Option. 

This is the **Requirements** CapabilityStatement for a [Document Source](1331_actors_and_transactions.md#133111-document-source) with the Comprehensive Metadata Option declared [Option](1332_actor_options.md). This actor must use [Comprehensive Metadata](1332_actor_options.md#13321-comprehensive-metadata-option) Option. Note that [XDS on FHIR](1332_actor_options.md#13322-xds-on-fhir-option) Option requires the Comprehensive Metadata Option.

The [Document Source](1331_actors_and_transactions.md#133111-document-source) uses the [Provide Document Bundle ITI-65](ITI-65.md) to communicate metadata and documents to the [Document Recipient](1331_actors_and_transactions.md#133113-document-recipient).

**Figure: Provide Document Bundle Interactions**

 [Raw OpenAPI-Swagger Definition file](IHE.MHD.DocumentSource.Comprehensive.openapi.json) | [Download](IHE.MHD.DocumentSource.Comprehensive.openapi.json) 

## Document Source (publisher) implementing Comprehensive Metadata Option

* Implementation Guide Version: 5.0.0-comment 
* FHIR Version: 4.0.1 
* Supported Formats: `application/fhir+xml`, `application/fhir+json`
* Published on: 2025-10-31 11:44:01-0500 
* Published by: IHE IT Infrastructure Technical Committee 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

## FHIR RESTful Capabilities

### Mode: client

**Security**

> 

Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or SMART-on-FHIR


**Summary of System-wide Interactions**

* Supports the `transaction`interaction described as follows:

https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.ProvideBundle




## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.MHD.DocumentSource.Comprehensive",
  "url" : "https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.DocumentSource.Comprehensive",
  "version" : "5.0.0-comment",
  "name" : "IHE_MHD_DocumentSource_Comprehensive",
  "title" : "Document Source (publisher) implementing Comprehensive Metadata Option",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-31T11:44:01-05:00",
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
  "description" : "IHE ITI Mobile access to Health Documents (MHD) - Document Source (publisher) - with Comprehensive Metadata Option.",
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
      "mode" : "client",
      "security" : {
        "description" : "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or SMART-on-FHIR"
      },
      "interaction" : [
        {
          "code" : "transaction",
          "documentation" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.ProvideBundle"
        }
      ]
    }
  ]
}

```
