# PDQm Query Patient Resource Response message - Patient Demographics Query for Mobile (PDQm) v3.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PDQm Query Patient Resource Response message**

## Resource Profile: PDQm Query Patient Resource Response message 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.QueryPatientResourceResponseMessage | *Version*:3.2.0 |
| Active as of 2025-11-04 | *Computable Name*:QueryPatientResourceResponseMessage |

 
A profile on the Query Patient Resource Response message for ITI-78 

**Usages:**

* Examples for this Profile: [Bundle/ex-QueryPatientResourceResponseMessage](Bundle-ex-QueryPatientResourceResponseMessage.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.pdqm|current/StructureDefinition/IHE.PDQm.QueryPatientResourceResponseMessage)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.PDQm.QueryPatientResourceResponseMessage.csv), [Excel](StructureDefinition-IHE.PDQm.QueryPatientResourceResponseMessage.xlsx), [Schematron](StructureDefinition-IHE.PDQm.QueryPatientResourceResponseMessage.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.PDQm.QueryPatientResourceResponseMessage",
  "url" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.QueryPatientResourceResponseMessage",
  "version" : "3.2.0",
  "name" : "QueryPatientResourceResponseMessage",
  "title" : "PDQm Query Patient Resource Response message",
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
  "description" : "A profile on the Query Patient Resource Response message for ITI-78",
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
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "fixedCode" : "searchset"
      },
      {
        "id" : "Bundle.total",
        "path" : "Bundle.total",
        "min" : 1
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resource"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Bundle.entry.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:Patient",
        "path" : "Bundle.entry",
        "sliceName" : "Patient",
        "short" : "Patient",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Patient.resource",
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
      }
    ]
  }
}

```
