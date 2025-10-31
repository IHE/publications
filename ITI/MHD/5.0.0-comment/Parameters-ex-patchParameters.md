# DocumentReference for Comprehensive metadata beeing replaced - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DocumentReference for Comprehensive metadata beeing replaced**

## Example Parameters: DocumentReference for Comprehensive metadata beeing replaced

Profile: [MHD DocumentReference Patch Parameters](StructureDefinition-IHE.MHD.Patch.Parameters.md)

## Parameters



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "ex-patchParameters",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Patch.Parameters"
    ]
  },
  "parameter" : [
    {
      "name" : "operation",
      "part" : [
        {
          "name" : "path",
          "valueString" : "DocumentReference.status"
        },
        {
          "name" : "type",
          "valueCode" : "replace"
        },
        {
          "name" : "value",
          "valueCode" : "superseded"
        }
      ]
    }
  ]
}

```
