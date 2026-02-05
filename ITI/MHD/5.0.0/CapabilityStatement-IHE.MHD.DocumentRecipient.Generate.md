# Document Recipient implementing Generate Metadata Option - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Document Recipient implementing Generate Metadata Option**

## CapabilityStatement: Document Recipient implementing Generate Metadata Option 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.DocumentRecipient.Generate | *Version*:5.0.0 |
| Active as of 2025-12-18 | *Computable Name*:IHE_MHD_DocumentRecipient_Generate |

 
IHE ITI Mobile access to Health Documents (MHD) - Document Recipient - with Generate Metadata declared Option. 

This is the **Requirements** CapabilityStatement for a [Document Recipient](1331_actors_and_transactions.md#133113-document-recipient) with Generate Metadata Option declared [Option](1332_actor_options.md).

The [Document Source](1331_actors_and_transactions.md#133111-document-source) uses the [Generate Metadata ITI-106](ITI-106.md) to communicate a document to the [Document Recipient](1331_actors_and_transactions.md#133113-document-recipient) to have a DocumentReference generated and processed.

**Figure: Generate Metadata Interactions**

 [Raw OpenAPI-Swagger Definition file](IHE.MHD.DocumentRecipient.Generate.openapi.json) | [Download](IHE.MHD.DocumentRecipient.Generate.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.MHD.DocumentRecipient.Generate",
  "url" : "https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.DocumentRecipient.Generate",
  "version" : "5.0.0",
  "name" : "IHE_MHD_DocumentRecipient_Generate",
  "title" : "Document Recipient implementing Generate Metadata Option",
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
  "description" : "IHE ITI Mobile access to Health Documents (MHD) - Document Recipient - with Generate Metadata declared Option.",
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
      "resource" : [
        {
          "type" : "DocumentReference",
          "operation" : [
            {
              "name" : "$generate-metadata",
              "definition" : "https://profiles.ihe.net/ITI/MHD/OperationDefinition/generate-metadata"
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
