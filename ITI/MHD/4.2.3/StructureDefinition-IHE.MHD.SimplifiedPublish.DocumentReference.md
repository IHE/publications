# MHD DocumentReference for Simplified Publish - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MHD DocumentReference for Simplified Publish**

## Resource Profile: MHD DocumentReference for Simplified Publish 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.SimplifiedPublish.DocumentReference | *Version*:4.2.3 |
| Active as of 2025-10-31 | *Computable Name*:SimplifiedPublishDocumentReference |

 
A profile on the DocumentReference resource for MHD Simplified Publish constraints. 
* MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model,
* the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and
* the use defined here is FHIR DocumentReference implementation of the
* ebRIM implementation at [3:4.2.3.2 Document Entry](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.2).
* with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)
 
Simplified Publish 
* Similar to Minimal Metadata constraints 
* must be status current
* must have a patient indicated
 
* uses attachment.data to carry the document, rather than attachment.url 
* so that the Simplified Publish is a simple POST of the DocumentReference
* Document Recipient is expected to extract the .data, use .url
 
 

**Usages:**

* Examples for this Profile: [DocumentReference/ex-DocumentReferenceSimplifiedPublish](DocumentReference-ex-DocumentReferenceSimplifiedPublish.md)
* CapabilityStatements using this Profile: [Document Recipient implementing Simplified Publish Option](CapabilityStatement-IHE.MHD.DocumentRecipient.Simplified.md) and [Document Source (publisher) implementing the Simplified Publish Option](CapabilityStatement-IHE.MHD.DocumentSource.Simplified.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.MHD.SimplifiedPublish.DocumentReference)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.SimplifiedPublish.DocumentReference.csv), [Excel](StructureDefinition-IHE.MHD.SimplifiedPublish.DocumentReference.xlsx), [Schematron](StructureDefinition-IHE.MHD.SimplifiedPublish.DocumentReference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.SimplifiedPublish.DocumentReference",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.SimplifiedPublish.DocumentReference",
  "version" : "4.2.3",
  "name" : "SimplifiedPublishDocumentReference",
  "title" : "MHD DocumentReference for Simplified Publish",
  "status" : "active",
  "date" : "2025-10-31T14:32:55-05:00",
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
  "description" : "A profile on the DocumentReference resource for MHD Simplified Publish constraints. \n- MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, \n- the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and \n- the use defined here is FHIR DocumentReference implementation of the \n- ebRIM implementation at [3:4.2.3.2 Document Entry](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.2).\n- with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)\n\nSimplified Publish\n- Similar to Minimal Metadata constraints\n  - must be status current\n  - must have a patient indicated\n- uses attachment.data to carry the document, rather than attachment.url\n  - so that the Simplified Publish is a simple POST of the DocumentReference\n  - Document Recipient is expected to extract the .data, use .url",
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
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "fhircomposition",
      "uri" : "http://hl7.org/fhir/composition",
      "name" : "FHIR Composition"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "xds",
      "uri" : "http://ihe.net/xds",
      "name" : "XDS metadata equivalent"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DocumentReference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "DocumentReference",
        "path" : "DocumentReference"
      },
      {
        "id" : "DocumentReference.modifierExtension",
        "path" : "DocumentReference.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "DocumentReference.masterIdentifier",
        "path" : "DocumentReference.masterIdentifier",
        "min" : 1
      },
      {
        "id" : "DocumentReference.identifier",
        "path" : "DocumentReference.identifier",
        "max" : "0"
      },
      {
        "id" : "DocumentReference.status",
        "path" : "DocumentReference.status",
        "patternCode" : "current"
      },
      {
        "id" : "DocumentReference.docStatus",
        "path" : "DocumentReference.docStatus",
        "max" : "0"
      },
      {
        "id" : "DocumentReference.type",
        "path" : "DocumentReference.type",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.category",
        "path" : "DocumentReference.category",
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.subject",
        "path" : "DocumentReference.subject",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
          }
        ]
      },
      {
        "id" : "DocumentReference.date",
        "path" : "DocumentReference.date",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.author",
        "path" : "DocumentReference.author",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.relatesTo",
        "path" : "DocumentReference.relatesTo",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.securityLabel",
        "path" : "DocumentReference.securityLabel",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.content",
        "path" : "DocumentReference.content",
        "definition" : "The document and format referenced.",
        "max" : "1"
      },
      {
        "id" : "DocumentReference.content.attachment.contentType",
        "path" : "DocumentReference.content.attachment.contentType",
        "min" : 1
      },
      {
        "id" : "DocumentReference.content.attachment.language",
        "path" : "DocumentReference.content.attachment.language",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.content.attachment.data",
        "path" : "DocumentReference.content.attachment.data",
        "short" : "The document is contained in the .data element, base64 encoded",
        "min" : 1
      },
      {
        "id" : "DocumentReference.content.attachment.url",
        "path" : "DocumentReference.content.attachment.url",
        "max" : "0"
      },
      {
        "id" : "DocumentReference.content.attachment.creation",
        "path" : "DocumentReference.content.attachment.creation",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.content.format",
        "path" : "DocumentReference.content.format",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.context.period",
        "path" : "DocumentReference.context.period",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.context.facilityType",
        "path" : "DocumentReference.context.facilityType",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.context.practiceSetting",
        "path" : "DocumentReference.context.practiceSetting",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.context.sourcePatientInfo",
        "path" : "DocumentReference.context.sourcePatientInfo",
        "mustSupport" : true
      }
    ]
  }
}

```
