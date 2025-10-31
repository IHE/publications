# MHD DocumentReference for Simplified Publish - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MHD DocumentReference for Simplified Publish**

## Resource Profile: MHD DocumentReference for Simplified Publish 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.SimplifiedPublish.DocumentReference | *Version*:5.0.0-comment |
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
  "version" : "5.0.0-comment",
  "name" : "SimplifiedPublishDocumentReference",
  "title" : "MHD DocumentReference for Simplified Publish",
  "status" : "active",
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
  "description" : "A profile on the DocumentReference resource for MHD Simplified Publish constraints. \n- MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, \n- the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and \n- the use defined here is FHIR DocumentReference implementation of the \n- ebRIM implementation at [3:4.2.3.2 Document Entry](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.2).\n- with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)\n\nSimplified Publish\n- Similar to Minimal Metadata constraints\n  - must be status current\n  - must have a patient indicated\n- uses attachment.data to carry the document, rather than attachment.url\n  - so that the Simplified Publish is a simple POST of the DocumentReference\n  - Document Recipient is expected to extract the .data, use .url",
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
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
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
      "identity" : "xds",
      "uri" : "http://ihe.net/xds",
      "name" : "XDS metadata equivalent"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 V2 Mapping"
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
        "id" : "DocumentReference.extension",
        "path" : "DocumentReference.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "DocumentReference.extension:sourcePatientInfo",
        "path" : "DocumentReference.extension",
        "sliceName" : "sourcePatientInfo",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/documentreference-sourcepatient"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.modifierExtension",
        "path" : "DocumentReference.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "DocumentReference.identifier",
        "path" : "DocumentReference.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "use"
            }
          ],
          "rules" : "open"
        },
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.identifier:uniqueId",
        "path" : "DocumentReference.identifier",
        "sliceName" : "uniqueId",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier",
            "profile" : [
              "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UniqueIdIdentifier"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.identifier:uniqueId.use",
        "path" : "DocumentReference.identifier.use",
        "min" : 1,
        "patternCode" : "usual"
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
        "id" : "DocumentReference.event.concept",
        "path" : "DocumentReference.event.concept",
        "min" : 1
      },
      {
        "id" : "DocumentReference.facilityType",
        "path" : "DocumentReference.facilityType",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.practiceSetting",
        "path" : "DocumentReference.practiceSetting",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.period",
        "path" : "DocumentReference.period",
        "mustSupport" : true
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
        "id" : "DocumentReference.attester",
        "path" : "DocumentReference.attester",
        "max" : "1"
      },
      {
        "id" : "DocumentReference.attester.party",
        "path" : "DocumentReference.attester.party",
        "min" : 1
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
        "id" : "DocumentReference.content.profile",
        "path" : "DocumentReference.content.profile",
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.content.profile.value[x]",
        "path" : "DocumentReference.content.profile.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "DocumentReference.content.profile.value[x]:valueCoding",
        "path" : "DocumentReference.content.profile.value[x]",
        "sliceName" : "valueCoding",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      }
    ]
  }
}

```
