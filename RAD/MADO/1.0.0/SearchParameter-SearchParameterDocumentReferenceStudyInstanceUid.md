# SearchParameterDocumentReferenceStudyInstanceUid - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SearchParameterDocumentReferenceStudyInstanceUid**

## SearchParameter: SearchParameterDocumentReferenceStudyInstanceUid 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/RAD/MADO/SearchParameter/SearchParameterDocumentReferenceStudyInstanceUid | *Version*:1.0.0 |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:DocumentReferenceStudyInstanceUid |

 
Searches for document references with a specific Study Instance UID. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "SearchParameterDocumentReferenceStudyInstanceUid",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "trial-use"
  }],
  "url" : "https://profiles.ihe.net/RAD/MADO/SearchParameter/SearchParameterDocumentReferenceStudyInstanceUid",
  "version" : "1.0.0",
  "name" : "DocumentReferenceStudyInstanceUid",
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
  "description" : "Searches for document references with a specific Study Instance UID.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "code" : "study-instance-uid",
  "base" : ["DocumentReference"],
  "type" : "token",
  "expression" : "DocumentReference.context.related.identifier.where( type.coding.where( system= 'http://dicom.nema.org/resources/ontology/DCM' and code = '110180' ).exists())"
}

```
