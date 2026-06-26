# 02A1-CanifugCremolumCreamItem - IHE Pharmacy Medication Overview v1.0.0-preview

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **02A1-CanifugCremolumCreamItem**

## Example Medication: 02A1-CanifugCremolumCreamItem

Profile: [Medicinal product](StructureDefinition-IHEMedication.md)

**Medication - Size of Item**: 20 gram (Details: UCUM codeg = 'g')

**form**: Vaginal cream

**amount**: 1 Tube (Details: EDQM Standard Terms code15058000 = 'Tube')/1

### Ingredients

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Item[x]** | **IsActive** | **Strength** |
| * | Clotrimazole | true | 10 milligram (Details: UCUM codemg = 'mg')/1 gram (Details: UCUM codeg = 'g') |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "02A1-CanifugCremolumCreamItem",
  "meta" : {
    "profile" : ["https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/IHEMedication"]
  },
  "extension" : [{
    "url" : "https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/ihe-ext-medication-sizeofitem",
    "valueQuantity" : {
      "value" : 20,
      "unit" : "gram",
      "system" : "http://unitsofmeasure.org",
      "code" : "g"
    }
  }],
  "form" : {
    "coding" : [{
      "system" : "http://standardterms.edqm.eu",
      "code" : "10901000",
      "display" : "Vaginal cream"
    }]
  },
  "amount" : {
    "numerator" : {
      "value" : 1,
      "unit" : "Tube",
      "system" : "http://standardterms.edqm.eu",
      "code" : "15058000"
    },
    "denominator" : {
      "value" : 1
    }
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "387325003",
        "display" : "Clotrimazole"
      }]
    },
    "isActive" : true,
    "strength" : {
      "numerator" : {
        "value" : 10,
        "unit" : "milligram",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "gram",
        "system" : "http://unitsofmeasure.org",
        "code" : "g"
      }
    }
  }]
}

```
