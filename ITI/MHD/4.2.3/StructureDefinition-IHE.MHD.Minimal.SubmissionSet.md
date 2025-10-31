# MHD SubmissionSet Minimal - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MHD SubmissionSet Minimal**

## Resource Profile: MHD SubmissionSet Minimal 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.SubmissionSet | *Version*:4.2.3 |
| Active as of 2025-10-31 | *Computable Name*:SubmissionSet |

 
A profile on the List resource for MHD SubmissionSet. 
* MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model,
* the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and
* the use defined here is FHIR List for use as a SubmissionSet implementation of the
* ebRIM implementation at [3:4.2.3.3 SubmissionSet Attributes](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.3).
* with use-cases and constraints found in [3:4.3.1 Submission Metadata Attribute Optionality](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3.1) for 
* Document Source implementing not implementing Comprehensive Metadata Option
* Document Source implementing UnContained Option but not Comprehensive Option
* equivalent to XDR Document Source implementing Metadata-Limited Option requirements
* aka the default MHD Document Source
 
 

**Usages:**

* Derived from this Profile: [MHD SubmissionSet Comprehensive UnContained](StructureDefinition-IHE.MHD.UnContained.Comprehensive.SubmissionSet.md)
* Use this Profile: [MHD Find Document Lists Response Message](StructureDefinition-IHE.MHD.FindDocumentListsResponseMessage.md) and [MHD Minimal Provide Document Bundle](StructureDefinition-IHE.MHD.Minimal.ProvideBundle.md)
* Examples for this Profile: [List/ex-compSubmissionSetFull](List-ex-compSubmissionSetFull.md) and [List/ex-minimalSubmissionSet](List-ex-minimalSubmissionSet.md)
* CapabilityStatements using this Profile: [Document Responder (server)](CapabilityStatement-IHE.MHD.DocumentResponder.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.MHD.Minimal.SubmissionSet)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.Minimal.SubmissionSet.csv), [Excel](StructureDefinition-IHE.MHD.Minimal.SubmissionSet.xlsx), [Schematron](StructureDefinition-IHE.MHD.Minimal.SubmissionSet.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.Minimal.SubmissionSet",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.SubmissionSet",
  "version" : "4.2.3",
  "name" : "SubmissionSet",
  "title" : "MHD SubmissionSet Minimal",
  "status" : "active",
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
  "description" : "A profile on the List resource for MHD SubmissionSet.\r\n- MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, \r\n- the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and \r\n- the use defined here is FHIR List for use as a SubmissionSet implementation of the \r\n- ebRIM implementation at [3:4.2.3.3 SubmissionSet Attributes](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.3).\r\n- with use-cases and constraints found in [3:4.3.1 Submission Metadata Attribute Optionality](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3.1) for \r\n  - Document Source implementing not implementing Comprehensive Metadata Option\r\n  - Document Source implementing UnContained Option but not Comprehensive Option\r\n  - equivalent to XDR Document Source implementing Metadata-Limited Option requirements\r\n  - aka the default MHD Document Source",
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
      "identity" : "SubmissionSet-Mapping",
      "uri" : "urn:ihe:iti:xds:submissionset",
      "name" : "XDS and MHD Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "List",
  "baseDefinition" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.List",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "List",
        "path" : "List",
        "mapping" : [
          {
            "identity" : "SubmissionSet-Mapping",
            "map" : "XDS SubmissionSet: Used in the context of the IHE MHD ImplementationGuide"
          }
        ]
      },
      {
        "id" : "List.meta.profile",
        "path" : "List.meta.profile",
        "mapping" : [
          {
            "identity" : "SubmissionSet-Mapping",
            "map" : "SubmissionSet.limitedMetadata"
          }
        ]
      },
      {
        "id" : "List.extension",
        "path" : "List.extension",
        "min" : 1
      },
      {
        "id" : "List.extension:designationType",
        "path" : "List.extension",
        "sliceName" : "designationType",
        "max" : "1",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "SubmissionSet-Mapping",
            "map" : "SubmissionSet.contentTypeCode"
          }
        ]
      },
      {
        "id" : "List.extension:sourceId",
        "path" : "List.extension",
        "sliceName" : "sourceId",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-sourceId"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "SubmissionSet-Mapping",
            "map" : "SubmissionSet.sourceId"
          }
        ]
      },
      {
        "id" : "List.extension:intendedRecipient",
        "path" : "List.extension",
        "sliceName" : "intendedRecipient",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-intendedRecipient"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "SubmissionSet-Mapping",
            "map" : "SubmissionSet.intendedRecipient"
          }
        ]
      },
      {
        "id" : "List.identifier",
        "path" : "List.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "use"
            }
          ],
          "rules" : "open"
        },
        "mapping" : [
          {
            "identity" : "SubmissionSet-Mapping",
            "map" : "SubmissionSet.entryUUID and SubmissionSet.uniqueId"
          }
        ]
      },
      {
        "id" : "List.identifier:uniqueId",
        "path" : "List.identifier",
        "sliceName" : "uniqueId",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier",
            "profile" : [
              "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.SubmissionSetUniqueIdIdentifier"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "List.identifier:entryUUID",
        "path" : "List.identifier",
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
        "id" : "List.status",
        "path" : "List.status",
        "patternCode" : "current",
        "mapping" : [
          {
            "identity" : "SubmissionSet-Mapping",
            "map" : "SubmissionSet.availabilityStatus"
          }
        ]
      },
      {
        "id" : "List.mode",
        "path" : "List.mode",
        "patternCode" : "working",
        "mapping" : [
          {
            "identity" : "SubmissionSet-Mapping",
            "map" : "shall be 'working'"
          }
        ]
      },
      {
        "id" : "List.title",
        "path" : "List.title",
        "mapping" : [
          {
            "identity" : "SubmissionSet-Mapping",
            "map" : "SubmissionSet.title"
          }
        ]
      },
      {
        "id" : "List.code",
        "path" : "List.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes",
              "code" : "submissionset"
            }
          ]
        },
        "mapping" : [
          {
            "identity" : "SubmissionSet-Mapping",
            "map" : "shall be 'submissionset'"
          }
        ]
      },
      {
        "id" : "List.subject",
        "path" : "List.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
          }
        ],
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "SubmissionSet-Mapping",
            "map" : "SubmissionSet.patientId"
          }
        ]
      },
      {
        "id" : "List.encounter",
        "path" : "List.encounter",
        "max" : "0",
        "mapping" : [
          {
            "identity" : "SubmissionSet-Mapping",
            "map" : "n/a"
          }
        ]
      },
      {
        "id" : "List.date",
        "path" : "List.date",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "SubmissionSet-Mapping",
            "map" : "SubmissionSet.submissionTime"
          }
        ]
      },
      {
        "id" : "List.source",
        "path" : "List.source",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "SubmissionSet-Mapping",
            "map" : "SubmissionSet.author"
          }
        ]
      },
      {
        "id" : "List.source.extension:authorOrg",
        "path" : "List.source.extension",
        "sliceName" : "authorOrg",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-authorOrg"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "SubmissionSet-Mapping",
            "map" : "SubmissionSet.author when the author is an Organization"
          }
        ]
      },
      {
        "id" : "List.orderedBy",
        "path" : "List.orderedBy",
        "max" : "0",
        "mapping" : [
          {
            "identity" : "SubmissionSet-Mapping",
            "map" : "n/a"
          }
        ]
      },
      {
        "id" : "List.note",
        "path" : "List.note",
        "max" : "1",
        "mapping" : [
          {
            "identity" : "SubmissionSet-Mapping",
            "map" : "SubmissionSet.comments"
          }
        ]
      },
      {
        "id" : "List.entry.flag",
        "path" : "List.entry.flag",
        "max" : "0",
        "mapping" : [
          {
            "identity" : "SubmissionSet-Mapping",
            "map" : "n/a"
          }
        ]
      },
      {
        "id" : "List.entry.deleted",
        "path" : "List.entry.deleted",
        "max" : "0",
        "mapping" : [
          {
            "identity" : "SubmissionSet-Mapping",
            "map" : "n/a"
          }
        ]
      },
      {
        "id" : "List.entry.date",
        "path" : "List.entry.date",
        "max" : "0",
        "mapping" : [
          {
            "identity" : "SubmissionSet-Mapping",
            "map" : "n/a"
          }
        ]
      },
      {
        "id" : "List.entry.item",
        "path" : "List.entry.item",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/DocumentReference",
              "http://hl7.org/fhir/StructureDefinition/List"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "SubmissionSet-Mapping",
            "map" : "references to DocumentReference(s) and Folder List(s)"
          }
        ]
      },
      {
        "id" : "List.emptyReason",
        "path" : "List.emptyReason",
        "max" : "0",
        "mapping" : [
          {
            "identity" : "SubmissionSet-Mapping",
            "map" : "n/a"
          }
        ]
      }
    ]
  }
}

```
