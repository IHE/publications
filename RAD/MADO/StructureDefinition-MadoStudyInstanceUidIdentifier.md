# MADO Study Instance UID Identifier - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MADO Study Instance UID Identifier**

## Data Type Profile: MADO Study Instance UID Identifier 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoStudyInstanceUidIdentifier | *Version*:1.0.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:MadoStudyInstanceUidIdentifier |

 
Profile for the Study Instance UID Identifier used in the MADO context. This profile is used for the Identifier that represents the Study Instance UID in the MADO context. It includes additional constraints and extensions specific to the MADO context, such as the value set for the type of identifier and the fixed value for the system of the identifier. 

**Usages:**

* Use this DataType Profile: [MADO Imaging Study](StructureDefinition-MadoImagingStudy.md) and [MADO Referenced Study Instance UID Identifier](StructureDefinition-MadoReferencedStudyInstanceUidIdentifier.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.rad.mado|current/StructureDefinition/StructureDefinition-MadoStudyInstanceUidIdentifier.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MadoStudyInstanceUidIdentifier.csv), [Excel](StructureDefinition-MadoStudyInstanceUidIdentifier.xlsx), [Schematron](StructureDefinition-MadoStudyInstanceUidIdentifier.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MadoStudyInstanceUidIdentifier",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "trial-use"
  }],
  "url" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoStudyInstanceUidIdentifier",
  "version" : "1.0.0",
  "name" : "MadoStudyInstanceUidIdentifier",
  "title" : "MADO Study Instance UID Identifier",
  "status" : "active",
  "date" : "2026-09-03T19:52:58-05:00",
  "publisher" : "IHE Radiology Technical Committee",
  "contact" : [{
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ihe.net/ihe_domains/radiology/"
    }]
  },
  {
    "telecom" : [{
      "system" : "email",
      "value" : "rad@ihe.net"
    }]
  },
  {
    "name" : "IHE Radiology Technical Committee",
    "telecom" : [{
      "system" : "email",
      "value" : "rad@ihe.net"
    }]
  }],
  "description" : "Profile for the Study Instance UID Identifier used in the MADO context. This profile is used for the Identifier that represents the Study Instance UID in the MADO context. It includes additional\nconstraints and extensions specific to the MADO context, such as the value set for the type of identifier and the fixed value for the system of the identifier.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Identifier",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Identifier.type",
      "path" : "Identifier.type",
      "min" : 1
    },
    {
      "id" : "Identifier.type.coding",
      "path" : "Identifier.type.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Identifier.type.coding:dcm",
      "path" : "Identifier.type.coding",
      "sliceName" : "dcm",
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://dicom.nema.org/resources/ontology/DCM",
        "code" : "110180"
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "patternUri" : "urn:dicom:uid"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "min" : 1
    }]
  }
}

```
