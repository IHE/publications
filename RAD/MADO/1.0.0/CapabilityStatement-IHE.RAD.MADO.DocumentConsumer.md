# MADO Document Consumer (client) - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MADO Document Consumer (client)**

## CapabilityStatement: MADO Document Consumer (client) 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/RAD/MADO/CapabilityStatement/IHE.RAD.MADO.DocumentConsumer | *Version*:1.0.0 |
| Active as of 2026-02-27 | *Computable Name*:IHE_RAD_MADO_DocumentConsumer |

 
IHE RAD Manifest based Access to DICOM Objects(MADO) - Document Consumer (client). It extends MHD [Document Consumer (client)](https://build.fhir.org/ig/IHE/ITI.MHD/CapabilityStatement-IHE.MHD.DocumentConsumer.html). 

Please note that this CapabilityStatement representation only shows the delta of this instance with the MHD [Document Consumer (client)](https://build.fhir.org/ig/IHE/ITI.MHD/CapabilityStatement-IHE.MHD.DocumentConsumer.html). All the functionality specified by the [Document Consumer (client)](https://build.fhir.org/ig/IHE/ITI.MHD/CapabilityStatement-IHE.MHD.DocumentConsumer.html) SHALL also be supported.

 [Raw OpenAPI-Swagger Definition file](IHE.RAD.MADO.DocumentConsumer.openapi.json) | [Download](IHE.RAD.MADO.DocumentConsumer.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.RAD.MADO.DocumentConsumer",
  "url" : "https://profiles.ihe.net/RAD/MADO/CapabilityStatement/IHE.RAD.MADO.DocumentConsumer",
  "version" : "1.0.0",
  "name" : "IHE_RAD_MADO_DocumentConsumer",
  "title" : "MADO Document Consumer (client)",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-02-27",
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
  "description" : "IHE RAD Manifest based Access to DICOM Objects(MADO) - Document Consumer (client). It extends MHD  [Document Consumer (client)](https://build.fhir.org/ig/IHE/ITI.MHD/CapabilityStatement-IHE.MHD.DocumentConsumer.html). \n",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "kind" : "requirements",
  "imports" : ["https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.DocumentConsumer"],
  "fhirVersion" : "4.0.1",
  "format" : ["json", "xml"],
  "rest" : [{
    "mode" : "client",
    "resource" : [{
      "type" : "DocumentReference",
      "searchParam" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "name" : "bodysite",
        "definition" : "https://profiles.ihe.net/RAD/MADO/SearchParameter/SearchParameterDocumentReferenceBodySite",
        "type" : "token",
        "documentation" : "Anatomical region of the related imaging study"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "name" : "modality",
        "definition" : "https://profiles.ihe.net/RAD/MADO/SearchParameter/SearchParameterDocumentReferenceModality",
        "type" : "token",
        "documentation" : "Modality of the related imaging study"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "name" : "study-instance-uid",
        "definition" : "https://profiles.ihe.net/RAD/MADO/SearchParameter/SearchParameterDocumentReferenceStudyInstanceUid",
        "type" : "token",
        "documentation" : "Study Instance UID of the related imaging study"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "name" : "accession-number",
        "definition" : "https://profiles.ihe.net/RAD/MADO/SearchParameter/SearchParameterDocumentReferenceAccessionNumber",
        "type" : "token",
        "documentation" : "Accession Number of the related imaging study"
      }]
    }]
  }]
}

```
