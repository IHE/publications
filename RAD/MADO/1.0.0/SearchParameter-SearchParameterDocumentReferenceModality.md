# SearchParameterDocumentReferenceModality - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SearchParameterDocumentReferenceModality**

## SearchParameter: SearchParameterDocumentReferenceModality 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/RAD/MADO/SearchParameter/SearchParameterDocumentReferenceModality | *Version*:1.0.0 |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:DocumentReferenceModality |

 
Searches for document references with a specific modality. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "SearchParameterDocumentReferenceModality",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "trial-use"
  }],
  "url" : "https://profiles.ihe.net/RAD/MADO/SearchParameter/SearchParameterDocumentReferenceModality",
  "version" : "1.0.0",
  "name" : "DocumentReferenceModality",
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
  "description" : "Searches for document references with a specific modality.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "code" : "modality",
  "base" : ["DocumentReference"],
  "type" : "token",
  "expression" : "DocumentReference.extension('https://profiles.ihe.net/RAD/MADO/StructureDefinition/ext-R5-DocumentReference.modality').value"
}

```
