# Endpoint: MADO WADO Endpoint - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Endpoint: MADO WADO Endpoint**

## Example Endpoint: Endpoint: MADO WADO Endpoint

Profile: [Endpoint: MADO WADO endpoint](StructureDefinition-MadoWadoEndpoint.md)

**Extension: Retrieve Location UID**: oid:213.323245.462.63.56

**status**: Active

**connectionType**: [Endpoint Connection Type: dicom-wado-rs](http://terminology.hl7.org/7.3.0/CodeSystem-endpoint-connection-type.html#endpoint-connection-type-dicom-wado-rs) (DICOM WADO-RS)

**name**: WADO endpoint

**payloadType**: DICOM WADO-RS

**address**: [http://example.org:8041/dcm4chee-arc/aets/DCM4CHEE/rs](http://example.org:8041/dcm4chee-arc/aets/DCM4CHEE/rs)



## Resource Content

```json
{
  "resourceType" : "Endpoint",
  "id" : "wado-endpoint-with-url",
  "meta" : {
    "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoWadoEndpoint"]
  },
  "extension" : [{
    "url" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoRetrieveLocationUIDExtension",
    "valueString" : "oid:213.323245.462.63.56"
  }],
  "status" : "active",
  "connectionType" : {
    "system" : "http://terminology.hl7.org/CodeSystem/endpoint-connection-type",
    "code" : "dicom-wado-rs",
    "display" : "DICOM WADO-RS"
  },
  "name" : "WADO endpoint",
  "payloadType" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/endpoint-payload-type",
      "code" : "none"
    }],
    "text" : "DICOM WADO-RS"
  }],
  "address" : "http://example.org:8041/dcm4chee-arc/aets/DCM4CHEE/rs"
}

```
