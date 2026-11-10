# DocumentReference Example for DICOM KOS manifests - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DocumentReference Example for DICOM KOS manifests**

## Example DocumentReference: DocumentReference Example for DICOM KOS manifests

Profile: [MADO MHD DocumentReference Profile for DICOM KOS Imaging Manifests](StructureDefinition-MadoDicomKosDocumentReference.md)

**Extension: DocumentReference.modality (R5 cross-version)**: Magnetic Resonance

**Extension: DocumentReference.bodySite**: Lower limb structure

**masterIdentifier**: [DICOM Unique Id](http://terminology.hl7.org/6.5.0/NamingSystem-dui.html)/1.2.392.200140.2.1.1.1.2.799008771.2076.1519721309.448 (use: usual, )

**identifier**: [DICOM Unique Id](http://terminology.hl7.org/6.5.0/NamingSystem-dui.html)/1.2.392.200140.2.1.1.1.2.799008771.2076.1519721309.448

**status**: Current

**type**: Diagnostic imaging study

**category**: Diagnostic imaging study

**subject**: [Pietje Puk Male, DoB Unknown ( Medical Record number: PID_666 (use: official, ))](Patient-ExamplePatient.md)

**date**: 2025-05-08 00:00:00+0000

### RelatesTos

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Target** |
| * | Transforms | [DocumentReference: extension = Magnetic Resonance,Lower limb structure; masterIdentifier = http://www.example.com/identifiers/documentreference#koewopfwjqoddasf (use: usual, ); identifier = http://www.example.com/identifiers/documentreference#koewopfwjqoddasf (use: usual, ); status = current; type = Diagnostic imaging study; category = Diagnostic imaging study; date = 2025-05-08 00:00:00+0000](DocumentReference-DocumentReferenceFHIRwithTransform.md) |

> **content**

### Attachments

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **ContentType** | **Language** | **Url** | **Creation** |
| * | application/dicom | German (Germany) | Binary/mado-kos-manifest-binary | 2025-05-08 00:00:00+0000 |

**format**: DCMUID: 1.2.840.10008.5.1.4.1.1.88.59 (Key Object Selection Document)

> **context****period**: 2018-02-27 09:48:29+0100 --> (ongoing)**facilityType**: Hospital-based radiology facility**practiceSetting**: Radiology**related**: 
* Identifier: Study Instance UID/1.2.392.200140.2.1.1.1.2.799008771.2076.1519721309.448
* Identifier: Accession Id/2017092101



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "DocumentReferenceKOSwithTransform",
  "meta" : {
    "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoDicomKosDocumentReference"]
  },
  "extension" : [{
    "url" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/ext-R5-DocumentReference.modality",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://dicom.nema.org/resources/ontology/DCM",
        "code" : "MR"
      }]
    }
  },
  {
    "url" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/ext-R5-DocumentReference.bodySite",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "61685007"
      }]
    }
  }],
  "masterIdentifier" : {
    "use" : "usual",
    "system" : "urn:dicom:uid",
    "value" : "1.2.392.200140.2.1.1.1.2.799008771.2076.1519721309.448"
  },
  "identifier" : [{
    "system" : "urn:dicom:uid",
    "value" : "1.2.392.200140.2.1.1.1.2.799008771.2076.1519721309.448"
  }],
  "status" : "current",
  "type" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "18748-4",
      "display" : "Diagnostic imaging study"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "18748-4",
      "display" : "Diagnostic imaging study"
    }]
  }],
  "subject" : {
    "reference" : "Patient/ExamplePatient"
  },
  "date" : "2025-05-08T00:00:00Z",
  "relatesTo" : [{
    "code" : "transforms",
    "target" : {
      "reference" : "DocumentReference/DocumentReferenceFHIRwithTransform"
    }
  }],
  "content" : [{
    "attachment" : {
      "contentType" : "application/dicom",
      "language" : "de-DE",
      "url" : "Binary/mado-kos-manifest-binary",
      "creation" : "2025-05-08T00:00:00Z"
    },
    "format" : {
      "system" : "http://dicom.nema.org/resources/ontology/DCMUID",
      "code" : "1.2.840.10008.5.1.4.1.1.88.59",
      "display" : "Key Object Selection Document"
    }
  }],
  "context" : {
    "period" : {
      "start" : "2018-02-27T09:48:29+01:00"
    },
    "facilityType" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "79491001",
        "display" : "Hospital-based radiology facility"
      }]
    },
    "practiceSetting" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "394914008",
        "display" : "Radiology"
      }]
    },
    "related" : [{
      "identifier" : {
        "type" : {
          "coding" : [{
            "system" : "http://dicom.nema.org/resources/ontology/DCM",
            "code" : "110180",
            "display" : "Study Instance UID"
          }]
        },
        "system" : "urn:dicom:uid",
        "value" : "1.2.392.200140.2.1.1.1.2.799008771.2076.1519721309.448"
      }
    },
    {
      "identifier" : {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "ACSN",
            "display" : "Accession Id"
          },
          {
            "system" : "http://dicom.nema.org/resources/ontology/DCM",
            "code" : "121022",
            "display" : "Accession Number"
          }]
        },
        "system" : "http://hospital.org/acc",
        "value" : "2017092101"
      }
    }]
  }
}

```
