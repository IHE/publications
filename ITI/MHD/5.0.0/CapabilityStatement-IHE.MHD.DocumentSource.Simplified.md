# Document Source (publisher) implementing the Simplified Publish Option - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Document Source (publisher) implementing the Simplified Publish Option**

## CapabilityStatement: Document Source (publisher) implementing the Simplified Publish Option 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.DocumentSource.Simplified | *Version*:5.0.0 |
| Active as of 2025-12-18 | *Computable Name*:IHE_MHD_DocumentSource_Simplified |

 
IHE ITI Mobile access to Health Documents (MHD) - Document Source (publisher) - with the Simplified Publication declared Options and may also declare other Options. 

This is the **Requirements** CapabilityStatement for a [Document Source](1331_actors_and_transactions.md#133111-document-source) with the Simplified Publish Option declared [Option](1332_actor_options.md).

The [Document Source](1331_actors_and_transactions.md#133111-document-source) uses the [Simplified Publish ITI-105](ITI-105.md) to communicate metadata and a document to the [Document Recipient](1331_actors_and_transactions.md#133113-document-recipient).

**Figure: Simplified Publish Interactions**

 [Raw OpenAPI-Swagger Definition file](IHE.MHD.DocumentSource.Simplified.openapi.json) | [Download](IHE.MHD.DocumentSource.Simplified.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.MHD.DocumentSource.Simplified",
  "url" : "https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.DocumentSource.Simplified",
  "version" : "5.0.0",
  "name" : "IHE_MHD_DocumentSource_Simplified",
  "title" : "Document Source (publisher) implementing the Simplified Publish Option",
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
  "description" : "IHE ITI Mobile access to Health Documents (MHD) - Document Source (publisher) - with the Simplified Publication declared Options and may also declare other Options.",
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
