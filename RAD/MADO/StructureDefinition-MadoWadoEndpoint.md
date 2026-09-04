# Endpoint: MADO WADO endpoint - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Endpoint: MADO WADO endpoint**

## Resource Profile: Endpoint: MADO WADO endpoint 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoWadoEndpoint | *Version*:1.0.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:MadoWadoEndpoint |

 
This profile defines a WADO endpoint for accessing imaging study content. [MADO WADO Endpoint](Endpoint-wado-endpoint-with-url.md) holds an example of a endpoint with a `RetrieveLocationUid` and an address. 

This profile supports two cases (see X.4.1.2 Intra-community Sharing Infrastructure):

1. The case where`address`is provided in addition to a`RetrieveLocationUID`.
1. The case when only the`RetrieveLocationUID`is known and the`address`is unknown (see example[EndpointWadoExampleNoAddress](Endpoint-EndpointWadoExampleNoAddress.md)). In this case:
1. The`address`SHALL be set to "http://notspecified"
1. A[`Data Absent Reason Exception`](http://hl7.org/fhir/StructureDefinition/data-absent-reason)with the value`unknown`SHALL be added to indicate that the address is missing.

Note that we do not require population of the `payloadMimeType` as this information is not present in the DICOM KOS. As is defined in section 6.X.6.6.2, in MADO, only the `dicom` mimetype is required.

Note that payloadType has been fixed to text only. We anticipate that a proper code will be required in future versions of this specification.

**Usages:**

* Use this Profile: [MADO FHIR Imaging Study Manifest Bundle](StructureDefinition-MadoFhirBundle.md)
* Refer to this Profile: [MADO Imaging Study](StructureDefinition-MadoImagingStudy.md)
* Examples for this Profile: [Endpoint/EndpointWadoExampleNoAddress](Endpoint-EndpointWadoExampleNoAddress.md) and [WADO endpoint](Endpoint-wado-endpoint-with-url.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.rad.mado|current/StructureDefinition/StructureDefinition-MadoWadoEndpoint.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MadoWadoEndpoint.csv), [Excel](StructureDefinition-MadoWadoEndpoint.xlsx), [Schematron](StructureDefinition-MadoWadoEndpoint.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MadoWadoEndpoint",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "trial-use"
  }],
  "url" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoWadoEndpoint",
  "version" : "1.0.0",
  "name" : "MadoWadoEndpoint",
  "title" : "Endpoint: MADO WADO endpoint",
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
  "description" : "This profile defines a WADO endpoint for accessing imaging study content. [MADO WADO Endpoint](Endpoint-wado-endpoint-with-url.html) holds an example of a endpoint with a \n`RetrieveLocationUid` and an address.",
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
      "id" : "Endpoint.extension",
      "path" : "Endpoint.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Endpoint.extension:retrieve-location-uid",
      "path" : "Endpoint.extension",
      "sliceName" : "retrieve-location-uid",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoRetrieveLocationUIDExtension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Endpoint.status",
      "path" : "Endpoint.status",
      "patternCode" : "active"
    },
    {
      "id" : "Endpoint.connectionType.system",
      "path" : "Endpoint.connectionType.system",
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/endpoint-connection-type"
    },
    {
      "id" : "Endpoint.connectionType.code",
      "path" : "Endpoint.connectionType.code",
      "fixedCode" : "dicom-wado-rs"
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
      "id" : "Endpoint.payloadType:text-wado",
      "path" : "Endpoint.payloadType",
      "sliceName" : "text-wado",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Endpoint.payloadType:text-wado.coding",
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
      "id" : "Endpoint.payloadType:text-wado.coding:none",
      "path" : "Endpoint.payloadType.coding",
      "sliceName" : "none",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Endpoint.payloadType:text-wado.coding:none.system",
      "path" : "Endpoint.payloadType.coding.system",
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/endpoint-payload-type"
    },
    {
      "id" : "Endpoint.payloadType:text-wado.coding:none.code",
      "path" : "Endpoint.payloadType.coding.code",
      "fixedCode" : "none"
    },
    {
      "id" : "Endpoint.payloadType:text-wado.text",
      "path" : "Endpoint.payloadType.text",
      "patternString" : "DICOM WADO-RS"
    },
    {
      "id" : "Endpoint.address",
      "path" : "Endpoint.address",
      "short" : "The base URL of the WADO service. When unknown it SHALL be set to \"http://notspecified\"",
      "mustSupport" : true
    },
    {
      "id" : "Endpoint.address.extension",
      "path" : "Endpoint.address.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "This extension is present when the address value is a placeholder and should not be used (a RetrieveLocationUID lookup is needed)."
    },
    {
      "id" : "Endpoint.address.extension:data-absent-reason",
      "path" : "Endpoint.address.extension",
      "sliceName" : "data-absent-reason",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/data-absent-reason|5.3.0"]
      }]
    },
    {
      "id" : "Endpoint.address.extension:data-absent-reason.value[x]",
      "path" : "Endpoint.address.extension.value[x]",
      "patternCode" : "unknown"
    }]
  }
}

```
