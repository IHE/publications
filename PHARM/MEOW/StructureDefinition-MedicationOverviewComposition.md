# Medication Overview Composition - IHE Pharmacy Medication Overview v1.0.0-preview

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication Overview Composition**

## Resource Profile: Medication Overview Composition 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicationOverviewComposition | *Version*:1.0.0-preview |
| Active as of 2026-06-26 | *Computable Name*:MedicationOverviewComposition |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
The profile for how to organize the information in a medication overview 

**Usages:**

* Use this Profile: [Medication Overview Bundle](StructureDefinition-MedicationOverview.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.pharm.meow|current/StructureDefinition/StructureDefinition-MedicationOverviewComposition.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MedicationOverviewComposition.csv), [Excel](StructureDefinition-MedicationOverviewComposition.xlsx), [Schematron](StructureDefinition-MedicationOverviewComposition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MedicationOverviewComposition",
  "url" : "https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicationOverviewComposition",
  "version" : "1.0.0-preview",
  "name" : "MedicationOverviewComposition",
  "title" : "Medication Overview Composition",
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
  "description" : "The profile for how to organize the information in a medication overview",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "IHE http://www.ihe.net/Governance/#Intellectual_Property",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "fhirdocumentreference",
    "uri" : "http://hl7.org/fhir/documentreference",
    "name" : "FHIR DocumentReference"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Composition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Composition.section",
      "path" : "Composition.section",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code.coding.code"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Composition.section:MedRecordTreatment",
      "path" : "Composition.section",
      "sliceName" : "MedRecordTreatment",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:MedRecordTreatment.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicationTreatment"]
      }]
    },
    {
      "id" : "Composition.section:MedRecordTreatmentLine",
      "path" : "Composition.section",
      "sliceName" : "MedRecordTreatmentLine",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:MedRecordTreatmentLine.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicationTreatmentLine"]
      }]
    },
    {
      "id" : "Composition.section:MedRecordMedicationSummaryView",
      "path" : "Composition.section",
      "sliceName" : "MedRecordMedicationSummaryView",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:detailsRecord",
      "path" : "Composition.section",
      "sliceName" : "detailsRecord",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:detailsRecord.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/MedicationStatement",
        "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
        "http://hl7.org/fhir/StructureDefinition/MedicationDispense",
        "http://hl7.org/fhir/StructureDefinition/MedicationAdministration"]
      }]
    }]
  }
}

```
