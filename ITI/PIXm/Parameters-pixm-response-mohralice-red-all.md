# PIXm Query Response for source identifier - Patient Identifier Cross-referencing for mobile (PIXm) v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PIXm Query Response for source identifier**

## Example Parameters: PIXm Query Response for source identifier

Profile: [IHE PIXm Query Parameters Out](StructureDefinition-IHE.PIXm.Query.Parameters.Out.md)

## Parameters



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "pixm-response-mohralice-red-all",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Query.Parameters.Out"
    ]
  },
  "parameter" : [
    {
      "name" : "targetId",
      "valueReference" : {
        "reference" : "Patient/Patient-MohrAlice-Blue"
      }
    },
    {
      "name" : "targetIdentifier",
      "valueIdentifier" : {
        "system" : "urn:oid:1.3.6.1.4.1.21367.13.20.3000",
        "value" : "IHEBLUE-994"
      }
    },
    {
      "name" : "targetId",
      "valueReference" : {
        "reference" : "Patient/Patient-MohrAlice-Green"
      }
    },
    {
      "name" : "targetIdentifier",
      "valueIdentifier" : {
        "system" : "urn:oid:1.3.6.1.4.1.21367.13.20.2000",
        "value" : "IHEGREEN-994"
      }
    }
  ]
}

```
