# Medication - Size of Item - IHE Pharmacy Medication Overview v1.0.0-preview

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication - Size of Item**

## Extension: Medication - Size of Item 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/ihe-ext-medication-sizeofitem | *Version*:1.0.0-preview |
| Active as of 2026-06-26 | *Computable Name*:MedicationSizeOfItem |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

Size of a manufactured item or unit of presentation. For example, size of one vial in a package that may contain several vials.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Medicinal product](StructureDefinition-IHEMedication.md)
* Examples for this Extension: [Medication/02A1-CanifugCremolumCreamItem](Medication-02A1-CanifugCremolumCreamItem.md) and [Medication/03B-VitaminBComplexBranded](Medication-03B-VitaminBComplexBranded.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.pharm.meow|current/StructureDefinition/StructureDefinition-ihe-ext-medication-sizeofitem.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ihe-ext-medication-sizeofitem.csv), [Excel](StructureDefinition-ihe-ext-medication-sizeofitem.xlsx), [Schematron](StructureDefinition-ihe-ext-medication-sizeofitem.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ihe-ext-medication-sizeofitem",
  "url" : "https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/ihe-ext-medication-sizeofitem",
  "version" : "1.0.0-preview",
  "name" : "MedicationSizeOfItem",
  "title" : "Medication - Size of Item",
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
  "description" : "Size of a manufactured item or unit of presentation. For example, size of one vial in a package that may contain several vials.",
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
      "short" : "Medication - Size of Item",
      "definition" : "Size of a manufactured item or unit of presentation. For example, size of one vial in a package that may contain several vials."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/ihe-ext-medication-sizeofitem"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    }]
  }
}

```
