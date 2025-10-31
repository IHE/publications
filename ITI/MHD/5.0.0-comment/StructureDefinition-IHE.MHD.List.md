# MHD common List with designationType - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MHD common List with designationType**

## Resource Profile: MHD common List with designationType 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.List | *Version*:5.0.0-comment |
| Active as of 2025-10-31 | *Computable Name*:MhdList |

 
A profile on the List resource for MHD. Used with both Folder and SubmissionSet. 
* MHD adds a codeable Concept to List for use with Folder and SubmissionSet
 

**Usages:**

* Derived from this Profile: [MHD Folder Minimal](StructureDefinition-IHE.MHD.Minimal.Folder.md) and [MHD SubmissionSet Minimal](StructureDefinition-IHE.MHD.Minimal.SubmissionSet.md)
* CapabilityStatements using this Profile: [Document Consumer (client)](CapabilityStatement-IHE.MHD.DocumentConsumer.md) and [Document Responder (server)](CapabilityStatement-IHE.MHD.DocumentResponder.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.MHD.List)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.List.csv), [Excel](StructureDefinition-IHE.MHD.List.xlsx), [Schematron](StructureDefinition-IHE.MHD.List.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.List",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.List",
  "version" : "5.0.0-comment",
  "name" : "MhdList",
  "title" : "MHD common List with designationType",
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
  "description" : "A profile on the List resource for MHD. Used with both Folder and SubmissionSet.\r\n- MHD adds a codeable Concept to List for use with Folder and SubmissionSet",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/List",
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
        "id" : "List.extension:designationType",
        "path" : "List.extension",
        "sliceName" : "designationType",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-designationType"
            ]
          }
        ]
      },
      {
        "id" : "List.modifierExtension",
        "path" : "List.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "List.code",
        "path" : "List.code",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://profiles.ihe.net/ITI/MHD/ValueSet/MHDlistTypesVS"
        }
      }
    ]
  }
}

```
