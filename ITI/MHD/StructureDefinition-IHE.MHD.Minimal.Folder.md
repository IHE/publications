# MHD Folder Minimal - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MHD Folder Minimal**

## Resource Profile: MHD Folder Minimal 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.Folder | *Version*:4.2.3 |
| Active as of 2025-10-31 | *Computable Name*:Folder |

 
A profile on the List resource for MHD use as a Folder with minimal metadata constraints. 
* MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model,
* the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and
* the use defined here is FHIR List for use as a Folder implementation of the
* ebRIM implementation at [3:4.2.3.4 Folder Attributes](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.4).
* with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)
 

**Usages:**

* Derived from this Profile: [MHD Folder Comprehensive](StructureDefinition-IHE.MHD.Comprehensive.Folder.md)
* Use this Profile: [MHD Find Document Lists Response Message](StructureDefinition-IHE.MHD.FindDocumentListsResponseMessage.md) and [MHD Minimal Provide Document Bundle](StructureDefinition-IHE.MHD.Minimal.ProvideBundle.md)
* Examples for this Profile: [List/ex-minimalFolder](List-ex-minimalFolder.md)
* CapabilityStatements using this Profile: [Document Responder (server)](CapabilityStatement-IHE.MHD.DocumentResponder.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.MHD.Minimal.Folder)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.Minimal.Folder.csv), [Excel](StructureDefinition-IHE.MHD.Minimal.Folder.xlsx), [Schematron](StructureDefinition-IHE.MHD.Minimal.Folder.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.Minimal.Folder",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.Folder",
  "version" : "4.2.3",
  "name" : "Folder",
  "title" : "MHD Folder Minimal",
  "status" : "active",
  "date" : "2025-10-31T14:38:46-05:00",
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
  "description" : "A profile on the List resource for MHD use as a Folder with minimal metadata constraints. \r\n- MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, \r\n- the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and \r\n- the use defined here is FHIR List for use as a Folder implementation of the \r\n- ebRIM implementation at [3:4.2.3.4 Folder Attributes](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.4).\r\n- with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)",
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
      "identity" : "Folder-Mapping",
      "uri" : "urn:ihe:iti:xds:folder",
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
            "identity" : "Folder-Mapping",
            "map" : "XDS Folder: Used in the context of the IHE MHD ImplementationGuide"
          }
        ]
      },
      {
        "id" : "List.meta.profile",
        "path" : "List.meta.profile",
        "mapping" : [
          {
            "identity" : "Folder-Mapping",
            "map" : "Folder.limitedMetadata"
          }
        ]
      },
      {
        "id" : "List.extension:designationType",
        "path" : "List.extension",
        "sliceName" : "designationType",
        "mustSupport" : true,
        "mapping" : [
          {
            "identity" : "Folder-Mapping",
            "map" : "Folder.codeList"
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
            "identity" : "Folder-Mapping",
            "map" : "Folder.entryUUID and Folder.uniqueId"
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
              "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UniqueIdIdentifier"
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
        "mapping" : [
          {
            "identity" : "Folder-Mapping",
            "map" : "Folder.availabilityStatus"
          }
        ]
      },
      {
        "id" : "List.mode",
        "path" : "List.mode",
        "patternCode" : "working",
        "mapping" : [
          {
            "identity" : "Folder-Mapping",
            "map" : "shall be 'working'"
          }
        ]
      },
      {
        "id" : "List.title",
        "path" : "List.title",
        "mapping" : [
          {
            "identity" : "Folder-Mapping",
            "map" : "Folder.title"
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
              "code" : "folder"
            }
          ]
        },
        "mapping" : [
          {
            "identity" : "Folder-Mapping",
            "map" : "shall be 'folder'"
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
            "identity" : "Folder-Mapping",
            "map" : "Folder.patientId"
          }
        ]
      },
      {
        "id" : "List.encounter",
        "path" : "List.encounter",
        "max" : "0",
        "mapping" : [
          {
            "identity" : "Folder-Mapping",
            "map" : "n/a"
          }
        ]
      },
      {
        "id" : "List.date",
        "path" : "List.date",
        "mapping" : [
          {
            "identity" : "Folder-Mapping",
            "map" : "Folder.lastUpdateTime"
          }
        ]
      },
      {
        "id" : "List.source",
        "path" : "List.source",
        "max" : "0",
        "mapping" : [
          {
            "identity" : "Folder-Mapping",
            "map" : "n/a"
          }
        ]
      },
      {
        "id" : "List.orderedBy",
        "path" : "List.orderedBy",
        "max" : "0",
        "mapping" : [
          {
            "identity" : "Folder-Mapping",
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
            "identity" : "Folder-Mapping",
            "map" : "Folder.comments"
          }
        ]
      },
      {
        "id" : "List.entry.flag",
        "path" : "List.entry.flag",
        "max" : "0",
        "mapping" : [
          {
            "identity" : "Folder-Mapping",
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
            "identity" : "Folder-Mapping",
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
            "identity" : "Folder-Mapping",
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
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/DocumentReference"]
          }
        ],
        "mapping" : [
          {
            "identity" : "Folder-Mapping",
            "map" : "references to DocumentReference(s)"
          }
        ]
      },
      {
        "id" : "List.emptyReason",
        "path" : "List.emptyReason",
        "max" : "0",
        "mapping" : [
          {
            "identity" : "Folder-Mapping",
            "map" : "n/a"
          }
        ]
      }
    ]
  }
}

```
