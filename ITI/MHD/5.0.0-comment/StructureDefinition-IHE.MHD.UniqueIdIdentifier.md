# uniqueId Identifier - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **uniqueId Identifier**

## Data Type Profile: uniqueId Identifier 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UniqueIdIdentifier | *Version*:5.0.0-comment |
| Active as of 2025-10-31 | *Computable Name*:UniqueIdIdentifier |

 
uniqueId Identifier 
* see [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.9.1-identifier-type)
 

**Usages:**

* Derived from this DataType Profile: [uniqueId Identifier for SubmissionSet](StructureDefinition-IHE.MHD.SubmissionSetUniqueIdIdentifier.md)
* Use this DataType Profile: [MHD DocumentReference Minimal](StructureDefinition-IHE.MHD.Minimal.DocumentReference.md), [MHD Folder Minimal](StructureDefinition-IHE.MHD.Minimal.Folder.md) and [MHD DocumentReference for Simplified Publish](StructureDefinition-IHE.MHD.SimplifiedPublish.DocumentReference.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.MHD.UniqueIdIdentifier)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.UniqueIdIdentifier.csv), [Excel](StructureDefinition-IHE.MHD.UniqueIdIdentifier.xlsx), [Schematron](StructureDefinition-IHE.MHD.UniqueIdIdentifier.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.UniqueIdIdentifier",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UniqueIdIdentifier",
  "version" : "5.0.0-comment",
  "name" : "UniqueIdIdentifier",
  "title" : "uniqueId Identifier",
  "status" : "active",
  "date" : "2025-10-31T15:07:19-05:00",
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
  "description" : "uniqueId Identifier\r\n\r\n- see [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.9.1-identifier-type)",
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
        "patternCode" : "usual"
      },
      {
        "id" : "Identifier.system",
        "path" : "Identifier.system",
        "min" : 1
      },
      {
        "id" : "Identifier.value",
        "path" : "Identifier.value",
        "min" : 1
      }
    ]
  }
}

```
