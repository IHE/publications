# MADO Imaging Study - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MADO Imaging Study**

## Resource Profile: MADO Imaging Study 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoImagingStudy | *Version*:1.0.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:MadoImagingStudy |

 
Profile for ImagingStudy resources that represent the imaging studies manifest in the MADO context. It includes additional constraints and extensions specific to the MADO context, such as the study modality, the clinical specialty, the anatomical region of interest, the presence of significant images. 

In the case significant images are present, an instance referenced in the `ImagingStudy` is a Key Object Selection document [TID 2010](https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_tid_2010.html), the `ImagingStudy.series.instance.extension[koDocumentTitle]` SHALL contain the Document Title code of the referenced document, and the `ImagingStudy.series.instance.description` field contains the contents of the KeyObjectSelectionDescription field.

**Usages:**

* Use this Profile: [MADO FHIR Imaging Study Manifest Bundle](StructureDefinition-MadoFhirBundle.md)
* Refer to this Profile: [MADO Composition](StructureDefinition-MadoComposition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.rad.mado|current/StructureDefinition/StructureDefinition-MadoImagingStudy.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MadoImagingStudy.csv), [Excel](StructureDefinition-MadoImagingStudy.xlsx), [Schematron](StructureDefinition-MadoImagingStudy.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MadoImagingStudy",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "trial-use"
  }],
  "url" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoImagingStudy",
  "version" : "1.0.0",
  "name" : "MadoImagingStudy",
  "title" : "MADO Imaging Study",
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
  "description" : "Profile for ImagingStudy resources that represent the imaging studies manifest in the MADO context. It includes additional constraints and extensions specific to the MADO context, such as the study modality, the clinical specialty, the anatomical region of interest, the presence of significant images.",
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
    "identity" : "dicom",
    "uri" : "http://nema.org/dicom",
    "name" : "DICOM Tag Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ImagingStudy",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ImagingStudy",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ImagingStudy",
      "path" : "ImagingStudy",
      "constraint" : [{
        "key" : "mado-reqproc-1",
        "severity" : "error",
        "human" : "Procedure code should be present in a way that it can be shown to an end-user.",
        "expression" : "procedureCode.text.exists() or  procedureCode.coding.display.exists()",
        "source" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoImagingStudy"
      }]
    },
    {
      "id" : "ImagingStudy.extension",
      "path" : "ImagingStudy.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ImagingStudy.extension:anatomical-region",
      "path" : "ImagingStudy.extension",
      "sliceName" : "anatomical-region",
      "short" : "The anatomical regions covered by the study.",
      "definition" : "The anatomical regions covered by the study, depending on the study there can be zero, one or more regions. \nThe regions SHALL overlap with the bodysite references from `ImagingStudy.series.bodysite`.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoAnatomicalRegionExtension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.identifier",
      "path" : "ImagingStudy.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "ImagingStudy.identifier:study-instance-uid",
      "path" : "ImagingStudy.identifier",
      "sliceName" : "study-instance-uid",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoStudyInstanceUidIdentifier"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.modality",
      "path" : "ImagingStudy.modality",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.subject",
      "path" : "ImagingStudy.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoPatient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.started",
      "path" : "ImagingStudy.started",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.basedOn",
      "path" : "ImagingStudy.basedOn",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ImagingStudy.basedOn:order",
      "path" : "ImagingStudy.basedOn",
      "sliceName" : "order",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoReferencedAccessionNumberIdentifier"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/CarePlan",
        "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
        "http://hl7.org/fhir/StructureDefinition/Appointment",
        "http://hl7.org/fhir/StructureDefinition/AppointmentResponse",
        "http://hl7.org/fhir/StructureDefinition/Task"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.endpoint",
      "path" : "ImagingStudy.endpoint",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "$this.resolve()"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ImagingStudy.endpoint:webviewer",
      "path" : "ImagingStudy.endpoint",
      "sliceName" : "webviewer",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoWebViewerEndpoint"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.numberOfSeries",
      "path" : "ImagingStudy.numberOfSeries",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.procedureCode",
      "path" : "ImagingStudy.procedureCode",
      "short" : "The `ProcedureCode`s associated with the study.",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.description",
      "path" : "ImagingStudy.description",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.series.uid",
      "path" : "ImagingStudy.series.uid",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.series.number",
      "path" : "ImagingStudy.series.number",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.series.modality",
      "path" : "ImagingStudy.series.modality",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.series.description",
      "path" : "ImagingStudy.series.description",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.series.numberOfInstances",
      "path" : "ImagingStudy.series.numberOfInstances",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.series.endpoint",
      "path" : "ImagingStudy.series.endpoint",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "$this.resolve()"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "ImagingStudy.series.endpoint:wado",
      "path" : "ImagingStudy.series.endpoint",
      "sliceName" : "wado",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoWadoEndpoint"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.series.bodySite",
      "path" : "ImagingStudy.series.bodySite",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.series.specimen",
      "path" : "ImagingStudy.series.specimen",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.series.started",
      "path" : "ImagingStudy.series.started",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.series.instance",
      "path" : "ImagingStudy.series.instance",
      "min" : 1
    },
    {
      "id" : "ImagingStudy.series.instance.extension",
      "path" : "ImagingStudy.series.instance.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ImagingStudy.series.instance.extension:number-of-frames",
      "path" : "ImagingStudy.series.instance.extension",
      "sliceName" : "number-of-frames",
      "short" : "The number of frames in an ImagingStudy instance.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoNumberOfFrames"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.series.instance.extension:ko-document-title",
      "path" : "ImagingStudy.series.instance.extension",
      "sliceName" : "ko-document-title",
      "short" : "When this instance represents a Key Object Selection document, this extension contains the document title code of the referenced document.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoKeyObjectDocumentTitle"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.series.instance.uid",
      "path" : "ImagingStudy.series.instance.uid",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.series.instance.sopClass",
      "path" : "ImagingStudy.series.instance.sopClass",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.series.instance.number",
      "path" : "ImagingStudy.series.instance.number",
      "mustSupport" : true
    },
    {
      "id" : "ImagingStudy.series.instance.title",
      "path" : "ImagingStudy.series.instance.title",
      "short" : "Will contain the Key Object Description in the case the instance represents a Key Object.",
      "mustSupport" : true
    }]
  }
}

```
