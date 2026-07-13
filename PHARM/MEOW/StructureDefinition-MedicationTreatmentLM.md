# Medication Treatment (model) - IHE Pharmacy Medication Overview v1.0.0-preview

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication Treatment (model)**

## Logical Model: Medication Treatment (model) 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicationTreatmentLM | *Version*:1.0.0-preview |
| Active as of 2026-06-26 | *Computable Name*:MedicationTreatmentLM |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
Logical model for subgroups of treatment lines that are somehow related to eachother (the same purpose, other) 

**Usages:**

* Use this Logical Model: [Medication Treatment Line (model)](StructureDefinition-MedicationTreatmentLineLM.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.pharm.meow|current/StructureDefinition/StructureDefinition-MedicationTreatmentLM.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MedicationTreatmentLM.csv), [Excel](StructureDefinition-MedicationTreatmentLM.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MedicationTreatmentLM",
  "extension" : [{
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-target",
    "valueBoolean" : true
  }],
  "url" : "https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicationTreatmentLM",
  "version" : "1.0.0-preview",
  "name" : "MedicationTreatmentLM",
  "title" : "Medication Treatment (model)",
  "status" : "active",
  "date" : "2026-06-26T22:35:12+02:00",
  "publisher" : "Integrating the Healthcare Enterprise (IHE)",
  "contact" : [{
    "name" : "Integrating the Healthcare Enterprise (IHE)",
    "telecom" : [{
      "system" : "url",
      "value" : "http://ihe.net"
    },
    {
      "system" : "email",
      "value" : "secretary@ihe.net"
    }]
  },
  {
    "name" : "Jose Costa Teixeira",
    "telecom" : [{
      "system" : "email",
      "value" : "jose.a.teixeira@gmail.com",
      "use" : "work"
    }]
  }],
  "description" : "Logical model for subgroups of treatment lines that are somehow related to eachother (the same purpose, other)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "IHE http://www.ihe.net/Governance/#Intellectual_Property",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicationTreatmentLM",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "MedicationTreatmentLM",
      "path" : "MedicationTreatmentLM",
      "short" : "Medication Treatment (model)",
      "definition" : "Logical model for subgroups of treatment lines that are somehow related to eachother (the same purpose, other)"
    },
    {
      "id" : "MedicationTreatmentLM.comment",
      "path" : "MedicationTreatmentLM.comment",
      "short" : "Comment",
      "definition" : "Comment",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "MedicationTreatmentLM.treatmentPeriod",
      "path" : "MedicationTreatmentLM.treatmentPeriod",
      "short" : "The intended or effective treatment period",
      "definition" : "The intended or effective treatment period",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "MedicationTreatmentLM.identifier",
      "path" : "MedicationTreatmentLM.identifier",
      "short" : "Unique identifier of the treatment",
      "definition" : "Unique identifier of the treatment",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "MedicationTreatmentLM.indication",
      "path" : "MedicationTreatmentLM.indication",
      "short" : "Reason why the treatment has been prescribed to the patient, or why the patient claims to be taking it",
      "definition" : "Reason why the treatment has been prescribed to the patient, or why the patient claims to be taking it",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
