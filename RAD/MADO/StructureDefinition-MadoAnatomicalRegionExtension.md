# Extension: Anatomical Region - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Extension: Anatomical Region**

## Extension: Extension: Anatomical Region 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoAnatomicalRegionExtension | *Version*:1.0.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:MadoAnatomicalRegionExtension |

The anatomical region in an ImagingStudy instance. This is additional information next to ImagingStudy.series.bodySite.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MADO Imaging Study](StructureDefinition-MadoImagingStudy.md)
* Examples for this Extension: [Bundle/mado-bundle--2047166865](Bundle-mado-bundle--2047166865.md), [Bundle/mado-bundle--2047166866](Bundle-mado-bundle--2047166866.md) and [Bundle/mado-bundle-589331894518000](Bundle-mado-bundle-589331894518000.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.rad.mado|current/StructureDefinition/StructureDefinition-MadoAnatomicalRegionExtension.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MadoAnatomicalRegionExtension.csv), [Excel](StructureDefinition-MadoAnatomicalRegionExtension.xlsx), [Schematron](StructureDefinition-MadoAnatomicalRegionExtension.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MadoAnatomicalRegionExtension",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "trial-use"
  }],
  "url" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoAnatomicalRegionExtension",
  "version" : "1.0.0",
  "name" : "MadoAnatomicalRegionExtension",
  "title" : "Extension: Anatomical Region",
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
  "description" : "The anatomical region in an ImagingStudy instance. This is additional information next to ImagingStudy.series.bodySite.",
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
  "context" : [{
    "type" : "element",
    "expression" : "DiagnosticReport"
  },
  {
    "type" : "element",
    "expression" : "ImagingStudy"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Extension: Anatomical Region",
      "definition" : "The anatomical region in an ImagingStudy instance. This is additional information next to ImagingStudy.series.bodySite."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoAnatomicalRegionExtension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://profiles.ihe.net/RAD/MADO/ValueSet/ValueSetAnatomicalRegion"
      }
    }]
  }
}

```
