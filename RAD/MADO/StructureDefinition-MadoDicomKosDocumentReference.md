# MADO MHD DocumentReference Profile for DICOM KOS Imaging Manifests - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MADO MHD DocumentReference Profile for DICOM KOS Imaging Manifests**

## Resource Profile: MADO MHD DocumentReference Profile for DICOM KOS Imaging Manifests 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoDicomKosDocumentReference | *Version*:1.0.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:MadoDicomKosDocumentReference |

 
MADO specific profile for the IHE-MHD Document Reference for MADO DICOM KOS Manifests that includes the MADO specific content format, the extensions related to body-site and modality, and the definition on where `StudyInstanceUID` and `AccessionNumber` are stored. 
This profile requires `context.period` and copies most of the restrictions defined in the [MHD DocumentReference Comprehensive](https://profiles.ihe.net/ITI/MHD/StructureDefinition-IHE.MHD.Comprehensive.DocumentReference.html) profiles (except `securityLabel`). 

**Usages:**

* Refer to this Profile: [MADO MHD DocumentReference Profile for FHIR Imaging Study Manifest](StructureDefinition-MadoFhirDocumentReference.md)
* Examples for this Profile: [DocumentReference/DocumentReferenceKOS](DocumentReference-DocumentReferenceKOS.md), [DocumentReference/DocumentReferenceKOSNoRelated](DocumentReference-DocumentReferenceKOSNoRelated.md) and [DocumentReference/DocumentReferenceKOSwithTransform](DocumentReference-DocumentReferenceKOSwithTransform.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.rad.mado|current/StructureDefinition/StructureDefinition-MadoDicomKosDocumentReference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MadoDicomKosDocumentReference.csv), [Excel](StructureDefinition-MadoDicomKosDocumentReference.xlsx), [Schematron](StructureDefinition-MadoDicomKosDocumentReference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MadoDicomKosDocumentReference",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "trial-use"
  }],
  "url" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoDicomKosDocumentReference",
  "version" : "1.0.0",
  "name" : "MadoDicomKosDocumentReference",
  "title" : "MADO MHD DocumentReference Profile for DICOM KOS Imaging Manifests",
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
  "description" : "MADO specific profile for the IHE-MHD Document Reference for MADO DICOM KOS Manifests that includes the MADO specific content format, the extensions\nrelated to body-site and modality, and the definition on where `StudyInstanceUID` and `AccessionNumber` are stored. \n\nThis profile requires `context.period` and copies most of the restrictions defined in the [MHD DocumentReference Comprehensive](https://profiles.ihe.net/ITI/MHD/StructureDefinition-IHE.MHD.Comprehensive.DocumentReference.html) \nprofiles (except `securityLabel`).\n",
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
        "source" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoDicomKosDocumentReference"
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
      "short" : "The SOP Instance UID of the DICOM KOS manifest.",
      "definition" : "An OID according to the DICOM value representation UI."
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
      "id" : "DocumentReference.relatesTo:fhir-reference",
      "path" : "DocumentReference.relatesTo",
      "sliceName" : "fhir-reference",
      "short" : "Reference to the DocumentReference resource that contains the FHIR Imaging Study Manifest that corresponds to this imaging manifest in DICOM KOS format",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "DocumentReference.relatesTo:fhir-reference.code",
      "path" : "DocumentReference.relatesTo.code",
      "patternCode" : "transforms"
    },
    {
      "id" : "DocumentReference.relatesTo:fhir-reference.target",
      "path" : "DocumentReference.relatesTo.target",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoFhirDocumentReference"]
      }]
    },
    {
      "id" : "DocumentReference.content",
      "path" : "DocumentReference.content",
      "short" : "Clinical context of the manifest"
    },
    {
      "id" : "DocumentReference.content.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "patternCode" : "application/dicom"
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
      "patternCoding" : {
        "system" : "http://dicom.nema.org/resources/ontology/DCMUID",
        "code" : "1.2.840.10008.5.1.4.1.1.88.59",
        "display" : "Key Object Selection Document"
      }
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
