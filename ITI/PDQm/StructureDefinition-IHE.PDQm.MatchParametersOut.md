# PDQm Match Output Bundle Profile - Patient Demographics Query for Mobile (PDQm) v3.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PDQm Match Output Bundle Profile**

## Resource Profile: PDQm Match Output Bundle Profile 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.MatchParametersOut | *Version*:3.2.1 |
| Active as of 2025-11-26 | *Computable Name*:MatchParametersOut |

 
The PDQm Match Output Bundle Profile describes the Bundle that SHALL be returned in response to an ITI-119 transaction. This profile is consistent with the expections of the[Patient-match operation in FHIR core](http://hl7.org/fhir/R4/patient-operation-match.html), except the Patient Resources SHALL be instances of the[PDQm Patient Profile](StructureDefinition-IHE.PDQm.Patient.md). 
Since the response to the $match Operation contains only one parameter, the Bundle resource is returned directly rather than inside of a Parameters resource. 

**Usages:**

* Examples for this Profile: [Bundle/ex-match-output-empty](Bundle-ex-match-output-empty.md), [Bundle/ex-match-output-error](Bundle-ex-match-output-error.md), [Bundle/ex-match-output-multiple](Bundle-ex-match-output-multiple.md), [Bundle/ex-match-output-warning](Bundle-ex-match-output-warning.md) and [Bundle/ex-match-output](Bundle-ex-match-output.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.pdqm|current/StructureDefinition/IHE.PDQm.MatchParametersOut)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.PDQm.MatchParametersOut.csv), [Excel](StructureDefinition-IHE.PDQm.MatchParametersOut.xlsx), [Schematron](StructureDefinition-IHE.PDQm.MatchParametersOut.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.PDQm.MatchParametersOut",
  "url" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.MatchParametersOut",
  "version" : "3.2.1",
  "name" : "MatchParametersOut",
  "title" : "PDQm Match Output Bundle Profile",
  "status" : "active",
  "date" : "2025-11-26T14:04:43-06:00",
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
  "description" : "The PDQm Match Output Bundle Profile describes the Bundle that SHALL be returned in response to an ITI-119 transaction.\nThis profile is consistent with the expections of the [Patient-match operation in FHIR core](http://hl7.org/fhir/R4/patient-operation-match.html),\nexcept the Patient Resources SHALL be instances of the [PDQm Patient Profile](StructureDefinition-IHE.PDQm.Patient.html).\n\nSince the response to the $match Operation contains only one parameter, the Bundle resource is returned directly rather\nthan inside of a Parameters resource. ",
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.implicitRules",
        "path" : "Bundle.implicitRules",
        "max" : "0"
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "patternCode" : "searchset"
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "resource"
            }
          ],
          "description" : "Bundle.entry SHOULD consist of only IHE.PDQm.Patient and OperationOutcome",
          "ordered" : false,
          "rules" : "closed"
        }
      },
      {
        "id" : "Bundle.entry.request",
        "path" : "Bundle.entry.request",
        "max" : "0"
      },
      {
        "id" : "Bundle.entry.response",
        "path" : "Bundle.entry.response",
        "max" : "0"
      },
      {
        "id" : "Bundle.entry:patient",
        "path" : "Bundle.entry",
        "sliceName" : "patient",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:patient.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Patient",
            "profile" : [
              "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Patient"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:patient.search",
        "path" : "Bundle.entry.search",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:patient.search.extension",
        "path" : "Bundle.entry.search.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:patient.search.extension:MatchGrade",
        "path" : "Bundle.entry.search.extension",
        "sliceName" : "MatchGrade",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/match-grade|5.2.0"]
          }
        ]
      },
      {
        "id" : "Bundle.entry:patient.search.mode",
        "path" : "Bundle.entry.search.mode",
        "min" : 1,
        "patternCode" : "match"
      },
      {
        "id" : "Bundle.entry:patient.search.score",
        "path" : "Bundle.entry.search.score",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:operationOutcome",
        "path" : "Bundle.entry",
        "sliceName" : "operationOutcome",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:operationOutcome.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "OperationOutcome"
          }
        ]
      }
    ]
  }
}

```
