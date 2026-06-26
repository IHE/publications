# Medication Treatment - IHE Pharmacy Medication Overview v1.0.0-preview

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication Treatment**

## Resource Profile: Medication Treatment 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicationTreatment | *Version*:1.0.0-preview |
| Active as of 2026-06-26 | *Computable Name*:MedicationTreatment |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
The profile for Medication Treatment in a Medication Record - a set of treatment lines/items 

**Usages:**

* Use this Profile: [Medication Overview Bundle](StructureDefinition-MedicationOverview.md)
* Refer to this Profile: [Medication Overview Composition](StructureDefinition-MedicationOverviewComposition.md)
* CapabilityStatements using this Profile: [Medication Overview Responder](CapabilityStatement-MedicationOverviewResponder.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.pharm.meow|current/StructureDefinition/StructureDefinition-MedicationTreatment.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MedicationTreatment.csv), [Excel](StructureDefinition-MedicationTreatment.xlsx), [Schematron](StructureDefinition-MedicationTreatment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MedicationTreatment",
  "url" : "https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicationTreatment",
  "version" : "1.0.0-preview",
  "name" : "MedicationTreatment",
  "title" : "Medication Treatment",
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
  "description" : "The profile for Medication Treatment in a Medication Record - a set of treatment lines/items",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CarePlan",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CarePlan",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CarePlan.identifier",
      "path" : "CarePlan.identifier",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.instantiatesUri",
      "path" : "CarePlan.instantiatesUri",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.basedOn",
      "path" : "CarePlan.basedOn",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.replaces",
      "path" : "CarePlan.replaces",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.partOf",
      "path" : "CarePlan.partOf",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.status",
      "path" : "CarePlan.status",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.intent",
      "path" : "CarePlan.intent",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.category",
      "path" : "CarePlan.category",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.title",
      "path" : "CarePlan.title",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.description",
      "path" : "CarePlan.description",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.subject",
      "path" : "CarePlan.subject",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.encounter",
      "path" : "CarePlan.encounter",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.period",
      "path" : "CarePlan.period",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.created",
      "path" : "CarePlan.created",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.contributor",
      "path" : "CarePlan.contributor",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.careTeam",
      "path" : "CarePlan.careTeam",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.addresses",
      "path" : "CarePlan.addresses",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.supportingInfo",
      "path" : "CarePlan.supportingInfo",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.goal",
      "path" : "CarePlan.goal",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.note",
      "path" : "CarePlan.note",
      "mustSupport" : true
    }]
  }
}

```
