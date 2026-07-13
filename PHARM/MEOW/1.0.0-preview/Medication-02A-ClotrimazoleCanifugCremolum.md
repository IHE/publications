# 02A-ClotrimazoleCanifugCremolum - IHE Pharmacy Medication Overview v1.0.0-preview

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **02A-ClotrimazoleCanifugCremolum**

## Example Medication: 02A-ClotrimazoleCanifugCremolum

Profile: [Medicinal product](StructureDefinition-IHEMedication.md)

**Medication - Classification**: clotrimazole

> **Medication - Product Name**
* name: Canifug Cremolum
* language: Estonian (Estonia)

**identifier**: `https://www.ravimiregister.ee`/1033692

**form**: Cream + pessary

> **ingredient****item**: [Medication: extension = 20 gram; form = Vaginal cream; amount = 1 Tube / 1](Medication-02A1-CanifugCremolumCreamItem.md)

> **ingredient****item**: [Medication: form = Pessary; amount = 6 Pessary / 1](Medication-02A2-CanifugCremolumPessaryItem.md)



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "02A-ClotrimazoleCanifugCremolum",
  "meta" : {
    "profile" : ["https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/IHEMedication"]
  },
  "extension" : [{
    "url" : "https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/ihe-ext-medication-classification",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.whocc.no/atc",
        "code" : "G01AF02",
        "display" : "clotrimazole"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "name",
      "valueString" : "Canifug Cremolum"
    },
    {
      "url" : "language",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "urn:ietf:bcp:47",
          "code" : "et-EE",
          "display" : "Estonian (Estonia)"
        }]
      }
    }],
    "url" : "https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/ihe-ext-medication-productname"
  }],
  "identifier" : [{
    "system" : "https://www.ravimiregister.ee",
    "value" : "1033692"
  }],
  "form" : {
    "coding" : [{
      "system" : "http://standardterms.edqm.eu",
      "code" : "14001000",
      "display" : "Cream + pessary"
    }]
  },
  "ingredient" : [{
    "itemReference" : {
      "reference" : "Medication/02A1-CanifugCremolumCreamItem"
    }
  },
  {
    "itemReference" : {
      "reference" : "Medication/02A2-CanifugCremolumPessaryItem"
    }
  }]
}

```
