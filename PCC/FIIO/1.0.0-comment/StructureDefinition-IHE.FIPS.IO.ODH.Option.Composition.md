# International Patient Summary Occupational Data For Health Implementation Option Composition - FHIR International Patient Summary v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **International Patient Summary Occupational Data For Health Implementation Option Composition**

## Resource Profile: International Patient Summary Occupational Data For Health Implementation Option Composition 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PCC/FIIO/StructureDefinition/IHE.FIPS.IO.ODH.Option.Composition | *Version*:1.0.0-comment |
| Active as of 2026-03-03 | *Computable Name*:IHE_FIPS_IO_ODH_Option_Composition |

 
An International Patient Summary Document that contains the Occupational Data for Health Information within the Social History Section. This composition builds off of the origional IPS Composition deffined by HL7 with the additional constraint of the Social History section now being a Must Support section and the additonal requirement that the Occupational Data for health observations in the section are conformant to the ODH specification. 

**Usages:**

* Use this Profile: [IHE FHIR IPS ODH Option Bundle](StructureDefinition-IHE.FIPS.ODH.Option.Bundle.md)
* Examples for this Profile: [Composition/2a7a5f03-9581-4677-ba18-fbd3b221f601](Composition-2a7a5f03-9581-4677-ba18-fbd3b221f601.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.pcc.fiio|current/StructureDefinition/IHE.FIPS.IO.ODH.Option.Composition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.FIPS.IO.ODH.Option.Composition.csv), [Excel](StructureDefinition-IHE.FIPS.IO.ODH.Option.Composition.xlsx), [Schematron](StructureDefinition-IHE.FIPS.IO.ODH.Option.Composition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.FIPS.IO.ODH.Option.Composition",
  "url" : "https://profiles.ihe.net/PCC/FIIO/StructureDefinition/IHE.FIPS.IO.ODH.Option.Composition",
  "version" : "1.0.0-comment",
  "name" : "IHE_FIPS_IO_ODH_Option_Composition",
  "title" : "International Patient Summary Occupational Data For Health Implementation Option Composition",
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
  "description" : "An International Patient Summary Document that contains the Occupational Data for Health Information within the Social History Section. \nThis composition builds off of the origional IPS Composition deffined by HL7 with the additional constraint of the Social History section now being a Must Support section and the additonal requirement that the Occupational Data for health observations in the section are conformant to the ODH specification. ",
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
    },
    {
      "id" : "Composition.section:sectionSocialHistory",
      "path" : "Composition.section",
      "sliceName" : "sectionSocialHistory"
    },
    {
      "id" : "Composition.section:sectionSocialHistory.entry:odh-UsualWork",
      "path" : "Composition.section.entry",
      "sliceName" : "odh-UsualWork",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-UsualWork"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:sectionSocialHistory.entry:odh-PastOrPresentJob",
      "path" : "Composition.section.entry",
      "sliceName" : "odh-PastOrPresentJob",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-PastOrPresentJob"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:sectionSocialHistory.entry:odh-EmploymentStatus",
      "path" : "Composition.section.entry",
      "sliceName" : "odh-EmploymentStatus",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-EmploymentStatus"]
      }]
    },
    {
      "id" : "Composition.section:sectionSocialHistory.entry:odh-RetirementDate",
      "path" : "Composition.section.entry",
      "sliceName" : "odh-RetirementDate",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-RetirementDate"]
      }]
    },
    {
      "id" : "Composition.section:sectionSocialHistory.entry:odh-CombatZonePeriod",
      "path" : "Composition.section.entry",
      "sliceName" : "odh-CombatZonePeriod",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-CombatZonePeriod"]
      }]
    }]
  }
}

```
