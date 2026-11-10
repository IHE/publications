# Endpoint: MADO Web Viewer Endpoint - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Endpoint: MADO Web Viewer Endpoint**

## Example Endpoint: Endpoint: MADO Web Viewer Endpoint

Profile: [Endpoint: MADO profile for Web Viewer endpoints](StructureDefinition-MadoWebViewerEndpoint.md)

**status**: Active

**connectionType**: [MADO Endpoint Connection Types Code System: web-viewer](CodeSystem-MadoEndpointConnectionTypes.md#MadoEndpointConnectionTypes-web-viewer) (DICOM web viewer for the study)

**name**: Web Viewer endpoint

**payloadType**: None

**payloadMimeType**: text/html

**address**: [https://viewer.example.org/launch?studyUID=1.2.392.200140.2.1.1.1.2.799008771.2076.1519721309.448](https://viewer.example.org/launch?studyUID=1.2.392.200140.2.1.1.1.2.799008771.2076.1519721309.448)



## Resource Content

```json
{
  "resourceType" : "Endpoint",
  "id" : "webviewer-endpoint-example",
  "meta" : {
    "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoWebViewerEndpoint"]
  },
  "status" : "active",
  "connectionType" : {
    "system" : "https://profiles.ihe.net/RAD/MADO/CodeSystem/MadoEndpointConnectionTypes",
    "code" : "web-viewer",
    "display" : "DICOM web viewer for the study"
  },
  "name" : "Web Viewer endpoint",
  "payloadType" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/endpoint-payload-type",
      "code" : "none"
    }]
  }],
  "payloadMimeType" : ["text/html"],
  "address" : "https://viewer.example.org/launch?studyUID=1.2.392.200140.2.1.1.1.2.799008771.2076.1519721309.448"
}

```
