# pat-mrn--1097192655 - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **pat-mrn--1097192655**

## Patient: pat-mrn--1097192655

John DOE Male, DoB: 1977-05-30 ( Medical Record number: UV59569735 (use: usual, ))

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "pat-mrn--1097192655",
  "identifier" : [{
    "use" : "usual",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MR",
        "display" : "Medical Record number"
      }]
    },
    "system" : "http://example.org/fhir/mrn-ids",
    "value" : "UV59569735"
  }],
  "name" : [{
    "text" : "John DOE",
    "family" : "DOE",
    "given" : ["John"]
  }],
  "gender" : "male",
  "birthDate" : "1977-05-30"
}

```
