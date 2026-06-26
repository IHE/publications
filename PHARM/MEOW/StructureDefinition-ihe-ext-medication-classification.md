# Medication - Classification - IHE Pharmacy Medication Overview v1.0.0-preview

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication - Classification**

## Extension: Medication - Classification 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/ihe-ext-medication-classification | *Version*:1.0.0-preview |
| Active as of 2026-06-26 | *Computable Name*:MedicationClassification |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

Medication classification/category. Allows the product to be classified by various systems, e.g ATC, narcotic class, legal status of supply, etc..

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Medicinal product](StructureDefinition-IHEMedication.md)
* Examples for this Extension: [Medication/01A-Cefuroxime1500GenericExplicit](Medication-01A-Cefuroxime1500GenericExplicit.md), [Medication/01C-Cefuroxime1500Branded](Medication-01C-Cefuroxime1500Branded.md), [Medication/02A-ClotrimazoleCanifugCremolum](Medication-02A-ClotrimazoleCanifugCremolum.md) and [Medication/03B-VitaminBComplexBranded](Medication-03B-VitaminBComplexBranded.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.pharm.meow|current/StructureDefinition/StructureDefinition-ihe-ext-medication-classification.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ihe-ext-medication-classification.csv), [Excel](StructureDefinition-ihe-ext-medication-classification.xlsx), [Schematron](StructureDefinition-ihe-ext-medication-classification.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ihe-ext-medication-classification",
  "url" : "https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/ihe-ext-medication-classification",
  "version" : "1.0.0-preview",
  "name" : "MedicationClassification",
  "title" : "Medication - Classification",
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
  "description" : "Medication classification/category. Allows the product to be classified by various systems, e.g ATC, narcotic class, legal status of supply, etc..",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "IHE http://www.ihe.net/Governance/#Intellectual_Property",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Medication"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Medication - Classification",
      "definition" : "Medication classification/category. Allows the product to be classified by various systems, e.g ATC, narcotic class, legal status of supply, etc.."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/ihe-ext-medication-classification"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
