# MHD DocumentReference Patch Parameters - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MHD DocumentReference Patch Parameters**

## Resource Profile: MHD DocumentReference Patch Parameters 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Patch.Parameters | *Version*:4.2.3 |
| Active as of 2025-10-31 | *Computable Name*:PatchParameters |

 
A profile on the Parameters resource to update the superseded DocumentReference status. 

**Usages:**

* Use this Profile: [MHD Minimal Provide Document Bundle](StructureDefinition-IHE.MHD.Minimal.ProvideBundle.md)
* Examples for this Profile: [Parameters/ex-patchParameters](Parameters-ex-patchParameters.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.MHD.Patch.Parameters)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.Patch.Parameters.csv), [Excel](StructureDefinition-IHE.MHD.Patch.Parameters.xlsx), [Schematron](StructureDefinition-IHE.MHD.Patch.Parameters.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.Patch.Parameters",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Patch.Parameters",
  "version" : "4.2.3",
  "name" : "PatchParameters",
  "title" : "MHD DocumentReference Patch Parameters",
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
  "description" : "A profile on the Parameters resource to update the superseded DocumentReference status.",
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
        "id" : "Parameters.parameter",
        "path" : "Parameters.parameter",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "name"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Parameters.parameter:operation",
        "path" : "Parameters.parameter",
        "sliceName" : "operation",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:operation.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "operation"
      },
      {
        "id" : "Parameters.parameter:operation.part",
        "path" : "Parameters.parameter.part",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "name"
            }
          ],
          "rules" : "open"
        },
        "min" : 3
      },
      {
        "id" : "Parameters.parameter:operation.part:path",
        "path" : "Parameters.parameter.part",
        "sliceName" : "path",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:operation.part:path.name",
        "path" : "Parameters.parameter.part.name",
        "patternString" : "path"
      },
      {
        "id" : "Parameters.parameter:operation.part:path.value[x]",
        "path" : "Parameters.parameter.part.value[x]",
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
        "id" : "Parameters.parameter:operation.part:path.value[x]:valueString",
        "path" : "Parameters.parameter.part.value[x]",
        "sliceName" : "valueString",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "patternString" : "DocumentReference.status"
      },
      {
        "id" : "Parameters.parameter:operation.part:type",
        "path" : "Parameters.parameter.part",
        "sliceName" : "type",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:operation.part:type.name",
        "path" : "Parameters.parameter.part.name",
        "patternString" : "type"
      },
      {
        "id" : "Parameters.parameter:operation.part:type.value[x]",
        "path" : "Parameters.parameter.part.value[x]",
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
        "id" : "Parameters.parameter:operation.part:type.value[x]:valueCode",
        "path" : "Parameters.parameter.part.value[x]",
        "sliceName" : "valueCode",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "patternCode" : "replace"
      },
      {
        "id" : "Parameters.parameter:operation.part:value",
        "path" : "Parameters.parameter.part",
        "sliceName" : "value",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:operation.part:value.name",
        "path" : "Parameters.parameter.part.name",
        "patternString" : "value"
      },
      {
        "id" : "Parameters.parameter:operation.part:value.value[x]",
        "path" : "Parameters.parameter.part.value[x]",
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
        "id" : "Parameters.parameter:operation.part:value.value[x]:valueCode",
        "path" : "Parameters.parameter.part.value[x]",
        "sliceName" : "valueCode",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "patternCode" : "superseded"
      }
    ]
  }
}

```
