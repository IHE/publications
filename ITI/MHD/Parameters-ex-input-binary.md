# ex-input-binary - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ex-input-binary**

## Example Parameters: ex-input-binary

Profile: [IHE MHD GenerateMetadata Parameters In](StructureDefinition-IHE.MHD.GenerateMetadata.Parameters.In.md)

## Parameters



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "ex-input-binary",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.GenerateMetadata.Parameters.In"
    ]
  },
  "parameter" : [
    {
      "name" : "document",
      "resource" : {
        "resourceType" : "Binary",
        "id" : "aaaaaaaa-bbbb-cccc-dddd-e00111100003",
        "meta" : {
          "security" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
              "code" : "HTEST"
            }
          ]
        },
        "contentType" : "text/plain",
        "data" : "SGVsbG8gV29ybGQ="
      }
    }
  ]
}

```
