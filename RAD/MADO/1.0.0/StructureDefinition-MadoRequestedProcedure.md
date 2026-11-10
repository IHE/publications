# MADO Requested Procedure - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MADO Requested Procedure**

## Resource Profile: MADO Requested Procedure 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoRequestedProcedure | *Version*:1.0.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:MadoRequestedProcedure |

 
A profile for the ServiceRequest resource that represents the Requested Procedure (see 6.X.2.8.1 Referenced Request Macro Description). 

**Usages:**

* Use this Profile: [MADO FHIR Imaging Study Manifest Bundle](StructureDefinition-MadoFhirBundle.md)
* Examples for this Profile: [ServiceRequest/MadoRequestedProcedureExample](ServiceRequest-MadoRequestedProcedureExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.rad.mado|current/StructureDefinition/StructureDefinition-MadoRequestedProcedure.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MadoRequestedProcedure.csv), [Excel](StructureDefinition-MadoRequestedProcedure.xlsx), [Schematron](StructureDefinition-MadoRequestedProcedure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MadoRequestedProcedure",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "trial-use"
  }],
  "url" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoRequestedProcedure",
  "version" : "1.0.0",
  "name" : "MadoRequestedProcedure",
  "title" : "MADO Requested Procedure",
  "status" : "active",
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
  "description" : "A profile for the ServiceRequest resource that represents the Requested Procedure (see 6.X.2.8.1 Referenced Request Macro Description).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest.identifier",
      "path" : "ServiceRequest.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "type"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "ServiceRequest.identifier:accession-number",
      "path" : "ServiceRequest.identifier",
      "sliceName" : "accession-number",
      "short" : "The Accession Number, the issuer of the accession number and the locally unique number that identifies the Imaging Service Request.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoAccessionNumberIdentifier"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.identifier:accession-number.type",
      "path" : "ServiceRequest.identifier.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "ACSN"
        }]
      }
    },
    {
      "id" : "ServiceRequest.identifier:placer",
      "path" : "ServiceRequest.identifier",
      "sliceName" : "placer",
      "short" : "The identifier assigned by the system that placed the order.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.identifier:placer.type",
      "path" : "ServiceRequest.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "PLAC"
        }]
      }
    },
    {
      "id" : "ServiceRequest.identifier:filler",
      "path" : "ServiceRequest.identifier",
      "sliceName" : "filler",
      "short" : "The identifier assigned by the system that filled the order.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "ServiceRequest.identifier:filler.type",
      "path" : "ServiceRequest.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "FILL"
        }]
      }
    },
    {
      "id" : "ServiceRequest.status",
      "path" : "ServiceRequest.status",
      "short" : "The status of the requested procedure, typically set to completed."
    },
    {
      "id" : "ServiceRequest.intent",
      "path" : "ServiceRequest.intent",
      "short" : "The intent of the requested procedure, typically set to order."
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "short" : "The `Requesting Service Code Sequence` or (when not available) the `Procedure Code` from the DICOM study.",
      "binding" : {
        "strength" : "example",
        "valueSet" : "https://profiles.ihe.net/RAD/MADO/ValueSet/ProcedureEuImagingType"
      }
    }]
  }
}

```
