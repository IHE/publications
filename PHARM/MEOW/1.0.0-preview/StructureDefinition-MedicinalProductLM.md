# Medicinal product (model) - IHE Pharmacy Medication Overview v1.0.0-preview

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medicinal product (model)**

## Logical Model: Medicinal product (model) 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicinalProductLM | *Version*:1.0.0-preview |
| Active as of 2026-06-26 | *Computable Name*:MedicinalProductLM |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and treatment lines. Each of those may have different restrictions in FHIR profile. 

**Usages:**

* Refer to this Logical Model: [Medication Treatment Line (model)](StructureDefinition-MedicationTreatmentLineLM.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.pharm.meow|current/StructureDefinition/StructureDefinition-MedicinalProductLM.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MedicinalProductLM.csv), [Excel](StructureDefinition-MedicinalProductLM.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MedicinalProductLM",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicinalProductLM",
  "version" : "1.0.0-preview",
  "name" : "MedicinalProductLM",
  "title" : "Medicinal product (model)",
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
  "description" : "Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and treatment lines. Each of those may have different restrictions in FHIR profile.",
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
  "type" : "https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicinalProductLM",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "MedicinalProductLM",
      "path" : "MedicinalProductLM",
      "short" : "Medicinal product (model)",
      "definition" : "Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and treatment lines. Each of those may have different restrictions in FHIR profile."
    },
    {
      "id" : "MedicinalProductLM.identifier",
      "path" : "MedicinalProductLM.identifier",
      "short" : "The identifier(s) of the product, independently of the level of product. If several identifiers are specified, they shall not have conflicting meanings.",
      "definition" : "The identifier(s) of the product, independently of the level of product. If several identifiers are specified, they shall not have conflicting meanings.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "MedicinalProductLM.identifier.medicinalProductIdentifier",
      "path" : "MedicinalProductLM.identifier.medicinalProductIdentifier",
      "short" : "Identifier at the product level - can be MPID or national Identifier ",
      "definition" : "Identifier at the product level - can be MPID or national Identifier ",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "MedicinalProductLM.identifier.packagedProductIdentifier",
      "path" : "MedicinalProductLM.identifier.packagedProductIdentifier",
      "short" : "Identifier at the package level - can be PCID or national",
      "definition" : "Identifier at the package level - can be PCID or national",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "MedicinalProductLM.identifier.pharmaceuticalProductIdentifier",
      "path" : "MedicinalProductLM.identifier.pharmaceuticalProductIdentifier",
      "short" : "Identifier at the virtual or administrable product level - can be PhPID or national virtual/administrable product code",
      "definition" : "Identifier at the virtual or administrable product level - can be PhPID or national virtual/administrable product code",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "MedicinalProductLM.productCode",
      "path" : "MedicinalProductLM.productCode",
      "short" : "Code for the product that is actually being specified, in established terminologies",
      "definition" : "Code for the product that is actually being specified, in established terminologies",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicinalProductLM.classification",
      "path" : "MedicinalProductLM.classification",
      "short" : "Classification (e.g. ATC; narcotic/psychotropic; orphan drug; etc.)",
      "definition" : "Classification (e.g. ATC; narcotic/psychotropic; orphan drug; etc.)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicinalProductLM.packSize",
      "path" : "MedicinalProductLM.packSize",
      "short" : "Overall amount of product in one package (100ml; 20 tablets; 1 creme & 6 pessaries)",
      "definition" : "Overall amount of product in one package (100ml; 20 tablets; 1 creme & 6 pessaries)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "MedicinalProductLM.productName",
      "path" : "MedicinalProductLM.productName",
      "short" : "Name of the product (full name, invented name, other)",
      "definition" : "Name of the product (full name, invented name, other)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "MedicinalProductLM.productName.name",
      "path" : "MedicinalProductLM.productName.name",
      "short" : "Name of type and language that is relevant for the users",
      "definition" : "Name of type and language that is relevant for the users",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "MedicinalProductLM.productName.language",
      "path" : "MedicinalProductLM.productName.language",
      "short" : "Language of the name",
      "definition" : "Language of the name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicinalProductLM.productName.type",
      "path" : "MedicinalProductLM.productName.type",
      "short" : "Type of the name (full name, common name, etc)",
      "definition" : "Type of the name (full name, common name, etc)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicinalProductLM.doseForm",
      "path" : "MedicinalProductLM.doseForm",
      "short" : "Dose form(s) on a product level. Dose form for a single package item is defined below.",
      "definition" : "Dose form(s) on a product level. Dose form for a single package item is defined below.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicinalProductLM.item",
      "path" : "MedicinalProductLM.item",
      "short" : "A medication item. For combination packs, this can be manufactured items with each item having its own dose form and ingredients+strengths defined",
      "definition" : "A medication item. For combination packs, this can be manufactured items with each item having its own dose form and ingredients+strengths defined",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "MedicinalProductLM.item.doseForm",
      "path" : "MedicinalProductLM.item.doseForm",
      "short" : "Dose form",
      "definition" : "Dose form",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicinalProductLM.item.ingredient",
      "path" : "MedicinalProductLM.item.ingredient",
      "short" : "Ingredients",
      "definition" : "Ingredients",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "MedicinalProductLM.item.ingredient.role",
      "path" : "MedicinalProductLM.item.ingredient.role",
      "short" : "Role (active ingredient, excipient). Typically excipients are not needed, so by default active ingredients are expected.",
      "definition" : "Role (active ingredient, excipient). Typically excipients are not needed, so by default active ingredients are expected.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicinalProductLM.item.ingredient.substance",
      "path" : "MedicinalProductLM.item.ingredient.substance",
      "short" : "Substance",
      "definition" : "Substance",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicinalProductLM.item.ingredient.strengthInfo",
      "path" : "MedicinalProductLM.item.ingredient.strengthInfo",
      "short" : "Concentration or presentation strength",
      "definition" : "Concentration or presentation strength",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "MedicinalProductLM.item.ingredient.strengthInfo.strength",
      "path" : "MedicinalProductLM.item.ingredient.strengthInfo.strength",
      "short" : "Concentration or presentation strength of the precise active ingredient",
      "definition" : "Concentration or presentation strength of the precise active ingredient",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Ratio"
      }]
    },
    {
      "id" : "MedicinalProductLM.item.ingredient.strengthInfo.strengthType",
      "path" : "MedicinalProductLM.item.ingredient.strengthInfo.strengthType",
      "short" : "Type of strength that is expressed",
      "definition" : "Type of strength that is expressed",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicinalProductLM.item.ingredient.strengthInfo.strengthSubstance",
      "path" : "MedicinalProductLM.item.ingredient.strengthInfo.strengthSubstance",
      "short" : "Substance that the strength refers to, if different from the main substance",
      "definition" : "Substance that the strength refers to, if different from the main substance",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicinalProductLM.item.unitOfPresentation",
      "path" : "MedicinalProductLM.item.unitOfPresentation",
      "short" : "Unit of presentation for the manufactured item (tablet, vial, tube). Typically, the smallest countable object in the package.",
      "definition" : "Unit of presentation for the manufactured item (tablet, vial, tube). Typically, the smallest countable object in the package.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicinalProductLM.item.containedQuantity",
      "path" : "MedicinalProductLM.item.containedQuantity",
      "short" : "Manufactured item quantity for liquids (3ml/vial)",
      "definition" : "Manufactured item quantity for liquids (3ml/vial)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "MedicinalProductLM.item.amount",
      "path" : "MedicinalProductLM.item.amount",
      "short" : "Number of such manufactured items in this product (5 vials)",
      "definition" : "Number of such manufactured items in this product (5 vials)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "MedicinalProductLM.device",
      "path" : "MedicinalProductLM.device",
      "short" : "Administration device included in the product",
      "definition" : "Administration device included in the product",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "MedicinalProductLM.device.deviceQuantity",
      "path" : "MedicinalProductLM.device.deviceQuantity",
      "short" : "Number of such devices",
      "definition" : "Number of such devices",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "MedicinalProductLM.device.device",
      "path" : "MedicinalProductLM.device.device",
      "short" : "Device coded",
      "definition" : "Device coded",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
