# Extension: Retrieve Location UID - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Extension: Retrieve Location UID**

## Extension: Extension: Retrieve Location UID 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoRetrieveLocationUIDExtension | *Version*:1.0.0 | |
| * Standards status: *[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:MadoRetrieveLocationUIDExtension |

The location UID of the source of the WADO URL. See XC-WADO and [Part03 table_A.35.4-1](https://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_A.35.4.3.html#table_A.35.4-1).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Endpoint: MADO WADO endpoint](StructureDefinition-MadoWadoEndpoint.md)
* Examples for this Extension: [Bundle/mado-bundle--2047166865](Bundle-mado-bundle--2047166865.md), [Bundle/mado-bundle--2047166866](Bundle-mado-bundle--2047166866.md), [Bundle/mado-bundle-589331894518000](Bundle-mado-bundle-589331894518000.md), [Endpoint/EndpointWadoExampleNoAddress](Endpoint-EndpointWadoExampleNoAddress.md) and [WADO endpoint](Endpoint-wado-endpoint-with-url.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.rad.mado|current/StructureDefinition/StructureDefinition-MadoRetrieveLocationUIDExtension.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MadoRetrieveLocationUIDExtension.csv), [Excel](StructureDefinition-MadoRetrieveLocationUIDExtension.xlsx), [Schematron](StructureDefinition-MadoRetrieveLocationUIDExtension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MadoRetrieveLocationUIDExtension",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "trial-use"
  }],
  "url" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoRetrieveLocationUIDExtension",
  "version" : "1.0.0",
  "name" : "MadoRetrieveLocationUIDExtension",
  "title" : "Extension: Retrieve Location UID",
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
  "description" : "The location UID of the source of the WADO URL. See XC-WADO and [Part03 table_A.35.4-1](https://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_A.35.4.3.html#table_A.35.4-1).",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Endpoint"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Extension: Retrieve Location UID",
      "definition" : "The location UID of the source of the WADO URL. See XC-WADO and [Part03 table_A.35.4-1](https://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_A.35.4.3.html#table_A.35.4-1)."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoRetrieveLocationUIDExtension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
