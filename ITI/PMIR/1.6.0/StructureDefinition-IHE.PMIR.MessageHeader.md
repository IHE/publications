# IHE Patient Master Identity Registry MessageHeader - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE Patient Master Identity Registry MessageHeader**

## Resource Profile: IHE Patient Master Identity Registry MessageHeader 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.MessageHeader | *Version*:1.6.0 |
| Active as of 2025-11-04 | *Computable Name*:PMIRMessageHeader |

 
StructureDefinition for MessageHeader resource constraints in the IHE PMIR Profile. 

**Usages:**

* Use this Profile: [IHE Patient Master Identity Registry Message Bundle](StructureDefinition-IHE.PMIR.Bundle.md)
* Examples for this Profile: [MessageHeader/ex-messageheader-create](MessageHeader-ex-messageheader-create.md), [MessageHeader/ex-messageheader-delete](MessageHeader-ex-messageheader-delete.md), [MessageHeader/ex-messageheader-merge](MessageHeader-ex-messageheader-merge.md) and [MessageHeader/ex-messageheader-update](MessageHeader-ex-messageheader-update.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.pmir|current/StructureDefinition/IHE.PMIR.MessageHeader)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.PMIR.MessageHeader.csv), [Excel](StructureDefinition-IHE.PMIR.MessageHeader.xlsx), [Schematron](StructureDefinition-IHE.PMIR.MessageHeader.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.PMIR.MessageHeader",
  "url" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.MessageHeader",
  "version" : "1.6.0",
  "name" : "PMIRMessageHeader",
  "title" : "IHE Patient Master Identity Registry MessageHeader",
  "status" : "active",
  "date" : "2025-11-04T15:17:55-06:00",
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
  "description" : "StructureDefinition for MessageHeader resource constraints in the IHE PMIR Profile.",
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MessageHeader",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MessageHeader",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MessageHeader.event[x]",
        "path" : "MessageHeader.event[x]",
        "type" : [
          {
            "code" : "uri"
          }
        ],
        "patternUri" : "urn:ihe:iti:pmir:2019:patient-feed"
      },
      {
        "id" : "MessageHeader.destination",
        "path" : "MessageHeader.destination",
        "min" : 1
      },
      {
        "id" : "MessageHeader.sender",
        "path" : "MessageHeader.sender",
        "requirements" : "Required if known",
        "mustSupport" : true
      },
      {
        "id" : "MessageHeader.enterer",
        "path" : "MessageHeader.enterer",
        "requirements" : "Required if known",
        "mustSupport" : true
      },
      {
        "id" : "MessageHeader.author",
        "path" : "MessageHeader.author",
        "requirements" : "Required if known",
        "mustSupport" : true
      },
      {
        "id" : "MessageHeader.responsible",
        "path" : "MessageHeader.responsible",
        "requirements" : "Required if known",
        "mustSupport" : true
      },
      {
        "id" : "MessageHeader.focus",
        "path" : "MessageHeader.focus",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle.History"
            ]
          }
        ]
      },
      {
        "id" : "MessageHeader.definition",
        "path" : "MessageHeader.definition",
        "patternCanonical" : "https://profiles.ihe.net/ITI/PMIR/MessageDefinition/IHE.PMIR.MessageDefinition"
      }
    ]
  }
}

```
