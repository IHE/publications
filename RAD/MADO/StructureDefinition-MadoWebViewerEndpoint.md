# Endpoint: MADO profile for Web Viewer endpoints - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Endpoint: MADO profile for Web Viewer endpoints**

## Resource Profile: Endpoint: MADO profile for Web Viewer endpoints 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoWebViewerEndpoint | *Version*:1.0.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:MadoWebViewerEndpoint |

 
This profile defines the Web Viewer endpoint for accessing imaging study content. The URL in the Endpoint SHALL be a fully populated URL that contains all the information required to the launch the viewer to this study. 

The `address` field in the endpoint corresponds to the `Display URI` in the DICOM KOS manifest (see 6.X.2.13 Hierarchical SOP Instance Reference Macro).

The endpoint MAY be encoded using the format defined in [IHE-RAD-IID](https://www.ihe.net/uploadedFiles/Documents/Radiology/IHE_RAD_Suppl_IID.pdf).

**Usages:**

* Use this Profile: [MADO FHIR Imaging Study Manifest Bundle](StructureDefinition-MadoFhirBundle.md)
* Refer to this Profile: [MADO Imaging Study](StructureDefinition-MadoImagingStudy.md)
* Examples for this Profile: [Web Viewer endpoint](Endpoint-webviewer-endpoint-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.rad.mado|current/StructureDefinition/StructureDefinition-MadoWebViewerEndpoint.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MadoWebViewerEndpoint.csv), [Excel](StructureDefinition-MadoWebViewerEndpoint.xlsx), [Schematron](StructureDefinition-MadoWebViewerEndpoint.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MadoWebViewerEndpoint",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "trial-use"
  }],
  "url" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoWebViewerEndpoint",
  "version" : "1.0.0",
  "name" : "MadoWebViewerEndpoint",
  "title" : "Endpoint: MADO profile for Web Viewer endpoints",
  "status" : "active",
  "date" : "2026-09-03T19:52:58-05:00",
  "publisher" : "IHE Radiology Technical Committee",
  "contact" : [{
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ihe.net/ihe_domains/radiology/"
    }]
  },
  {
    "telecom" : [{
      "system" : "email",
      "value" : "rad@ihe.net"
    }]
  },
  {
    "name" : "IHE Radiology Technical Committee",
    "telecom" : [{
      "system" : "email",
      "value" : "rad@ihe.net"
    }]
  }],
  "description" : "This profile defines the Web Viewer endpoint for accessing imaging study content. The URL in the Endpoint\nSHALL be a fully populated URL that contains all the information required to the launch the viewer to this study.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Endpoint",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Endpoint",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Endpoint.connectionType",
      "path" : "Endpoint.connectionType",
      "patternCoding" : {
        "system" : "https://profiles.ihe.net/RAD/MADO/CodeSystem/MadoEndpointConnectionTypes",
        "code" : "web-viewer"
      }
    },
    {
      "id" : "Endpoint.payloadType",
      "path" : "Endpoint.payloadType",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "coding.code"
        },
        {
          "type" : "value",
          "path" : "coding.system"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Endpoint.payloadType:type-none",
      "path" : "Endpoint.payloadType",
      "sliceName" : "type-none",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Endpoint.payloadType:type-none.coding",
      "path" : "Endpoint.payloadType.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        },
        {
          "type" : "value",
          "path" : "system"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Endpoint.payloadType:type-none.coding:none",
      "path" : "Endpoint.payloadType.coding",
      "sliceName" : "none",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Endpoint.payloadType:type-none.coding:none.system",
      "path" : "Endpoint.payloadType.coding.system",
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/endpoint-payload-type"
    },
    {
      "id" : "Endpoint.payloadType:type-none.coding:none.code",
      "path" : "Endpoint.payloadType.coding.code",
      "fixedCode" : "none"
    },
    {
      "id" : "Endpoint.payloadMimeType",
      "path" : "Endpoint.payloadMimeType",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Endpoint.payloadMimeType:html",
      "path" : "Endpoint.payloadMimeType",
      "sliceName" : "html",
      "min" : 1,
      "max" : "1",
      "patternCode" : "text/html"
    },
    {
      "id" : "Endpoint.address",
      "path" : "Endpoint.address",
      "mustSupport" : true
    }]
  }
}

```
