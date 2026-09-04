# MADO Referenced Study Instance UID Identifier - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MADO Referenced Study Instance UID Identifier**

## Data Type Profile: MADO Referenced Study Instance UID Identifier 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoReferencedStudyInstanceUidIdentifier | *Version*:1.0.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:MadoReferencedStudyInstanceUidIdentifier |

 
Profile for the Reference that contains the Study Instance UID Identifier used in the MADO context. This profile is used for the Reference that contains the Identifier that represents the Study Instance UID in the MADO context. It includes additional constraints and extensions specific to the MADO context, such as the value set for the type of identifier and the fixed value for the system of the identifier. 

**Usages:**

* Use this DataType Profile: [MADO MHD DocumentReference Profile for DICOM KOS Imaging Manifests](StructureDefinition-MadoDicomKosDocumentReference.md) and [MADO MHD DocumentReference Profile for FHIR Imaging Study Manifest](StructureDefinition-MadoFhirDocumentReference.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.rad.mado|current/StructureDefinition/StructureDefinition-MadoReferencedStudyInstanceUidIdentifier.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MadoReferencedStudyInstanceUidIdentifier.csv), [Excel](StructureDefinition-MadoReferencedStudyInstanceUidIdentifier.xlsx), [Schematron](StructureDefinition-MadoReferencedStudyInstanceUidIdentifier.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MadoReferencedStudyInstanceUidIdentifier",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "trial-use"
  }],
  "url" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoReferencedStudyInstanceUidIdentifier",
  "version" : "1.0.0",
  "name" : "MadoReferencedStudyInstanceUidIdentifier",
  "title" : "MADO Referenced Study Instance UID Identifier",
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
  "description" : "Profile for the Reference that contains the Study Instance UID Identifier used in the MADO context. This profile is used for the Reference that contains the Identifier that represents the Study Instance UID in the MADO context. It includes additional\nconstraints and extensions specific to the MADO context, such as the value set for the type of identifier and the fixed value for the system of the identifier.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Reference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Reference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Reference.identifier",
      "path" : "Reference.identifier",
      "min" : 1,
      "type" : [{
        "code" : "Identifier",
        "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoStudyInstanceUidIdentifier"]
      }]
    }]
  }
}

```
