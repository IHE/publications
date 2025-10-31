# Document Source (publisher) implementing the Simplified Publish Option - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Document Source (publisher) implementing the Simplified Publish Option**

## CapabilityStatement: Document Source (publisher) implementing the Simplified Publish Option 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.DocumentSource.Simplified | *Version*:4.2.3 |
| Active as of 2025-10-31 | *Computable Name*:IHE_MHD_DocumentSource_Simplified |

 
IHE ITI Mobile access to Health Documents (MHD) - Document Source (publisher) - with the Simplified Publication declared Options and may also declare other Options. 

This is the **Requirements** CapabilityStatement for a [Document Source](1331_actors_and_transactions.md#133111-document-source) with the Simplified Publish Option declared [Option](1332_actor_options.md).

The [Document Source](1331_actors_and_transactions.md#133111-document-source) uses the [Simplified Publish ITI-105](ITI-105.md) to communicate metadata and a document to the [Document Recipient](1331_actors_and_transactions.md#133113-document-recipient).

**Figure: Simplified Publish Interactions**

 [Raw OpenAPI-Swagger Definition file](IHE.MHD.DocumentSource.Simplified.openapi.json) | [Download](IHE.MHD.DocumentSource.Simplified.openapi.json) 

## Document Source (publisher) implementing the Simplified Publish Option

* Implementation Guide Version: 4.2.3 
* FHIR Version: 4.0.1 
* Supported Formats: `application/fhir+xml`, `application/fhir+json`
* Published on: 2025-10-31 11:05:31-0500 
* Published by: IHE IT Infrastructure Technical Committee 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

## FHIR RESTful Capabilities

### Mode: client

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


### Capabilities by Resource/Profile

#### Summary

The summary table lists the resources that are part of this configuration, and for each resource it lists:

* The relevant profiles (if any)
* The interactions supported by each resource (**R**ead, **S**earch, **U**pdate, and **C**reate, are always shown, while **VR**ead, **P**atch, **D**elete, **H**istory on **I**nstance, or **H**istory on **T**ype are only present if at least one of the resources has support for them.
* The required, recommended, and some optional search parameters (if any).
* The linked resources enabled for `_include`
* The other resources enabled for `_revinclude`
* The operations on the resource (if any)

| | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [DocumentReference](#DocumentReference1-1) | [https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.SimplifiedPublish.DocumentReference](StructureDefinition-IHE.MHD.SimplifiedPublish.DocumentReference.md) |  |  |  | y |  |  |  |  |

-------

#### Resource Conformance: supported DocumentReference

Base System Profile

[MHD DocumentReference for Simplified Publish](StructureDefinition-IHE.MHD.SimplifiedPublish.DocumentReference.md)

Profile Conformance

**SHALL**

Reference Policy

Interaction summary

* Supports `create`.



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.MHD.DocumentSource.Simplified",
  "url" : "https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.DocumentSource.Simplified",
  "version" : "4.2.3",
  "name" : "IHE_MHD_DocumentSource_Simplified",
  "title" : "Document Source (publisher) implementing the Simplified Publish Option",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-31T11:05:31-05:00",
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
  "description" : "IHE ITI Mobile access to Health Documents (MHD) - Document Source (publisher) - with the Simplified Publication declared Options and may also declare other Options.",
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
      "mode" : "client",
      "security" : {
        "description" : "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or SMART-on-FHIR"
      },
      "resource" : [
        {
          "type" : "DocumentReference",
          "profile" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.SimplifiedPublish.DocumentReference",
          "interaction" : [
            {
              "code" : "create"
            }
          ]
        }
      ],
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
