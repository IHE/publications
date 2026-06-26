# Medication Overview Bundle - IHE Pharmacy Medication Overview v1.0.0-preview

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication Overview Bundle**

## Resource Profile: Medication Overview Bundle 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicationOverview | *Version*:1.0.0-preview |
| Active as of 2026-06-26 | *Computable Name*:MedicationOverviewBundle |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
The profile for the full Medication overview as a Bundle type Document 

**Usages:**

* CapabilityStatements using this Profile: [Medication Overview Consumer](CapabilityStatement-MedicationOverviewConsumer.md) and [Medication Overview Responder](CapabilityStatement-MedicationOverviewResponder.md)
* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.pharm.meow|current/StructureDefinition/StructureDefinition-MedicationOverview.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MedicationOverview.csv), [Excel](StructureDefinition-MedicationOverview.xlsx), [Schematron](StructureDefinition-MedicationOverview.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MedicationOverview",
  "url" : "https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicationOverview",
  "version" : "1.0.0-preview",
  "name" : "MedicationOverviewBundle",
  "title" : "Medication Overview Bundle",
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
  "description" : "The profile for the full Medication overview as a Bundle type Document",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "IHE http://www.ihe.net/Governance/#Intellectual_Property",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.identifier",
      "path" : "Bundle.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "short" : "document",
      "definition" : "Bundle is a document",
      "fixedCode" : "document"
    },
    {
      "id" : "Bundle.total",
      "path" : "Bundle.total",
      "max" : "0"
    },
    {
      "id" : "Bundle.link",
      "path" : "Bundle.link",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resource"
        }],
        "description" : "Slicing based on the profile conformance of the sliced element",
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "Bundle.entry:Composition",
      "path" : "Bundle.entry",
      "sliceName" : "Composition",
      "short" : "Composition",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:Composition.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Composition",
        "profile" : ["https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicationOverviewComposition"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Patient",
      "path" : "Bundle.entry",
      "sliceName" : "Patient",
      "short" : "Patient for whom the record is concerned",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:Patient.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Patient"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:MedRecordTreatment",
      "path" : "Bundle.entry",
      "sliceName" : "MedRecordTreatment",
      "short" : "Treatments associated with the patient",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:MedRecordTreatment.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "CarePlan",
        "profile" : ["https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicationTreatment"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:MedRecordTreatmentLine",
      "path" : "Bundle.entry",
      "sliceName" : "MedRecordTreatmentLine",
      "short" : "Treatment lines associated with the patient",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:MedRecordTreatmentLine.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "MedicationStatement",
        "profile" : ["https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicationTreatmentLine"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:MedRecordOrder",
      "path" : "Bundle.entry",
      "sliceName" : "MedRecordOrder",
      "short" : "Medication summaries associated with the patient",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:MedRecordOrder.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "MedicationRequest"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:MedRecordDispense",
      "path" : "Bundle.entry",
      "sliceName" : "MedRecordDispense",
      "short" : "Medication summaries associated with the patient",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:MedRecordDispense.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "MedicationDispense"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:MedRecordAdministration",
      "path" : "Bundle.entry",
      "sliceName" : "MedRecordAdministration",
      "short" : "Medication summaries associated with the patient",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:MedRecordAdministration.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "MedicationAdministration"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:MedRecordUsage",
      "path" : "Bundle.entry",
      "sliceName" : "MedRecordUsage",
      "short" : "Medication summaries associated with the patient",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:MedRecordUsage.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "MedicationStatement"
      }],
      "mustSupport" : true
    }]
  }
}

```
