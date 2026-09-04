# MADO Accession Number Identifier - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MADO Accession Number Identifier**

## Data Type Profile: MADO Accession Number Identifier 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoAccessionNumberIdentifier | *Version*:1.0.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:MadoAccessionNumberIdentifier |

 
Profile for the Accession Number Identifier used in the MADO context. This profile is used for the Identifier that represents the Accession Number in the MADO context. It includes additional constraints and extensions specific to the MADO context, such as the value set for the type of identifier and the fixed value for the system of the identifier. 

The combination of the `Identifier.value` of the identifier and the `Identifier.system` of the identifier should be globally unique. The `Identifier.value` of the identifier should be locally unique within the context of the system that assigns the accession number.

The `Identifier.system` SHALL be consistent with the content of the DICOM sequence "Issuer of Accession Number Sequence" (0008,0051).

**Usages:**

* Use this DataType Profile: [MADO Referenced Accession Number Identifier](StructureDefinition-MadoReferencedAccessionNumberIdentifier.md) and [MADO Requested Procedure](StructureDefinition-MadoRequestedProcedure.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.rad.mado|current/StructureDefinition/StructureDefinition-MadoAccessionNumberIdentifier.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MadoAccessionNumberIdentifier.csv), [Excel](StructureDefinition-MadoAccessionNumberIdentifier.xlsx), [Schematron](StructureDefinition-MadoAccessionNumberIdentifier.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MadoAccessionNumberIdentifier",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "trial-use"
  }],
  "url" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoAccessionNumberIdentifier",
  "version" : "1.0.0",
  "name" : "MadoAccessionNumberIdentifier",
  "title" : "MADO Accession Number Identifier",
  "status" : "active",
  "date" : "2026-09-03T19:51:11-05:00",
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
  "description" : "Profile for the Accession Number Identifier used in the MADO context. This profile is used for the Identifier that represents the Accession Number in the MADO context. It includes additional\nconstraints and extensions specific to the MADO context, such as the value set for the type of identifier and the fixed value for the system of the identifier.",
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
      "id" : "Identifier",
      "path" : "Identifier"
    },
    {
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
      "min" : 2
    },
    {
      "id" : "Identifier.type.coding:v2-0203-coding",
      "path" : "Identifier.type.coding",
      "sliceName" : "v2-0203-coding",
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "ACSN"
      }
    },
    {
      "id" : "Identifier.type.coding:dcm",
      "path" : "Identifier.type.coding",
      "sliceName" : "dcm",
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://dicom.nema.org/resources/ontology/DCM",
        "code" : "121022"
      }
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "short" : "The issuer of the accession number.",
      "min" : 1
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "The value of the accession number.",
      "min" : 1
    }]
  }
}

```
