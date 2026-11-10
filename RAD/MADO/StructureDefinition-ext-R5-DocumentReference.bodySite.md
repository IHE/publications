# Extension: DocumentReference.bodySite - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Extension: DocumentReference.bodySite**

## Extension: Extension: DocumentReference.bodySite 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://profiles.ihe.net/RAD/MADO/StructureDefinition/ext-R5-DocumentReference.bodySite | *Version*:1.0.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:MadoDocumentReferenceBodySite |

Carries the R5 DocumentReference.bodySite.concept (CodeableReference) for use in R4. Imported locally because hl7.fhir.uv.xver-r5.r4#0.1.0 does not include an extension for it. Only the `concept` field has been mapped as this is the only element we need in this IG.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MADO MHD DocumentReference Profile for DICOM KOS Imaging Manifests](StructureDefinition-MadoDicomKosDocumentReference.md) and [MADO MHD DocumentReference Profile for FHIR Imaging Study Manifest](StructureDefinition-MadoFhirDocumentReference.md)
* Examples for this Extension: [DocumentReference/DocumentReferenceFHIR](DocumentReference-DocumentReferenceFHIR.md), [DocumentReference/DocumentReferenceFHIRwithTransform](DocumentReference-DocumentReferenceFHIRwithTransform.md), [DocumentReference/DocumentReferenceKOS](DocumentReference-DocumentReferenceKOS.md), [DocumentReference/DocumentReferenceKOSNoRelated](DocumentReference-DocumentReferenceKOSNoRelated.md)... Show 3 more, [DocumentReference/DocumentReferenceKOSwithTransform](DocumentReference-DocumentReferenceKOSwithTransform.md), [DocumentReference/mado-documentreference-fhir--2047166865](DocumentReference-mado-documentreference-fhir--2047166865.md) and [DocumentReference/mado-documentreference-fhir--2047166866](DocumentReference-mado-documentreference-fhir--2047166866.md)
* Search Parameters using this Extension: [DocumentReferenceAnatomicalRegion](SearchParameter-SearchParameterDocumentReferenceBodySite.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.rad.mado|current/StructureDefinition/StructureDefinition-ext-R5-DocumentReference.bodySite.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-R5-DocumentReference.bodySite.csv), [Excel](StructureDefinition-ext-R5-DocumentReference.bodySite.xlsx), [Schematron](StructureDefinition-ext-R5-DocumentReference.bodySite.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-R5-DocumentReference.bodySite",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "trial-use"
  }],
  "url" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/ext-R5-DocumentReference.bodySite",
  "version" : "1.0.0",
  "name" : "MadoDocumentReferenceBodySite",
  "title" : "Extension: DocumentReference.bodySite",
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
  "description" : "Carries the R5 DocumentReference.bodySite.concept (CodeableReference) for use in R4. \nImported locally because hl7.fhir.uv.xver-r5.r4#0.1.0 does not include an extension \nfor it. Only the `concept` field has been mapped as this is the only element we need in\nthis IG.",
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
    "expression" : "DocumentReference"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Extension: DocumentReference.bodySite",
      "definition" : "Carries the R5 DocumentReference.bodySite.concept (CodeableReference) for use in R4. \nImported locally because hl7.fhir.uv.xver-r5.r4#0.1.0 does not include an extension \nfor it. Only the `concept` field has been mapped as this is the only element we need in\nthis IG."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/ext-R5-DocumentReference.bodySite"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
