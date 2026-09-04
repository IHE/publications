# mado-documentreference-kos--2047166865 - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mado-documentreference-kos--2047166865**

## DocumentReference: mado-documentreference-kos--2047166865

**Extension: DocumentReference.modality (R5 cross-version)**: Computed Tomography

**Extension: DocumentReference.modality (R5 cross-version)**: Key Object Selection

**status**: Current

**type**: Diagnostic imaging Study

**category**: Medical-Imaging

**subject**: [John DOE](Patient-pat-mrn--1097192655.md)

**date**: 2022-08-22 08:31:17+0200

**description**: Imaging Manifest for Imaging Study: Head CT on CT of Head, KO (urn:oid:1.2.250.1.59.40211.22756022.2.1.102)

> **content**
> **R5: Content profile rules for the document (new)**
* value: [MADO FHIR Imaging Study Manifest Bundle](StructureDefinition-MadoFhirBundle.md)

### Attachments

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Title** | **Creation** |
| * | application/dicom | [Binary: application/dicom (15276 bytes base64)](Binary-dicom-kos-mado--2047166865.md) | KOS Imaging Manifest for Imaging Study | 2026-06-19 17:00:57+0200 |

**format**: DICOM_UIDs: 1.2.840.10008.5.1.4.1.1.88.59 (Key Object Selection Document)

> **context****period**: 2022-08-22 08:31:17+0200 --> (ongoing)**related**: 
* Identifier: Study Instance UID/urn:oid:1.2.250.1.59.40211.22756022.2.1.102
* Identifier: Accession Number/8529258169397744



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "mado-documentreference-kos--2047166865",
  "extension" : [{
    "url" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/ext-R5-DocumentReference.modality",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://dicom.nema.org/resources/ontology/DCM",
        "code" : "CT"
      }]
    }
  },
  {
    "url" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/ext-R5-DocumentReference.modality",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://dicom.nema.org/resources/ontology/DCM",
        "code" : "KO"
      }]
    }
  }],
  "status" : "current",
  "type" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "18748-4",
      "display" : "Diagnostic imaging Study"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://hl7.eu/fhir/eu-health-data-api/CodeSystem/eehrxf-document-priority-category-cs",
      "code" : "Medical-Imaging",
      "display" : "Medical-Imaging"
    }]
  }],
  "subject" : {
    "reference" : "Patient/pat-mrn--1097192655",
    "type" : "Patient",
    "display" : "John DOE"
  },
  "date" : "2022-08-22T08:31:17.658+02:00",
  "description" : "Imaging Manifest for Imaging Study: Head CT on CT of Head, KO (urn:oid:1.2.250.1.59.40211.22756022.2.1.102)",
  "content" : [{
    "extension" : [{
      "extension" : [{
        "url" : "value",
        "valueUri" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoFhirBundle"
      }],
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-DocumentReference.content.profile"
    }],
    "attachment" : {
      "contentType" : "application/dicom",
      "url" : "Binary/dicom-kos-mado--2047166865",
      "title" : "KOS Imaging Manifest for Imaging Study",
      "creation" : "2026-06-19T17:00:57+02:00"
    },
    "format" : {
      "system" : "http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs",
      "code" : "1.2.840.10008.5.1.4.1.1.88.59",
      "display" : "Key Object Selection Document"
    }
  }],
  "context" : {
    "period" : {
      "start" : "2022-08-22T08:31:17+02:00"
    },
    "related" : [{
      "type" : "ImagingStudy",
      "identifier" : {
        "type" : {
          "coding" : [{
            "system" : "http://dicom.nema.org/resources/ontology/DCM",
            "code" : "110180",
            "display" : "Study Instance UID"
          }]
        },
        "system" : "urn:dicom:uid",
        "value" : "urn:oid:1.2.250.1.59.40211.22756022.2.1.102"
      }
    },
    {
      "type" : "ServiceRequest",
      "identifier" : {
        "type" : {
          "coding" : [{
            "system" : "http://dicom.nema.org/resources/ontology/DCM",
            "code" : "121022",
            "display" : "Accession Number"
          },
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "ACSN",
            "display" : "Accession Id"
          }]
        },
        "system" : "http://example.org/fhir/ris-ids",
        "value" : "8529258169397744"
      }
    }]
  }
}

```
