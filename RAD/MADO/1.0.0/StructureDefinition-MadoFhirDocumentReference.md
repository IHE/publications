# MADO MHD DocumentReference Profile for FHIR Imaging Study Manifest - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MADO MHD DocumentReference Profile for FHIR Imaging Study Manifest**

## Resource Profile: MADO MHD DocumentReference Profile for FHIR Imaging Study Manifest 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoFhirDocumentReference | *Version*:1.0.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:MadoFhirDocumentReference |

 
MADO specific profile for the IHE-MHD Document Reference for FHIR Imaging Study Manifest that includes the MADO specific content format, the extensions related to body-site and modality, and the definition on where `StudyInstanceUID` and `AccessionNumber` are stored. 
This profile requires `context.period` and copies most of the restrictions defined in the [MHD DocumentReference Comprehensive](https://profiles.ihe.net/ITI/MHD/StructureDefinition-IHE.MHD.Comprehensive.DocumentReference.html) profiles (except `securityLabel`). 

**Usages:**

* Refer to this Profile: [MADO MHD DocumentReference Profile for DICOM KOS Imaging Manifests](StructureDefinition-MadoDicomKosDocumentReference.md)
* Examples for this Profile: [DocumentReference/DocumentReferenceFHIR](DocumentReference-DocumentReferenceFHIR.md) and [DocumentReference/DocumentReferenceFHIRwithTransform](DocumentReference-DocumentReferenceFHIRwithTransform.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.rad.mado|current/StructureDefinition/StructureDefinition-MadoFhirDocumentReference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MadoFhirDocumentReference.csv), [Excel](StructureDefinition-MadoFhirDocumentReference.xlsx), [Schematron](StructureDefinition-MadoFhirDocumentReference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MadoFhirDocumentReference",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "trial-use"
  }],
  "url" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoFhirDocumentReference",
  "version" : "1.0.0",
  "name" : "MadoFhirDocumentReference",
  "title" : "MADO MHD DocumentReference Profile for FHIR Imaging Study Manifest",
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
  "description" : "MADO specific profile for the IHE-MHD Document Reference for FHIR Imaging Study Manifest that includes the MADO specific content format, the extensions\nrelated to body-site and modality, and the definition on where `StudyInstanceUID` and `AccessionNumber` are stored.\n\nThis profile requires `context.period` and copies most of the restrictions defined in the [MHD DocumentReference Comprehensive](https://profiles.ihe.net/ITI/MHD/StructureDefinition-IHE.MHD.Comprehensive.DocumentReference.html) \nprofiles (except `securityLabel`).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "DocumentEntry-Mapping",
    "uri" : "urn:ihe:iti:xds:documententry",
    "name" : "XDS and MHD Mapping"
  },
  {
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "fhircomposition",
    "uri" : "http://hl7.org/fhir/composition",
    "name" : "FHIR Composition"
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "xds",
    "uri" : "http://ihe.net/xds",
    "name" : "XDS metadata equivalent"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.DocumentReference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DocumentReference",
      "path" : "DocumentReference",
      "constraint" : [{
        "key" : "mado-docref-1",
        "severity" : "error",
        "human" : "masterIdentifier, when used, need to be present as an identifier as well",
        "expression" : "masterIdentifier.exists() implies identifier.where( %resource.masterIdentifier.system = system and %resource.masterIdentifier.value = value ).exists()",
        "source" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoFhirDocumentReference"
      }]
    },
    {
      "id" : "DocumentReference.extension",
      "path" : "DocumentReference.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "DocumentReference.extension:bodysite",
      "path" : "DocumentReference.extension",
      "sliceName" : "bodysite",
      "short" : "The anatomical region of the patient that is the focus of the imaging manifest, concept field is required.",
      "definition" : "This field may be used to provide additional information about the anatomical region of interest for the imaging manifest.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/ext-R5-DocumentReference.bodySite"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.extension:bodysite.value[x]",
      "path" : "DocumentReference.extension.value[x]",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://profiles.ihe.net/RAD/MADO/ValueSet/ValueSetAnatomicalRegion"
      }
    },
    {
      "id" : "DocumentReference.extension:modality",
      "path" : "DocumentReference.extension",
      "sliceName" : "modality",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/ext-R5-DocumentReference.modality"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.masterIdentifier",
      "path" : "DocumentReference.masterIdentifier",
      "short" : "The identifier of the FHIR Imaging Study Manifest.",
      "definition" : "An OID according to the DICOM value representation UI. Note this format is used so the same value is used as the SOP Instance UID of the corresponding DICOM KOS manifest."
    },
    {
      "id" : "DocumentReference.identifier",
      "path" : "DocumentReference.identifier",
      "min" : 1
    },
    {
      "id" : "DocumentReference.type",
      "path" : "DocumentReference.type",
      "short" : "Kind of document (LOINC if possible), see section 6.X.6 of volume 3.",
      "min" : 1
    },
    {
      "id" : "DocumentReference.category",
      "path" : "DocumentReference.category",
      "short" : "Categorization of document, see section 6.X.6 of volume 3.",
      "min" : 1
    },
    {
      "id" : "DocumentReference.subject",
      "path" : "DocumentReference.subject",
      "min" : 1
    },
    {
      "id" : "DocumentReference.author",
      "path" : "DocumentReference.author",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "$this.resolve()"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Who and/or what authored the document (i.e. manifest)"
    },
    {
      "id" : "DocumentReference.author:source-organization",
      "path" : "DocumentReference.author",
      "sliceName" : "source-organization",
      "short" : "The organization that generated the manifest.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoCreatorOrganization"]
      }]
    },
    {
      "id" : "DocumentReference.author:source-device",
      "path" : "DocumentReference.author",
      "sliceName" : "source-device",
      "short" : "The device that generated the manifest.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoCreator"]
      }]
    },
    {
      "id" : "DocumentReference.authenticator",
      "path" : "DocumentReference.authenticator",
      "short" : "Who/what authenticated the document (i.e. manifest)"
    },
    {
      "id" : "DocumentReference.custodian",
      "path" : "DocumentReference.custodian",
      "short" : "Organization which maintains the document (i.e. manifest)"
    },
    {
      "id" : "DocumentReference.relatesTo",
      "path" : "DocumentReference.relatesTo",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "DocumentReference.relatesTo:kos-reference",
      "path" : "DocumentReference.relatesTo",
      "sliceName" : "kos-reference",
      "short" : "Reference to the DocumentReference resource that contains the DICOM KOS manifest that corresponds to this imaging manifest in FHIR format",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "DocumentReference.relatesTo:kos-reference.code",
      "path" : "DocumentReference.relatesTo.code",
      "patternCode" : "transforms"
    },
    {
      "id" : "DocumentReference.relatesTo:kos-reference.target",
      "path" : "DocumentReference.relatesTo.target",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoDicomKosDocumentReference"]
      }]
    },
    {
      "id" : "DocumentReference.content",
      "path" : "DocumentReference.content",
      "short" : "Clinical context of the manifest"
    },
    {
      "id" : "DocumentReference.content.extension",
      "path" : "DocumentReference.content.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "DocumentReference.content.extension:profile",
      "path" : "DocumentReference.content.extension",
      "sliceName" : "profile",
      "short" : "Contains the profile of the referred report",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-DocumentReference.content.profile"]
      }]
    },
    {
      "id" : "DocumentReference.content.extension:profile.extension:value",
      "path" : "DocumentReference.content.extension.extension",
      "sliceName" : "value"
    },
    {
      "id" : "DocumentReference.content.extension:profile.extension:value.extension",
      "path" : "DocumentReference.content.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "DocumentReference.content.extension:profile.extension:value.value[x]",
      "path" : "DocumentReference.content.extension.extension.value[x]",
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
      "id" : "DocumentReference.content.extension:profile.extension:value.value[x]:valueCanonical",
      "path" : "DocumentReference.content.extension.extension.value[x]",
      "sliceName" : "valueCanonical",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "canonical"
      }],
      "patternCanonical" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoFhirBundle"
    },
    {
      "id" : "DocumentReference.content.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "patternCode" : "application/fhir+json"
    },
    {
      "id" : "DocumentReference.content.attachment.language",
      "path" : "DocumentReference.content.attachment.language",
      "min" : 1
    },
    {
      "id" : "DocumentReference.content.attachment.creation",
      "path" : "DocumentReference.content.attachment.creation",
      "min" : 1
    },
    {
      "id" : "DocumentReference.content.format",
      "path" : "DocumentReference.content.format",
      "min" : 1
    },
    {
      "id" : "DocumentReference.content.format.system",
      "path" : "DocumentReference.content.format.system",
      "fixedUri" : "http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode"
    },
    {
      "id" : "DocumentReference.content.format.code",
      "path" : "DocumentReference.content.format.code",
      "fixedCode" : "urn:ihe:rad:MADO:fhir-manifest:2026"
    },
    {
      "id" : "DocumentReference.context",
      "path" : "DocumentReference.context",
      "min" : 1
    },
    {
      "id" : "DocumentReference.context.event",
      "path" : "DocumentReference.context.event",
      "short" : "Main clinical acts documented, could include the study procedure codes."
    },
    {
      "id" : "DocumentReference.context.period",
      "path" : "DocumentReference.context.period",
      "min" : 1
    },
    {
      "id" : "DocumentReference.context.period.start",
      "path" : "DocumentReference.context.period.start",
      "short" : "The start time of the study referred to by the manifest",
      "min" : 1
    },
    {
      "id" : "DocumentReference.context.facilityType",
      "path" : "DocumentReference.context.facilityType",
      "min" : 1
    },
    {
      "id" : "DocumentReference.context.practiceSetting",
      "path" : "DocumentReference.context.practiceSetting",
      "min" : 1
    },
    {
      "id" : "DocumentReference.context.related",
      "path" : "DocumentReference.context.related",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "identifier"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "DocumentReference.context.related:study-instance-uid",
      "path" : "DocumentReference.context.related",
      "sliceName" : "study-instance-uid",
      "short" : "The Study Instance UID of the imaging study that is the focus of the imaging manifest, represented as an Identifier with a fixed system and a value that corresponds to the Study Instance UID.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoReferencedStudyInstanceUidIdentifier"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Resource|4.0.1"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context.related:accession-number",
      "path" : "DocumentReference.context.related",
      "sliceName" : "accession-number",
      "short" : "The Accession Number of the imaging study that is the focus of the imaging manifest, represented as an Identifier with a fixed system and a value that corresponds to the Accession Number.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoReferencedAccessionNumberIdentifier"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Resource|4.0.1"]
      }],
      "mustSupport" : true
    }]
  }
}

```
