# Requested Procedure Example with Placer and Filler - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Requested Procedure Example with Placer and Filler**

## Example ServiceRequest: Requested Procedure Example with Placer and Filler

Profile: [MADO Requested Procedure](StructureDefinition-MadoRequestedProcedure.md)

**identifier**: Accession Id/1731954284869428, Placer Identifier/PLAC-2024-0098, Filler Identifier/FILL-2024-0442

**status**: Completed

**intent**: Order

**code**: Computed tomography

**subject**: [Pietje Puk Male, DoB Unknown ( Medical Record number: PID_666 (use: official, ))](Patient-ExamplePatient.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "MadoRequestedProcedureExample",
  "meta" : {
    "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoRequestedProcedure"]
  },
  "identifier" : [{
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
    "system" : "http://example.org/fhir/ris-ids",
    "value" : "1731954284869428"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PLAC",
        "display" : "Placer Identifier"
      }]
    },
    "system" : "http://example.org/fhir/placer-ids",
    "value" : "PLAC-2024-0098"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "FILL",
        "display" : "Filler Identifier"
      }]
    },
    "system" : "http://example.org/fhir/filler-ids",
    "value" : "FILL-2024-0442"
  }],
  "status" : "completed",
  "intent" : "order",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "77477000",
      "display" : "Computed tomography"
    }]
  },
  "subject" : {
    "reference" : "Patient/ExamplePatient"
  }
}

```
