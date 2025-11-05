# PMIR Example of a Related Person for Mother - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PMIR Example of a Related Person for Mother**

## Example RelatedPerson: PMIR Example of a Related Person for Mother

Profile: [IHE Patient Master Identity Registry Related Person](StructureDefinition-IHE.PMIR.RelatedPerson.md)

**patient**: [Baby Wooten (official) (no stated gender), DoB Unknown](Patient-ex-related-child.md)

**relationship**: mother



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "ex-related-mom",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.RelatedPerson"
    ]
  },
  "patient" : {
    "reference" : "Patient/ex-related-child"
  },
  "relationship" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
          "code" : "MTH"
        }
      ]
    }
  ]
}

```
