# Device: MADO creator - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device: MADO creator**

## Example Device: Device: MADO creator

Profile: [MADO Creator](StructureDefinition-MadoCreator.md)

**manufacturer**: ACME Company

**type**: MADO Creator



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "MadoCreatorDeviceExample",
  "meta" : {
    "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoCreator"]
  },
  "manufacturer" : "ACME Company",
  "type" : {
    "coding" : [{
      "system" : "https://profiles.ihe.net/RAD/MADO/CodeSystem/MadoDeviceType",
      "code" : "mado-creator",
      "display" : "MADO Creator"
    }]
  }
}

```
