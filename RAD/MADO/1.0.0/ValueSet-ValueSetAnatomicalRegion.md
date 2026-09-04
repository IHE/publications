# ValueSet: Anatomical Region - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ValueSet: Anatomical Region**

## ValueSet: ValueSet: Anatomical Region 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/RAD/MADO/ValueSet/ValueSetAnatomicalRegion | *Version*:1.0.0 |
| Active as of 2026-09-03 | *Computable Name*:ValueSetAnatomicalRegion |

 
A shortlist of anatomical regions that can be used for searching reports and manifests. This set is defined in Table 6.X.6.4-1. In this case discrepancies, the values in the table have prevalence. It is planned to move this ValueSet to IHE terminologies. When that is done, this definition will be removed. 

 **References** 

* [Extension: Anatomical Region](StructureDefinition-MadoAnatomicalRegionExtension.md)
* [MADO MHD DocumentReference Profile for DICOM KOS Imaging Manifests](StructureDefinition-MadoDicomKosDocumentReference.md)
* [MADO MHD DocumentReference Profile for FHIR Imaging Study Manifest](StructureDefinition-MadoFhirDocumentReference.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ValueSetAnatomicalRegion",
  "url" : "https://profiles.ihe.net/RAD/MADO/ValueSet/ValueSetAnatomicalRegion",
  "version" : "1.0.0",
  "name" : "ValueSetAnatomicalRegion",
  "title" : "ValueSet: Anatomical Region",
  "status" : "active",
  "experimental" : false,
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
  "description" : "A shortlist of anatomical regions that can be used for searching reports and manifests. This set is defined in Table 6.X.6.4-1. In this case discrepancies, the values in the table have prevalence. It is planned to\nmove this ValueSet to IHE terminologies. When that is done, this definition will be removed.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "63337009"
      },
      {
        "code" : "38266002"
      },
      {
        "code" : "53120007"
      },
      {
        "code" : "61685007"
      },
      {
        "code" : "67734004"
      },
      {
        "code" : "774007"
      },
      {
        "code" : "113257007"
      },
      {
        "code" : "80891009"
      },
      {
        "code" : "76752008"
      },
      {
        "code" : "1141981001"
      }]
    }]
  }
}

```
