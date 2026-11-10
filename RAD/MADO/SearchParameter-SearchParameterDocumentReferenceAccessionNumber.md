# SearchParameterDocumentReferenceAccessionNumber - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SearchParameterDocumentReferenceAccessionNumber**

## SearchParameter: SearchParameterDocumentReferenceAccessionNumber 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/RAD/MADO/SearchParameter/SearchParameterDocumentReferenceAccessionNumber | *Version*:1.0.0 |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | *Computable Name*:DocumentReferenceAccessionNumber |

 
Searches for document references with a specific Accession Number. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "SearchParameterDocumentReferenceAccessionNumber",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "trial-use"
  }],
  "url" : "https://profiles.ihe.net/RAD/MADO/SearchParameter/SearchParameterDocumentReferenceAccessionNumber",
  "version" : "1.0.0",
  "name" : "DocumentReferenceAccessionNumber",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Searches for document references with a specific Accession Number.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "code" : "accession-number",
  "base" : ["DocumentReference"],
  "type" : "token",
  "expression" : "DocumentReference.context.related.identifier.where( type.coding.where( system= 'http://dicom.nema.org/resources/ontology/DCM' and code = '121022' ).exists())"
}

```
