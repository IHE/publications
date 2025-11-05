# PDQm Match Input Parameters Profile - Patient Demographics Query for Mobile (PDQm) v3.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PDQm Match Input Parameters Profile**

## Resource Profile: PDQm Match Input Parameters Profile 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.MatchParametersIn | *Version*:3.2.0 |
| Active as of 2025-11-04 | *Computable Name*:MatchParametersIn |

 
The PDQm Match Input Parameters Profile describes the Parameters Resource that is to be posted to the $match endpoint when invoking ITI-119. This profile is consistent with the expections of the[Patient-match operation in FHIR core](http://hl7.org/fhir/R4/patient-operation-match.html), except the input resource SHALL be an instance of the[PDQm Patient Profile for $match Input](StructureDefinition-IHE.PDQm.MatchInputPatient.md). 
Note that the only REQUIRED parameter is the Patient Resource. When only the Patient is supplied, it can be POSTed directly to the $match endpoint without being wrapped in a Parameters Resource, as long as it conforms to the[PDQm Patient Profile for $match Input](StructureDefinition-IHE.PDQm.MatchInputPatient.md). 

**Usages:**

* Examples for this Profile: [Parameters/ex-match-input-count](Parameters-ex-match-input-count.md), [Parameters/ex-match-input-onlyCertainMatches](Parameters-ex-match-input-onlyCertainMatches.md) and [Parameters/ex-match-input-patient-only](Parameters-ex-match-input-patient-only.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.pdqm|current/StructureDefinition/IHE.PDQm.MatchParametersIn)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.PDQm.MatchParametersIn.csv), [Excel](StructureDefinition-IHE.PDQm.MatchParametersIn.xlsx), [Schematron](StructureDefinition-IHE.PDQm.MatchParametersIn.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.PDQm.MatchParametersIn",
  "url" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.MatchParametersIn",
  "version" : "3.2.0",
  "name" : "MatchParametersIn",
  "title" : "PDQm Match Input Parameters Profile",
  "status" : "active",
  "date" : "2025-11-04T12:09:52-06:00",
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
  "description" : "The PDQm Match Input Parameters Profile describes the Parameters Resource that is to be posted to the $match endpoint when invoking ITI-119.\nThis profile is consistent with the expections of the [Patient-match operation in FHIR core](http://hl7.org/fhir/R4/patient-operation-match.html),\nexcept the input resource SHALL be an instance of the [PDQm Patient Profile for $match Input](StructureDefinition-IHE.PDQm.MatchInputPatient.html).\n\nNote that the only REQUIRED parameter is the Patient Resource. When only the Patient is supplied, it can be POSTed directly to the $match endpoint\nwithout being wrapped in a Parameters Resource, as long as it conforms to the [PDQm Patient Profile for $match Input](StructureDefinition-IHE.PDQm.MatchInputPatient.html).",
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
        "id" : "Parameters.implicitRules",
        "path" : "Parameters.implicitRules",
        "max" : "0"
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
          "description" : "Parameters SHOULD match those of the $match input, with PDQm Profile Restrictions",
          "ordered" : false,
          "rules" : "closed"
        },
        "min" : 1,
        "max" : "3"
      },
      {
        "id" : "Parameters.parameter.modifierExtension",
        "path" : "Parameters.parameter.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:resource",
        "path" : "Parameters.parameter",
        "sliceName" : "resource",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:resource.modifierExtension",
        "path" : "Parameters.parameter.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:resource.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "resource"
      },
      {
        "id" : "Parameters.parameter:resource.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:resource.resource",
        "path" : "Parameters.parameter.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Patient",
            "profile" : [
              "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.MatchInputPatient"
            ]
          }
        ]
      },
      {
        "id" : "Parameters.parameter:resource.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:onlyCertainMatches",
        "path" : "Parameters.parameter",
        "sliceName" : "onlyCertainMatches",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:onlyCertainMatches.modifierExtension",
        "path" : "Parameters.parameter.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:onlyCertainMatches.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "onlyCertainMatches"
      },
      {
        "id" : "Parameters.parameter:onlyCertainMatches.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:onlyCertainMatches.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:onlyCertainMatches.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:count",
        "path" : "Parameters.parameter",
        "sliceName" : "count",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:count.modifierExtension",
        "path" : "Parameters.parameter.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:count.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "count"
      },
      {
        "id" : "Parameters.parameter:count.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:count.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:count.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      }
    ]
  }
}

```
