# entryUUID Identifier - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **entryUUID Identifier**

## Data Type Profile: entryUUID Identifier 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.EntryUUID.Identifier | *Version*:5.0.0 |
| Active as of 2025-12-18 | *Computable Name*:EntryUUIDIdentifier |

 
entryUUID Identifier holding a UUID 

**Usages:**

* Use this DataType Profile: [MHD DocumentReference Minimal](StructureDefinition-IHE.MHD.Minimal.DocumentReference.md), [MHD Folder Minimal](StructureDefinition-IHE.MHD.Minimal.Folder.md) and [MHD SubmissionSet Minimal](StructureDefinition-IHE.MHD.Minimal.SubmissionSet.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.MHD.EntryUUID.Identifier)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.EntryUUID.Identifier.csv), [Excel](StructureDefinition-IHE.MHD.EntryUUID.Identifier.xlsx), [Schematron](StructureDefinition-IHE.MHD.EntryUUID.Identifier.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.EntryUUID.Identifier",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.EntryUUID.Identifier",
  "version" : "5.0.0",
  "name" : "EntryUUIDIdentifier",
  "title" : "entryUUID Identifier",
  "status" : "active",
  "date" : "2025-12-18T09:48:18-06:00",
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
  "description" : "entryUUID Identifier holding a UUID",
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
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 V2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Identifier",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Identifier",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Identifier.use",
        "path" : "Identifier.use",
        "min" : 1,
        "patternCode" : "official"
      },
      {
        "id" : "Identifier.system",
        "path" : "Identifier.system",
        "min" : 1,
        "patternUri" : "urn:ietf:rfc:3986"
      },
      {
        "id" : "Identifier.value",
        "path" : "Identifier.value",
        "min" : 1,
        "constraint" : [
          {
            "key" : "mhd-startswithuuid",
            "severity" : "error",
            "human" : "value must start with urn:uuid:",
            "expression" : "startsWith('urn:uuid:')",
            "source" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.EntryUUID.Identifier"
          }
        ]
      }
    ]
  }
}

```
