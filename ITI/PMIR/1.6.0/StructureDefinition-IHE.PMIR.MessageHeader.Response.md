# IHE Patient Master Identity Registry MessageHeader Response - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE Patient Master Identity Registry MessageHeader Response**

## Resource Profile: IHE Patient Master Identity Registry MessageHeader Response 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.MessageHeader.Response | *Version*:1.6.0 |
| Active as of 2025-11-04 | *Computable Name*:PMIRMessageHeaderResponse |

 
StructureDefinition for the PMIR MessageHeader response constraints. 

**Usages:**

* Examples for this Profile: [MessageHeader/ex-messageheader-create-response](MessageHeader-ex-messageheader-create-response.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.pmir|current/StructureDefinition/IHE.PMIR.MessageHeader.Response)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.PMIR.MessageHeader.Response.csv), [Excel](StructureDefinition-IHE.PMIR.MessageHeader.Response.xlsx), [Schematron](StructureDefinition-IHE.PMIR.MessageHeader.Response.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.PMIR.MessageHeader.Response",
  "url" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.MessageHeader.Response",
  "version" : "1.6.0",
  "name" : "PMIRMessageHeaderResponse",
  "title" : "IHE Patient Master Identity Registry MessageHeader Response",
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
  "description" : "StructureDefinition for the PMIR MessageHeader response constraints.",
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
        "id" : "MessageHeader",
        "path" : "MessageHeader"
      },
      {
        "id" : "MessageHeader.event[x]",
        "path" : "MessageHeader.event[x]",
        "type" : [
          {
            "code" : "uri"
          }
        ],
        "patternUri" : "urn:ihe:iti:pmir:2019:patient-feed-response"
      },
      {
        "id" : "MessageHeader.destination",
        "path" : "MessageHeader.destination",
        "max" : "0"
      },
      {
        "id" : "MessageHeader.response",
        "path" : "MessageHeader.response",
        "min" : 1
      },
      {
        "id" : "MessageHeader.definition",
        "path" : "MessageHeader.definition",
        "patternCanonical" : "https://profiles.ihe.net/ITI/PMIR/MessageDefinition/IHE.PMIR.MessageDefinition.Response"
      }
    ]
  }
}

```
