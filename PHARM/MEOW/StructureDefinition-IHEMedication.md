# Medicinal product - IHE Pharmacy Medication Overview v1.0.0-preview

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medicinal product**

## Resource Profile: Medicinal product 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/IHEMedication | *Version*:1.0.0-preview |
| Active as of 2026-06-26 | *Computable Name*:IHEMedication |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
Medication for clinical use cases. This could be a branded product or a generic concept, also allowing describing pack size and components of complex products. 

**Usages:**

* Refer to this Profile: [Medicinal product](StructureDefinition-IHEMedication.md)
* Examples for this Profile: [Medication/01A-Cefuroxime1500GenericExplicit](Medication-01A-Cefuroxime1500GenericExplicit.md), [Medication/01B-Cefuroxime1500GenericConcept](Medication-01B-Cefuroxime1500GenericConcept.md), [Medication/01C-Cefuroxime1500Branded](Medication-01C-Cefuroxime1500Branded.md), [Medication/02A-ClotrimazoleCanifugCremolum](Medication-02A-ClotrimazoleCanifugCremolum.md)... Show 3 more, [Medication/02A1-CanifugCremolumCreamItem](Medication-02A1-CanifugCremolumCreamItem.md), [Medication/02A2-CanifugCremolumPessaryItem](Medication-02A2-CanifugCremolumPessaryItem.md) and [Medication/03B-VitaminBComplexBranded](Medication-03B-VitaminBComplexBranded.md)
* CapabilityStatements using this Profile: [Medication Overview Responder](CapabilityStatement-MedicationOverviewResponder.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.pharm.meow|current/StructureDefinition/StructureDefinition-IHEMedication.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHEMedication.csv), [Excel](StructureDefinition-IHEMedication.xlsx), [Schematron](StructureDefinition-IHEMedication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHEMedication",
  "url" : "https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/IHEMedication",
  "version" : "1.0.0-preview",
  "name" : "IHEMedication",
  "title" : "Medicinal product",
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
  "description" : "Medication for clinical use cases. This could be a branded product or a generic concept, also allowing describing pack size and components of complex products.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "IHE http://www.ihe.net/Governance/#Intellectual_Property",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
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
  "type" : "Medication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Medication",
      "path" : "Medication"
    },
    {
      "id" : "Medication.extension",
      "path" : "Medication.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Medication.extension:productName",
      "path" : "Medication.extension",
      "sliceName" : "productName",
      "short" : "Name of the medicinal product. Names of different types (full name, short name, etc) and in different languages can be provided if relevant.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/ihe-ext-medication-productname"]
      }]
    },
    {
      "id" : "Medication.extension:classification",
      "path" : "Medication.extension",
      "sliceName" : "classification",
      "short" : "Classifications of the product, e.g ATC, narcotic/psychotropic, orphan drug, etc",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/ihe-ext-medication-classification"]
      }]
    },
    {
      "id" : "Medication.extension:sizeOfItem",
      "path" : "Medication.extension",
      "sliceName" : "sizeOfItem",
      "short" : "Size of one item (for example, in a pack of 5 vials, this would represent the size of 1 vial)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/ihe-ext-medication-sizeofitem"]
      }]
    },
    {
      "id" : "Medication.extension:device",
      "path" : "Medication.extension",
      "sliceName" : "device",
      "short" : "Device, typically an administration device, included in the product.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/ihe-ext-medication-device"]
      }]
    },
    {
      "id" : "Medication.identifier",
      "path" : "Medication.identifier",
      "short" : "Identifier for the medicinal product, its generic representation, or packaged product.",
      "mustSupport" : true
    },
    {
      "id" : "Medication.code",
      "path" : "Medication.code",
      "short" : "A terminology-based code for the product",
      "mustSupport" : true
    },
    {
      "id" : "Medication.form",
      "path" : "Medication.form",
      "short" : "Dose form. For a branded product, this would most likely be authorised dose form, but it could also be administrable dose form. For package items, it could be item's individual dose form.",
      "mustSupport" : true
    },
    {
      "id" : "Medication.amount",
      "path" : "Medication.amount",
      "short" : "Total volume or number of package items inside a package. This element should not contain overall prescribed amount, but describe the product itself. In case of complex packages, this element could be left empty, and number of different items could be indicated in the nested Medications.",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient",
      "path" : "Medication.ingredient",
      "short" : "Ingredient or a part product. For combination packs, each ingredient can be a separate manufactured item with its own ingredients, dose form, and strength",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x]",
      "path" : "Medication.ingredient.item[x]",
      "short" : "Substance (Substance resource or concept from terminology) or a medicinal product (Medication resource or concept from terminology). Medicinal product can be an ingredient in case of extemporal medications or combination packs (e.g Creme + 6 tablets)",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Substance",
        "https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/IHEMedication"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.isActive",
      "path" : "Medication.ingredient.isActive",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.strength",
      "path" : "Medication.ingredient.strength",
      "mustSupport" : true
    }]
  }
}

```
