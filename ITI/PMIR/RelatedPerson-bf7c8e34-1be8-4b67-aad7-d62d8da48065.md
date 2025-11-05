# CAT Sample 5 ITI-93 Related Person - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CAT Sample 5 ITI-93 Related Person**

## RelatedPerson: CAT Sample 5 ITI-93 Related Person

Profile: [IHE Patient Master Identity Registry Related Person](StructureDefinition-IHE.PMIR.RelatedPerson.md)

**identifier**: `urn:oid:1.3.6.1.4.1.21367.13.20.308`/Child

**patient**: Identifier: `urn:oid:1.3.6.1.4.1.21367.13.20.308`/Mother

**relationship**: child



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "bf7c8e34-1be8-4b67-aad7-d62d8da48065",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.RelatedPerson"
    ]
  },
  "identifier" : [
    {
      "system" : "urn:oid:1.3.6.1.4.1.21367.13.20.308",
      "value" : "Child"
    }
  ],
  "patient" : {
    "identifier" : {
      "system" : "urn:oid:1.3.6.1.4.1.21367.13.20.308",
      "value" : "Mother"
    }
  },
  "relationship" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
          "code" : "CHILD"
        }
      ]
    }
  ]
}

```
