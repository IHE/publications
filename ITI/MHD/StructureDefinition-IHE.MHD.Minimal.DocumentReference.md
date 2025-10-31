# MHD DocumentReference Minimal - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MHD DocumentReference Minimal**

## Resource Profile: MHD DocumentReference Minimal 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.DocumentReference | *Version*:4.2.3 |
| Active as of 2025-10-31 | *Computable Name*:MinimalDocumentReference |

 
A profile on the DocumentReference resource for MHD with minimal metadata constraints. 
* MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model,
* the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and
* the use defined here is FHIR DocumentReference implementation of the
* ebRIM implementation at [3:4.2.3.2 Document Entry](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.2).
* with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)
 

**Usages:**

* Derived from this Profile: [MHD DocumentReference Comprehensive UnContained References Option](StructureDefinition-IHE.MHD.UnContained.Comprehensive.DocumentReference.md)
* Use this Profile: [MHD Find Document References Response message](StructureDefinition-IHE.MHD.FindDocumentReferencesResponseMessage.md) and [MHD Minimal Provide Document Bundle](StructureDefinition-IHE.MHD.Minimal.ProvideBundle.md)
* Examples for this Profile: [DocumentReference/ex-DocumentReferenceMinimal](DocumentReference-ex-DocumentReferenceMinimal.md) and [DocumentReference/ex-DocumentReferenceMinimalEncounter](DocumentReference-ex-DocumentReferenceMinimalEncounter.md)
* CapabilityStatements using this Profile: [Document Consumer (client)](CapabilityStatement-IHE.MHD.DocumentConsumer.md) and [Document Responder (server)](CapabilityStatement-IHE.MHD.DocumentResponder.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.MHD.Minimal.DocumentReference)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.Minimal.DocumentReference.csv), [Excel](StructureDefinition-IHE.MHD.Minimal.DocumentReference.xlsx), [Schematron](StructureDefinition-IHE.MHD.Minimal.DocumentReference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.Minimal.DocumentReference",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.DocumentReference",
  "version" : "4.2.3",
  "name" : "MinimalDocumentReference",
  "title" : "MHD DocumentReference Minimal",
  "status" : "active",
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
  "description" : "A profile on the DocumentReference resource for MHD with minimal metadata constraints. \r\n- MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, \r\n- the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and \r\n- the use defined here is FHIR DocumentReference implementation of the \r\n- ebRIM implementation at [3:4.2.3.2 Document Entry](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.2).\r\n- with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)",
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
      "identity" : "DocumentEntry-Mapping",
      "uri" : "urn:ihe:iti:xds:documententry",
      "name" : "XDS and MHD Mapping"
    },
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
        "path" : "DocumentReference",
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "XDS DocumentEntry: Used in the context of the IHE MHD ImplementationGuide"
          }
        ]
      },
      {
        "id" : "DocumentReference.meta.profile",
        "path" : "DocumentReference.meta.profile",
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.limitedMetadata"
          }
        ]
      },
      {
        "id" : "DocumentReference.modifierExtension",
        "path" : "DocumentReference.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "DocumentReference.masterIdentifier",
        "path" : "DocumentReference.masterIdentifier",
        "min" : 1,
        "type" : [
          {
            "code" : "Identifier",
            "profile" : [
              "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UniqueIdIdentifier"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.uniqueId"
          }
        ]
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
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.entryUUID"
          }
        ]
      },
      {
        "id" : "DocumentReference.identifier:entryUUID",
        "path" : "DocumentReference.identifier",
        "sliceName" : "entryUUID",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier",
            "profile" : [
              "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.EntryUUID.Identifier"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.status",
        "path" : "DocumentReference.status",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://profiles.ihe.net/ITI/MHD/ValueSet/DocumentReferenceStats"
        },
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.availabilityStatus"
          }
        ]
      },
      {
        "id" : "DocumentReference.docStatus",
        "path" : "DocumentReference.docStatus",
        "max" : "0"
      },
      {
        "id" : "DocumentReference.type",
        "path" : "DocumentReference.type",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.typeCode"
          }
        ]
      },
      {
        "id" : "DocumentReference.category",
        "path" : "DocumentReference.category",
        "max" : "1",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.classCode"
          }
        ]
      },
      {
        "id" : "DocumentReference.subject",
        "path" : "DocumentReference.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
          }
        ],
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.patientId"
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
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.author"
          }
        ]
      },
      {
        "id" : "DocumentReference.authenticator",
        "path" : "DocumentReference.authenticator",
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.legalAuthenticator"
          }
        ]
      },
      {
        "id" : "DocumentReference.custodian",
        "path" : "DocumentReference.custodian",
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "not mapped"
          }
        ]
      },
      {
        "id" : "DocumentReference.relatesTo",
        "path" : "DocumentReference.relatesTo",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry Associations"
          }
        ]
      },
      {
        "id" : "DocumentReference.relatesTo.code",
        "path" : "DocumentReference.relatesTo.code",
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry Associations.type"
          }
        ]
      },
      {
        "id" : "DocumentReference.relatesTo.target",
        "path" : "DocumentReference.relatesTo.target",
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry Associations.reference"
          }
        ]
      },
      {
        "id" : "DocumentReference.description",
        "path" : "DocumentReference.description",
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.comments"
          }
        ]
      },
      {
        "id" : "DocumentReference.securityLabel",
        "path" : "DocumentReference.securityLabel",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.confidentialityCode"
          }
        ]
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
        "min" : 1,
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.mimeType"
          }
        ]
      },
      {
        "id" : "DocumentReference.content.attachment.language",
        "path" : "DocumentReference.content.attachment.language",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.languageCode"
          }
        ]
      },
      {
        "id" : "DocumentReference.content.attachment.data",
        "path" : "DocumentReference.content.attachment.data",
        "max" : "0"
      },
      {
        "id" : "DocumentReference.content.attachment.url",
        "path" : "DocumentReference.content.attachment.url",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.repositoryUniqueId+DocumentEntry.uniqueId or DocumentEntry.URI"
          }
        ]
      },
      {
        "id" : "DocumentReference.content.attachment.size",
        "path" : "DocumentReference.content.attachment.size",
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.size"
          }
        ]
      },
      {
        "id" : "DocumentReference.content.attachment.hash",
        "path" : "DocumentReference.content.attachment.hash",
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.hash"
          }
        ]
      },
      {
        "id" : "DocumentReference.content.attachment.title",
        "path" : "DocumentReference.content.attachment.title",
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.title"
          }
        ]
      },
      {
        "id" : "DocumentReference.content.attachment.creation",
        "path" : "DocumentReference.content.attachment.creation",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.creationTime"
          }
        ]
      },
      {
        "id" : "DocumentReference.content.format",
        "path" : "DocumentReference.content.format",
        "mustSupport" : true,
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://ihe.net/fhir/ihe.formatcode.fhir/ValueSet/formatcode"
        },
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.formatCode"
          }
        ]
      },
      {
        "id" : "DocumentReference.context.encounter",
        "path" : "DocumentReference.context.encounter",
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.referenceIdList with CXi encoding for urn:ihe:iti:xds:2015:encounterId"
          }
        ]
      },
      {
        "id" : "DocumentReference.context.event",
        "path" : "DocumentReference.context.event",
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.eventCodeList"
          }
        ]
      },
      {
        "id" : "DocumentReference.context.period",
        "path" : "DocumentReference.context.period",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.context.period.start",
        "path" : "DocumentReference.context.period.start",
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.serviceStartTime"
          }
        ]
      },
      {
        "id" : "DocumentReference.context.period.end",
        "path" : "DocumentReference.context.period.end",
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.serviceStopTime"
          }
        ]
      },
      {
        "id" : "DocumentReference.context.facilityType",
        "path" : "DocumentReference.context.facilityType",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.healthcareFacilityTypeCode"
          }
        ]
      },
      {
        "id" : "DocumentReference.context.practiceSetting",
        "path" : "DocumentReference.context.practiceSetting",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.practiceSettingCode"
          }
        ]
      },
      {
        "id" : "DocumentReference.context.sourcePatientInfo",
        "path" : "DocumentReference.context.sourcePatientInfo",
        "mustSupport" : true
      },
      {
        "id" : "DocumentReference.context.sourcePatientInfo.reference",
        "path" : "DocumentReference.context.sourcePatientInfo.reference",
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.sourcePatientInfo"
          }
        ]
      },
      {
        "id" : "DocumentReference.context.sourcePatientInfo.identifier",
        "path" : "DocumentReference.context.sourcePatientInfo.identifier",
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.sourcePatientId"
          }
        ]
      },
      {
        "id" : "DocumentReference.context.related",
        "path" : "DocumentReference.context.related",
        "mapping" : [
          {
            "identity" : "DocumentEntry-Mapping",
            "map" : "DocumentEntry.referenceIdList using CXi encoding for type when possible"
          }
        ]
      }
    ]
  }
}

```
