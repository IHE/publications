# Example patient - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example patient**

## Example Patient: Example patient

Pietje Puk Male, DoB Unknown ( Medical Record number: PID_666 (use: official, ))

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ExamplePatient",
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "MR",
        "display" : "Medical Record number"
      }]
    },
    "system" : "http://example.org/hospital/mrn",
    "value" : "PID_666"
  }],
  "name" : [{
    "family" : "Puk",
    "given" : ["Pietje"]
  }],
  "gender" : "male"
}

```
