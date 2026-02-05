# PIXm Query Response for source identifier and target system specified - Patient Identifier Cross-referencing for mobile (PIXm) v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PIXm Query Response for source identifier and target system specified**

## Example Parameters: PIXm Query Response for source identifier and target system specified

Profile: [IHE PIXm Query Parameters Out](StructureDefinition-IHE.PIXm.Query.Parameters.Out.md)

## Parameters



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "pixm-response-mohralice-red-to-blue",
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
    }
  ]
}

```
