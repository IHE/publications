# uniqueId Identifier for SubmissionSet - Mobile access to Health Documents (MHD) v4.2.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **uniqueId Identifier for SubmissionSet**

## Data Type Profile: uniqueId Identifier for SubmissionSet 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.SubmissionSetUniqueIdIdentifier | *Version*:4.2.4 |
| Active as of 2026-06-15 | *Computable Name*:SubmissionSetUniqueIdIdentifier |

 
uniqueId Identifier holding a OID 

**Usages:**

* Use this DataType Profile: [MHD SubmissionSet Minimal](StructureDefinition-IHE.MHD.Minimal.SubmissionSet.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.iti.mhd|current/StructureDefinition/StructureDefinition-IHE.MHD.SubmissionSetUniqueIdIdentifier.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.SubmissionSetUniqueIdIdentifier.csv), [Excel](StructureDefinition-IHE.MHD.SubmissionSetUniqueIdIdentifier.xlsx), [Schematron](StructureDefinition-IHE.MHD.SubmissionSetUniqueIdIdentifier.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.SubmissionSetUniqueIdIdentifier",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.SubmissionSetUniqueIdIdentifier",
  "version" : "4.2.4",
  "name" : "SubmissionSetUniqueIdIdentifier",
  "title" : "uniqueId Identifier for SubmissionSet",
  "status" : "active",
  "date" : "2026-06-15T14:55:16-05:00",
  "publisher" : "IHE IT Infrastructure Technical Committee",
  "contact" : [{
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ihe.net/ihe_domains/it_infrastructure/"
    }]
  },
  {
    "telecom" : [{
      "system" : "email",
      "value" : "iti@ihe.net"
    }]
  },
  {
    "name" : "IHE IT Infrastructure Technical Committee",
    "telecom" : [{
      "system" : "email",
      "value" : "iti@ihe.net"
    }]
  }],
  "description" : "uniqueId Identifier holding a OID",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Identifier",
  "baseDefinition" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UniqueIdIdentifier",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "fixedUri" : "urn:ietf:rfc:3986"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "constraint" : [{
        "key" : "mhd-startswithoid",
        "severity" : "error",
        "human" : "value must start with urn:oid:",
        "expression" : "startsWith('urn:oid:')",
        "source" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.SubmissionSetUniqueIdIdentifier"
      }]
    }]
  }
}

```
