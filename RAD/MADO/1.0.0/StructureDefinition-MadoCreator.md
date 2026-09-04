# MADO Creator - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MADO Creator**

## Resource Profile: MADO Creator 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoCreator | *Version*:1.0.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:MadoCreator |

 
A profile for the Device resource that represents the creator of an FHIR Imaging Study Manifest. The primary goal is to communicate the fields: 
* type = MadoDeviceType#mado-creator "MADO Creator"
* manufacturer
* owner (Reference to MadoCreatorOrganization)
 

**Usages:**

* Use this Profile: [MADO FHIR Imaging Study Manifest Bundle](StructureDefinition-MadoFhirBundle.md)
* Refer to this Profile: [MADO Composition](StructureDefinition-MadoComposition.md), [MADO MHD DocumentReference Profile for DICOM KOS Imaging Manifests](StructureDefinition-MadoDicomKosDocumentReference.md) and [MADO MHD DocumentReference Profile for FHIR Imaging Study Manifest](StructureDefinition-MadoFhirDocumentReference.md)
* Examples for this Profile: [Device/MadoCreatorDeviceExample](Device-MadoCreatorDeviceExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.rad.mado|current/StructureDefinition/StructureDefinition-MadoCreator.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MadoCreator.csv), [Excel](StructureDefinition-MadoCreator.xlsx), [Schematron](StructureDefinition-MadoCreator.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MadoCreator",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "trial-use"
  }],
  "url" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoCreator",
  "version" : "1.0.0",
  "name" : "MadoCreator",
  "title" : "MADO Creator",
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
  "description" : "A profile for the Device resource that represents the creator of an FHIR Imaging Study Manifest. The primary goal is to communicate the fields:\n\n* type = MadoDeviceType#mado-creator \"MADO Creator\"\n* manufacturer\n* owner (Reference to MadoCreatorOrganization)\n",
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
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "udi",
    "uri" : "http://fda.gov/UDI",
    "name" : "UDI Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Device",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Device",
      "path" : "Device"
    },
    {
      "id" : "Device.manufacturer",
      "path" : "Device.manufacturer",
      "mustSupport" : true
    },
    {
      "id" : "Device.type",
      "path" : "Device.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.type.coding",
      "path" : "Device.type.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Device.type.coding.system",
      "path" : "Device.type.coding.system",
      "fixedUri" : "https://profiles.ihe.net/RAD/MADO/CodeSystem/MadoDeviceType"
    },
    {
      "id" : "Device.type.coding.code",
      "path" : "Device.type.coding.code",
      "fixedCode" : "mado-creator"
    },
    {
      "id" : "Device.owner",
      "path" : "Device.owner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoCreatorOrganization"]
      }],
      "mustSupport" : true
    }]
  }
}

```
