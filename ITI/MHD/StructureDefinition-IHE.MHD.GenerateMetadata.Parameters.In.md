# IHE MHD GenerateMetadata Parameters In - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE MHD GenerateMetadata Parameters In**

## Resource Profile: IHE MHD GenerateMetadata Parameters In 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.GenerateMetadata.Parameters.In | *Version*:4.2.3 |
| Active as of 2025-10-31 | *Computable Name*:MHDgenerateMetadataParametersIn |

 
The Input Parameters for the $generate-metadata operation 
* Input: binary, bundle
 

**Usages:**

* Examples for this Profile: [Parameters/ex-input-binary](Parameters-ex-input-binary.md) and [Parameters/ex-input-doc-bundle](Parameters-ex-input-doc-bundle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.MHD.GenerateMetadata.Parameters.In)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.GenerateMetadata.Parameters.In.csv), [Excel](StructureDefinition-IHE.MHD.GenerateMetadata.Parameters.In.xlsx), [Schematron](StructureDefinition-IHE.MHD.GenerateMetadata.Parameters.In.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.GenerateMetadata.Parameters.In",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.GenerateMetadata.Parameters.In",
  "version" : "4.2.3",
  "name" : "MHDgenerateMetadataParametersIn",
  "title" : "IHE MHD GenerateMetadata Parameters In",
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
  "description" : "The Input Parameters for the $generate-metadata operation\r\n- Input: binary, bundle",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Parameters",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Parameters",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Parameters",
        "path" : "Parameters"
      },
      {
        "id" : "Parameters.parameter",
        "path" : "Parameters.parameter",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "name"
            }
          ],
          "description" : "allowed parameters are binary or bundle",
          "rules" : "closed"
        },
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:document",
        "path" : "Parameters.parameter",
        "sliceName" : "document",
        "short" : "document",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:document.name",
        "path" : "Parameters.parameter.name",
        "fixedString" : "document"
      },
      {
        "id" : "Parameters.parameter:document.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:document.resource",
        "path" : "Parameters.parameter.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Binary"
          },
          {
            "code" : "Bundle"
          }
        ]
      }
    ]
  }
}

```
