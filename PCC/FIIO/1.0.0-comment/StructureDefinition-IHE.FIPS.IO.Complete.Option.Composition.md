# FHIR International Patient Summary Implementation Options - Complete Option Composition - FHIR International Patient Summary v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FHIR International Patient Summary Implementation Options - Complete Option Composition**

## Resource Profile: FHIR International Patient Summary Implementation Options - Complete Option Composition 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PCC/FIIO/StructureDefinition/IHE.FIPS.IO.Complete.Option.Composition | *Version*:1.0.0-comment |
| Active as of 2026-03-03 | *Computable Name*:IHE_FIPS_IO_Complete_Option_Composition |

 
An International Patient Summary Document that makes all of the optional sections deffined by HL7 into Must support sections. 

**Usages:**

* Use this Profile: [IHE FHIR IPS Complete Option Bundle](StructureDefinition-IHE.FIPS.Complete.Option.Bundle.md)
* Examples for this Profile: [Composition/2a7a5f03-9581-4677-ba18-fbd3b221f601](Composition-2a7a5f03-9581-4677-ba18-fbd3b221f601.md), [Composition/313df1ad-9094-4a93-a0cc-64ee25d3d327](Composition-313df1ad-9094-4a93-a0cc-64ee25d3d327.md) and [Composition/567f7a70-6f0d-49c5-a6ca-20eff88e7c8e](Composition-567f7a70-6f0d-49c5-a6ca-20eff88e7c8e.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.pcc.fiio|current/StructureDefinition/IHE.FIPS.IO.Complete.Option.Composition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.FIPS.IO.Complete.Option.Composition.csv), [Excel](StructureDefinition-IHE.FIPS.IO.Complete.Option.Composition.xlsx), [Schematron](StructureDefinition-IHE.FIPS.IO.Complete.Option.Composition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.FIPS.IO.Complete.Option.Composition",
  "url" : "https://profiles.ihe.net/PCC/FIIO/StructureDefinition/IHE.FIPS.IO.Complete.Option.Composition",
  "version" : "1.0.0-comment",
  "name" : "IHE_FIPS_IO_Complete_Option_Composition",
  "title" : "FHIR International Patient Summary Implementation Options - Complete Option Composition",
  "status" : "active",
  "date" : "2026-03-03T19:01:56-06:00",
  "publisher" : "IHE Patient Care Coordination Committee",
  "contact" : [{
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ihe.net/ihe_domains/patient_care_coordination/"
    }]
  },
  {
    "telecom" : [{
      "system" : "email",
      "value" : "pcc@ihe.net"
    }]
  },
  {
    "name" : "IHE Patient Care Coordination Technical Committee",
    "telecom" : [{
      "system" : "email",
      "value" : "pcc@ihe.net"
    }]
  }],
  "description" : "An International Patient Summary Document that makes all of the optional sections deffined by HL7 into Must support sections.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "fhirdocumentreference",
    "uri" : "http://hl7.org/fhir/documentreference",
    "name" : "FHIR DocumentReference"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Composition",
      "path" : "Composition"
    }]
  }
}

```
