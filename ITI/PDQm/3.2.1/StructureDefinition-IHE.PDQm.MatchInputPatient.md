# PDQm Patient Profile for $match Input - Patient Demographics Query for Mobile (PDQm) v3.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PDQm Patient Profile for $match Input**

## Resource Profile: PDQm Patient Profile for $match Input 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.MatchInputPatient | *Version*:3.2.1 |
| Active as of 2025-11-26 | *Computable Name*:PDQmMatchInput |

 
The PDQm Patient Profile for $match Input SHALL be provided as input to the ITI-119 transaction. 
* While it is not REQUIRED that the input to $match be a valid FHIR instance, it is RECOMMENDED to supply as many elements as possible to facilitate matching.
* modifierExtension and implicitRules SHALL not be specified.
* The patient-mothersMaidenName extension is available to hold the mother's maiden name
 

**Usages:**

* Use this Profile: [PDQm Match Input Parameters Profile](StructureDefinition-IHE.PDQm.MatchParametersIn.md)
* Examples for this Profile: [Patient/ex-match-input-patient](Patient-ex-match-input-patient.md)
* CapabilityStatements using this Profile: [IHE PDQm Patient Demographics Consumer Implementing Match Operation Option](CapabilityStatement-IHE.PDQm.PatientDemographicsConsumerMatch.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.pdqm|current/StructureDefinition/IHE.PDQm.MatchInputPatient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.PDQm.MatchInputPatient.csv), [Excel](StructureDefinition-IHE.PDQm.MatchInputPatient.xlsx), [Schematron](StructureDefinition-IHE.PDQm.MatchInputPatient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.PDQm.MatchInputPatient",
  "url" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.MatchInputPatient",
  "version" : "3.2.1",
  "name" : "PDQmMatchInput",
  "title" : "PDQm Patient Profile for $match Input",
  "status" : "active",
  "date" : "2025-11-26T14:02:42-06:00",
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
  "description" : "The PDQm Patient Profile for $match Input SHALL be provided as input to the ITI-119 transaction. \n- While it is not REQUIRED that the input to $match be a valid FHIR instance, it is RECOMMENDED to supply as many elements as possible to facilitate matching.\n- modifierExtension and implicitRules SHALL not be specified.\n- The patient-mothersMaidenName extension is available to hold the mother's maiden name",
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
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient"
      },
      {
        "id" : "Patient.implicitRules",
        "path" : "Patient.implicitRules",
        "max" : "0"
      },
      {
        "id" : "Patient.extension",
        "path" : "Patient.extension",
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
        "id" : "Patient.extension:MothersMaidenName",
        "path" : "Patient.extension",
        "sliceName" : "MothersMaidenName",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName|5.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:genderIdentity",
        "path" : "Patient.extension",
        "sliceName" : "genderIdentity",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/individual-genderIdentity"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:pronouns",
        "path" : "Patient.extension",
        "sliceName" : "pronouns",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/individual-pronouns"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:recordedSexOrGender",
        "path" : "Patient.extension",
        "sliceName" : "recordedSexOrGender",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender"
            ]
          }
        ]
      },
      {
        "id" : "Patient.modifierExtension",
        "path" : "Patient.modifierExtension",
        "max" : "0"
      }
    ]
  }
}

```
