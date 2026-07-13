# 01C-Cefuroxime1500Branded - IHE Pharmacy Medication Overview v1.0.0-preview

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **01C-Cefuroxime1500Branded**

## Example Medication: 01C-Cefuroxime1500Branded

Profile: [Medicinal product](StructureDefinition-IHEMedication.md)

**Medication - Classification**: cefuroxime

> **Medication - Product Name**
* name: Cefuroxime MIP 1500 mg, süste-/infusioonilahuse pulber
* language: Estonian (Estonia)

**identifier**: `https://www.ravimiregister.ee`/1529962

**manufacturer**: MIP Pharma GmbH

**form**: Powder for solution for injection or infusion

**amount**: 10 Vial (Details: EDQM Standard Terms code15060000 = 'Vial')/1

### Ingredients

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Item[x]** | **IsActive** | **Strength** |
| * | Cefuroxime | true | 1500 milligram (Details: UCUM codemg = 'mg')/1 Vial (Details: EDQM Standard Terms code15060000 = 'Vial') |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "01C-Cefuroxime1500Branded",
  "meta" : {
    "profile" : ["https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/IHEMedication"]
  },
  "extension" : [{
    "url" : "https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/ihe-ext-medication-classification",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.whocc.no/atc",
        "code" : "J01DC02",
        "display" : "cefuroxime"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "name",
      "valueString" : "Cefuroxime MIP 1500 mg, süste-/infusioonilahuse pulber"
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
    "value" : "1529962"
  }],
  "manufacturer" : {
    "display" : "MIP Pharma GmbH"
  },
  "form" : {
    "coding" : [{
      "system" : "http://standardterms.edqm.eu",
      "code" : "50053000",
      "display" : "Powder for solution for injection or infusion"
    }]
  },
  "amount" : {
    "numerator" : {
      "value" : 10,
      "unit" : "Vial",
      "system" : "http://standardterms.edqm.eu",
      "code" : "15060000"
    },
    "denominator" : {
      "value" : 1
    }
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "372833007",
        "display" : "Cefuroxime"
      }]
    },
    "isActive" : true,
    "strength" : {
      "numerator" : {
        "value" : 1500,
        "unit" : "milligram",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "Vial",
        "system" : "http://standardterms.edqm.eu",
        "code" : "15060000"
      }
    }
  }]
}

```
