# IHE PIXm Query Parameters In - Patient Identifier Cross-referencing for mobile (PIXm) v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE PIXm Query Parameters In**

## Resource Profile: IHE PIXm Query Parameters In 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Query.Parameters.In | *Version*:3.1.0 |
| Active as of 2025-11-04 | *Computable Name*:PIXmQueryParametersIn |

 
The StructureDefinition defines the Input Parameters for the $ihe-pix operation 
* Input: sourceIdentifier, targetSystem
 

**Usages:**

* Examples for this Profile: [Parameters/pixm-request-mohralice-red-all](Parameters-pixm-request-mohralice-red-all.md) and [Parameters/pixm-request-mohralice-red-to-blue](Parameters-pixm-request-mohralice-red-to-blue.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.pixm|current/StructureDefinition/IHE.PIXm.Query.Parameters.In)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.PIXm.Query.Parameters.In.csv), [Excel](StructureDefinition-IHE.PIXm.Query.Parameters.In.xlsx), [Schematron](StructureDefinition-IHE.PIXm.Query.Parameters.In.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.PIXm.Query.Parameters.In",
  "url" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Query.Parameters.In",
  "version" : "3.1.0",
  "name" : "PIXmQueryParametersIn",
  "title" : "IHE PIXm Query Parameters In",
  "status" : "active",
  "date" : "2025-11-04T14:17:39-06:00",
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
  "description" : "The StructureDefinition defines the Input Parameters for the $ihe-pix operation\r\n- Input: sourceIdentifier, targetSystem",
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
          "description" : "allowed parameters are sourceIdentifier, targetSystem and _format",
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Parameters.parameter:sourceIdentifier",
        "path" : "Parameters.parameter",
        "sliceName" : "sourceIdentifier",
        "short" : "sourceIdentifier",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:sourceIdentifier.name",
        "path" : "Parameters.parameter.name",
        "fixedString" : "sourceIdentifier"
      },
      {
        "id" : "Parameters.parameter:sourceIdentifier.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:sourceIdentifier.value[x]:valueString",
        "path" : "Parameters.parameter.value[x]",
        "sliceName" : "valueString",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:targetSystem",
        "path" : "Parameters.parameter",
        "sliceName" : "targetSystem",
        "short" : "targetSystem",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Parameters.parameter:targetSystem.name",
        "path" : "Parameters.parameter.name",
        "fixedString" : "targetSystem"
      },
      {
        "id" : "Parameters.parameter:targetSystem.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:_format",
        "path" : "Parameters.parameter",
        "sliceName" : "_format",
        "short" : "_format",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:_format.name",
        "path" : "Parameters.parameter.name",
        "fixedString" : "_format"
      },
      {
        "id" : "Parameters.parameter:_format.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
