# IHE PIXm Query Parameters Out - Patient Identifier Cross-referencing for mobile (PIXm) v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE PIXm Query Parameters Out**

## Resource Profile: IHE PIXm Query Parameters Out 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Query.Parameters.Out | *Version*:3.1.0 |
| Active as of 2025-11-04 | *Computable Name*:PIXmQueryParametersOut |

 
The StructureDefinition defines the Output Parameters for the $ihe-pix operation 
* Output: targetId, targetIdentifier
 

**Usages:**

* Examples for this Profile: [Parameters/pixm-response-mohralice-red-all](Parameters-pixm-response-mohralice-red-all.md) and [Parameters/pixm-response-mohralice-red-to-blue](Parameters-pixm-response-mohralice-red-to-blue.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.pixm|current/StructureDefinition/IHE.PIXm.Query.Parameters.Out)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.PIXm.Query.Parameters.Out.csv), [Excel](StructureDefinition-IHE.PIXm.Query.Parameters.Out.xlsx), [Schematron](StructureDefinition-IHE.PIXm.Query.Parameters.Out.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.PIXm.Query.Parameters.Out",
  "url" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Query.Parameters.Out",
  "version" : "3.1.0",
  "name" : "PIXmQueryParametersOut",
  "title" : "IHE PIXm Query Parameters Out",
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
  "description" : "The StructureDefinition defines the Output Parameters for the $ihe-pix operation\r\n- Output: targetId, targetIdentifier",
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
          "description" : "allowed parameters are targetId and targetIdentifier",
          "rules" : "open"
        }
      },
      {
        "id" : "Parameters.parameter:targetIdentifier",
        "path" : "Parameters.parameter",
        "sliceName" : "targetIdentifier",
        "short" : "targetIdentifier",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Parameters.parameter:targetIdentifier.name",
        "path" : "Parameters.parameter.name",
        "fixedString" : "targetIdentifier"
      },
      {
        "id" : "Parameters.parameter:targetIdentifier.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:targetIdentifier.value[x].system",
        "path" : "Parameters.parameter.value[x].system",
        "comment" : "Both the value and system shall be populated. (See [IHE ITI TF-2 Z.9.1 Identifier Type](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.9.1-identifier-type))",
        "min" : 1
      },
      {
        "id" : "Parameters.parameter:targetIdentifier.value[x].value",
        "path" : "Parameters.parameter.value[x].value",
        "min" : 1
      },
      {
        "id" : "Parameters.parameter:targetIdentifier.value[x].assigner",
        "path" : "Parameters.parameter.value[x].assigner",
        "short" : "When the assigning authority name is provided, the actor shall also populate the assigner."
      },
      {
        "id" : "Parameters.parameter:targetIdentifier.value[x].assigner.display",
        "path" : "Parameters.parameter.value[x].assigner.display",
        "short" : "When the assigning authority name is provided, the actor shall also populate the display attribute.",
        "comment" : "When the assigning authority name is provided, the actor shall also populate the display attribute. (IHE [ITI TF-2: Appendix E.3](https://profiles.ihe.net/ITI/TF/Volume2/ch-E.html#E.3))",
        "min" : 1
      },
      {
        "id" : "Parameters.parameter:targetId",
        "path" : "Parameters.parameter",
        "sliceName" : "targetId",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Parameters.parameter:targetId.name",
        "path" : "Parameters.parameter.name",
        "fixedString" : "targetId"
      },
      {
        "id" : "Parameters.parameter:targetId.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"],
            "aggregation" : ["referenced"]
          }
        ]
      },
      {
        "id" : "Parameters.parameter:targetId.value[x].reference",
        "path" : "Parameters.parameter.value[x].reference",
        "min" : 1
      }
    ]
  }
}

```
