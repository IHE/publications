# Medication - Product Name - IHE Pharmacy Medication Overview v1.0.0-preview

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication - Product Name**

## Extension: Medication - Product Name 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/ihe-ext-medication-productname | *Version*:1.0.0-preview |
| Active as of 2026-06-26 | *Computable Name*:MedicationProductName |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

Name of the medicinal product. Optionally the type of name (Full official name, prescribing name, invented name) and language of the name can be specified. The extension is a simplified approach of what is used in MedicinalProductDefinition resource.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Medicinal product](StructureDefinition-IHEMedication.md)
* Examples for this Extension: [Medication/01C-Cefuroxime1500Branded](Medication-01C-Cefuroxime1500Branded.md), [Medication/02A-ClotrimazoleCanifugCremolum](Medication-02A-ClotrimazoleCanifugCremolum.md) and [Medication/03B-VitaminBComplexBranded](Medication-03B-VitaminBComplexBranded.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.pharm.meow|current/StructureDefinition/StructureDefinition-ihe-ext-medication-productname.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ihe-ext-medication-productname.csv), [Excel](StructureDefinition-ihe-ext-medication-productname.xlsx), [Schematron](StructureDefinition-ihe-ext-medication-productname.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ihe-ext-medication-productname",
  "url" : "https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/ihe-ext-medication-productname",
  "version" : "1.0.0-preview",
  "name" : "MedicationProductName",
  "title" : "Medication - Product Name",
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
  "description" : "Name of the medicinal product. Optionally the type of name (Full official name, prescribing name, invented name) and language of the name can be specified. The extension is a simplified approach of what is used in MedicinalProductDefinition resource.",
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
      "short" : "Medication - Product Name",
      "definition" : "Name of the medicinal product. Optionally the type of name (Full official name, prescribing name, invented name) and language of the name can be specified. The extension is a simplified approach of what is used in MedicinalProductDefinition resource."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:name",
      "path" : "Extension.extension",
      "sliceName" : "name",
      "short" : "Product name",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:name.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:name.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "name"
    },
    {
      "id" : "Extension.extension:name.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:nameType",
      "path" : "Extension.extension",
      "sliceName" : "nameType",
      "short" : "Type of product name (full name, common name, prescription name, etc)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:nameType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:nameType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "nameType"
    },
    {
      "id" : "Extension.extension:nameType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.extension:language",
      "path" : "Extension.extension",
      "sliceName" : "language",
      "short" : "Language code of this name. A code with a combination of country and name can be used.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:language.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:language.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "language"
    },
    {
      "id" : "Extension.extension:language.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/all-languages"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/ihe-ext-medication-productname"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
