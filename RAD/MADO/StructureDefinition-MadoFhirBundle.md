# MADO FHIR Imaging Study Manifest Bundle - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MADO FHIR Imaging Study Manifest Bundle**

## Resource Profile: MADO FHIR Imaging Study Manifest Bundle 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoFhirBundle | *Version*:1.0.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:MadoFhirBundle |

 
Profile for FHIR Bundles used as an FHIR Imaging Study Manifest in the MADO context. It includes constraints and extensions specific to FHIR Imaging Study Manifest, such as the type of study, the clinical specialty, and the anatomical region of interest. 

**Usages:**

* Examples for this Profile: [Bundle/mado-bundle-589331894518000](Bundle-mado-bundle-589331894518000.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.rad.mado|current/StructureDefinition/StructureDefinition-MadoFhirBundle.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MadoFhirBundle.csv), [Excel](StructureDefinition-MadoFhirBundle.xlsx), [Schematron](StructureDefinition-MadoFhirBundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MadoFhirBundle",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "trial-use"
  }],
  "url" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoFhirBundle",
  "version" : "1.0.0",
  "name" : "MadoFhirBundle",
  "title" : "MADO FHIR Imaging Study Manifest Bundle",
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
  "description" : "Profile for FHIR Bundles used as an FHIR Imaging Study Manifest in the MADO context. It includes constraints and extensions specific to FHIR Imaging Study Manifest, such as the type of study, the clinical specialty, and the anatomical region of interest.\n",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.identifier",
      "path" : "Bundle.identifier",
      "short" : "An OID according for a FHIR-Based formatted Imaging Study Manifest. The OID is structured according to the DICOM UI value representation. In the case that a DICOM KOS manifest is present, this field will hold the same value as the SOP Instance UID of the corresponding translated DICOM KOS manifest.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "document"
    },
    {
      "id" : "Bundle.timestamp",
      "path" : "Bundle.timestamp",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.total",
      "path" : "Bundle.total",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "resource"
        },
        {
          "type" : "profile",
          "path" : "resource"
        }],
        "rules" : "open"
      },
      "min" : 4
    },
    {
      "id" : "Bundle.entry:composition",
      "path" : "Bundle.entry",
      "sliceName" : "composition",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:composition.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Composition holding the metadata of the study.",
      "type" : [{
        "code" : "Composition",
        "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoComposition"]
      }]
    },
    {
      "id" : "Bundle.entry:imaging-study",
      "path" : "Bundle.entry",
      "sliceName" : "imaging-study",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:imaging-study.resource",
      "path" : "Bundle.entry.resource",
      "short" : "ImagingStudy holding information on the structure of the study.",
      "type" : [{
        "code" : "ImagingStudy",
        "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoImagingStudy"]
      }]
    },
    {
      "id" : "Bundle.entry:patient",
      "path" : "Bundle.entry",
      "sliceName" : "patient",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:patient.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Patient the study is about.",
      "type" : [{
        "code" : "Patient",
        "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoPatient"]
      }]
    },
    {
      "id" : "Bundle.entry:wado-endpoint",
      "path" : "Bundle.entry",
      "sliceName" : "wado-endpoint",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:wado-endpoint.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Endpoint for retrieval of the study data.",
      "type" : [{
        "code" : "Endpoint",
        "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoWadoEndpoint"]
      }]
    },
    {
      "id" : "Bundle.entry:web-endpoint",
      "path" : "Bundle.entry",
      "sliceName" : "web-endpoint",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:web-endpoint.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Endpoint launching a web viewer.",
      "type" : [{
        "code" : "Endpoint",
        "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoWebViewerEndpoint"]
      }]
    },
    {
      "id" : "Bundle.entry:creator-device",
      "path" : "Bundle.entry",
      "sliceName" : "creator-device",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:creator-device.resource",
      "path" : "Bundle.entry.resource",
      "short" : "The author of the manifest.",
      "type" : [{
        "code" : "Device",
        "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoCreator"]
      }]
    },
    {
      "id" : "Bundle.entry:creator-organization",
      "path" : "Bundle.entry",
      "sliceName" : "creator-organization",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:creator-organization.resource",
      "path" : "Bundle.entry.resource",
      "short" : "The organization of the author of the manifest.",
      "type" : [{
        "code" : "Organization",
        "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoCreatorOrganization"]
      }]
    },
    {
      "id" : "Bundle.entry:requested-procedure",
      "path" : "Bundle.entry",
      "sliceName" : "requested-procedure",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:requested-procedure.resource",
      "path" : "Bundle.entry.resource",
      "short" : "ServiceRequest of the order for the study (Requested Procedure).",
      "type" : [{
        "code" : "ServiceRequest",
        "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoRequestedProcedure"]
      }]
    }]
  }
}

```
