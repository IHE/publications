# Example of an organization that generated the manifest - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example of an organization that generated the manifest**

## Example Organization: Example of an organization that generated the manifest

Profile: [MADO Creator Organization](StructureDefinition-MadoCreatorOrganization.md)

**identifier**: `http:/example.org/asask/aa`/32478378429

**name**: ACME



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "MadoCreatorOrganizationExample",
  "meta" : {
    "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoCreatorOrganization"]
  },
  "identifier" : [{
    "system" : "http:/example.org/asask/aa",
    "value" : "32478378429"
  }],
  "name" : "ACME"
}

```
