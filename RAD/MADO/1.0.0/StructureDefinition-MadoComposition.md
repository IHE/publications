# MADO Composition - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MADO Composition**

## Resource Profile: MADO Composition 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoComposition | *Version*:1.0.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:MadoComposition |

 
A FHIR Composition profile for MADO manifests is needed as FHIR Bundles of type `document` require a `Composition` resource as the first entry. Instances of this profile can be rendered in normal document based system without the need for the Client to understand the MADO-specific profiles, while still allowing to represent the essential information of the manifest such as patient, modality, and anatomical region. 

The `Composition.text` field includes a description of the study level info which includes the following information:

* SHALL include subject (identifiers and name)
* SHALL include author (identifiers and name) of device as well as organization
* SHALL include `StudyInstanceUID`
* SHALL include manifest creation date
* SHALL include type and categories
* SHALL include study date and time
* SHALL include `StudyDescription` (if present)
* SHALL include modalities in the study
* SHALL include anatomical regions
* SHALL include accession number(s)
* SHALL include the number of series in the study
* SHOULD include a link to the webviewer endpoint for the study (if present and reachable)

Optionally, each section in the Composition may provide information on each series.

Besides the author information, all information in the `Composition` is a derivative of the information in the manifest and should not be used as the definitive source of information.

**Usages:**

* Use this Profile: [MADO FHIR Imaging Study Manifest Bundle](StructureDefinition-MadoFhirBundle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.rad.mado|current/StructureDefinition/StructureDefinition-MadoComposition.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MadoComposition.csv), [Excel](StructureDefinition-MadoComposition.xlsx), [Schematron](StructureDefinition-MadoComposition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MadoComposition",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "trial-use"
  }],
  "url" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoComposition",
  "version" : "1.0.0",
  "name" : "MadoComposition",
  "title" : "MADO Composition",
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
  "description" : "A FHIR Composition profile for MADO manifests is needed as FHIR Bundles of type `document` require a `Composition` resource as the first entry. Instances of this profile can be rendered in normal document based system without the need for the Client to understand the MADO-specific profiles, while still allowing to represent the essential information of the manifest such as patient, modality, and anatomical region.\n",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "fhirdocumentreference",
    "uri" : "http://hl7.org/fhir/documentreference",
    "name" : "FHIR DocumentReference"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Composition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Composition",
      "path" : "Composition"
    },
    {
      "id" : "Composition.text",
      "path" : "Composition.text",
      "short" : "A human readable narrative that contains information about the manifest.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.text.status",
      "path" : "Composition.text.status",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://profiles.ihe.net/RAD/MADO/ValueSet/MadoNarrativeNotEmpty"
      }
    },
    {
      "id" : "Composition.identifier",
      "path" : "Composition.identifier",
      "short" : "An OID according for a FHIR-Based formatted Imaging Study Manifest. The OID is structured according to the DICOM UI value representation. In the case that a DICOM KOS manifest is present, this field will hold the same value as the SOP Instance UID of the corresponding translated DICOM KOS manifest.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.type",
      "path" : "Composition.type",
      "short" : "Kind of document (LOINC if possible), see section 6.X.6 of volume 3.",
      "mustSupport" : true
    },
    {
      "id" : "Composition.category",
      "path" : "Composition.category",
      "short" : "Categorization of document, see section 6.X.6 of volume 3.",
      "mustSupport" : true
    },
    {
      "id" : "Composition.subject",
      "path" : "Composition.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoPatient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.date",
      "path" : "Composition.date",
      "short" : "When the manifest was created.",
      "mustSupport" : true
    },
    {
      "id" : "Composition.author",
      "path" : "Composition.author",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "$this.resolve()"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Who and/or what authored the document (i.e. manifest)",
      "min" : 2
    },
    {
      "id" : "Composition.author:source-organization",
      "path" : "Composition.author",
      "sliceName" : "source-organization",
      "short" : "The organization that generated the manifest.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoCreatorOrganization"]
      }]
    },
    {
      "id" : "Composition.author:source-device",
      "path" : "Composition.author",
      "sliceName" : "source-device",
      "short" : "The device that generated the manifest.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoCreator"]
      }]
    },
    {
      "id" : "Composition.title",
      "path" : "Composition.title",
      "short" : "Human readable title to display for the manifest.",
      "mustSupport" : true
    },
    {
      "id" : "Composition.custodian",
      "path" : "Composition.custodian",
      "short" : "The organization that is the custodian of the manifest."
    },
    {
      "id" : "Composition.event",
      "path" : "Composition.event",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "detail.resolve()"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Composition.event:imaging-study",
      "path" : "Composition.event",
      "sliceName" : "imaging-study",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.event:imaging-study.detail",
      "path" : "Composition.event.detail",
      "short" : "Reference to the ImagingStudy that contains the details of the study that is being described in the manifest.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoImagingStudy"]
      }]
    },
    {
      "id" : "Composition.section",
      "path" : "Composition.section",
      "short" : "Optionally, one or more sections. Each section provides information on a series in the study.",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section.text",
      "path" : "Composition.section.text",
      "short" : "A human readable narrative that contains the information about the section. This narrative could contain information like: the series instance UID, the series description, the number of instances in the series, and/or the modality.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section.text.status",
      "path" : "Composition.section.text.status",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://profiles.ihe.net/RAD/MADO/ValueSet/MadoNarrativeNotEmpty"
      }
    }]
  }
}

```
