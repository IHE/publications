# MHD Folder Comprehensive - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MHD Folder Comprehensive**

## Resource Profile: MHD Folder Comprehensive 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.Folder | *Version*:5.0.0 |
| Active as of 2025-12-18 | *Computable Name*:FolderComprehensive |

 
A profile on the List resource for MHD Comprehensive Metadata Folder. Note UnContained has no impact on Folder. 
* MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model,
* the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and
* the use defined here is FHIR List for use as a Folder implementation of the
* ebRIM implementation at [3:4.2.3.4 Folder Attributes](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.4).
* with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)
 

**Usages:**

* Examples for this Profile: [List/ex-compFolder](List-ex-compFolder.md)
* CapabilityStatements using this Profile: [Document Responder (server)](CapabilityStatement-IHE.MHD.DocumentResponder.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.MHD.Comprehensive.Folder)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.Comprehensive.Folder.csv), [Excel](StructureDefinition-IHE.MHD.Comprehensive.Folder.xlsx), [Schematron](StructureDefinition-IHE.MHD.Comprehensive.Folder.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.Comprehensive.Folder",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.Folder",
  "version" : "5.0.0",
  "name" : "FolderComprehensive",
  "title" : "MHD Folder Comprehensive",
  "status" : "active",
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
  "description" : "A profile on the List resource for MHD Comprehensive Metadata Folder. Note UnContained has no impact on Folder.\r\n- MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, \r\n- the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and \r\n- the use defined here is FHIR List for use as a Folder implementation of the \r\n- ebRIM implementation at [3:4.2.3.4 Folder Attributes](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.4).\r\n- with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)",
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
      "identity" : "Folder-Mapping",
      "uri" : "urn:ihe:iti:xds:folder",
      "name" : "XDS and MHD Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "List",
  "baseDefinition" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.Folder",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "List",
        "path" : "List"
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
        "min" : 1
      },
      {
        "id" : "List.title",
        "path" : "List.title",
        "min" : 1
      },
      {
        "id" : "List.subject",
        "path" : "List.subject",
        "min" : 1
      }
    ]
  }
}

```
