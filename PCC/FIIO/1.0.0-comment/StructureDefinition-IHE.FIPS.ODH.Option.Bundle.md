# IHE FHIR IPS ODH Option Bundle - FHIR International Patient Summary v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE FHIR IPS ODH Option Bundle**

## Resource Profile: IHE FHIR IPS ODH Option Bundle 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PCC/FIIO/StructureDefinition/IHE.FIPS.ODH.Option.Bundle | *Version*:1.0.0-comment |
| Active as of 2026-03-03 | *Computable Name*:IHE_FIPS_ODH_Option_Bundle |

 
This Bundle Deffines the additional requirements of the Occupational Data For Health (ODH) Data Elements that may be incorperated into a patient's IPS Bundle. 
These data Elements utilize the International Labor Organization Codes for to occupation and industry. 
In addition to the Entry requirments of IPS this Bundle requires the support of at least one of the following ODH Data Elements: 
* Past or Present Job
* Usual Work
 
It also allows optional support for the following ODH Data Elements: 
* Employment Status
* Retirement Date
* CombatZone Period
 

**Usages:**

* Examples for this Profile: [Bundle/e0e8252a-4aab-4fab-ac8f-5734abbd1ec7](Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.pcc.fiio|current/StructureDefinition/IHE.FIPS.ODH.Option.Bundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.FIPS.ODH.Option.Bundle.csv), [Excel](StructureDefinition-IHE.FIPS.ODH.Option.Bundle.xlsx), [Schematron](StructureDefinition-IHE.FIPS.ODH.Option.Bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.FIPS.ODH.Option.Bundle",
  "url" : "https://profiles.ihe.net/PCC/FIIO/StructureDefinition/IHE.FIPS.ODH.Option.Bundle",
  "version" : "1.0.0-comment",
  "name" : "IHE_FIPS_ODH_Option_Bundle",
  "title" : "IHE FHIR IPS ODH Option Bundle",
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
  "description" : "This Bundle Deffines the additional requirements of the Occupational Data For Health (ODH) Data Elements that may be incorperated into a patient's IPS Bundle. \n\nThese data Elements utilize the International Labor Organization Codes for to occupation and industry. \n\nIn addition to the Entry requirments of IPS this Bundle requires the support of at least one of the following ODH Data Elements:\n- Past or Present Job\n- Usual Work \n\nIt also allows optional support for the following ODH Data Elements:\n- Employment Status\n- Retirement Date\n- CombatZone Period",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.entry:composition",
      "path" : "Bundle.entry",
      "sliceName" : "composition"
    },
    {
      "id" : "Bundle.entry:composition.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Composition",
        "profile" : ["https://profiles.ihe.net/PCC/FIIO/StructureDefinition/IHE.FIPS.IO.ODH.Option.Composition"]
      }]
    },
    {
      "id" : "Bundle.entry:past-or-present-job",
      "path" : "Bundle.entry",
      "sliceName" : "past-or-present-job",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:past-or-present-job.resource",
      "path" : "Bundle.entry.resource",
      "comment" : "SHALL Support at least one of the following entries: Past or present Job and Usual Work",
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-PastOrPresentJob"]
      }]
    },
    {
      "id" : "Bundle.entry:usual-work",
      "path" : "Bundle.entry",
      "sliceName" : "usual-work",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:usual-work.resource",
      "path" : "Bundle.entry.resource",
      "comment" : "SHALL Support at least one of the following entries: Past or present Job and Usual Work",
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-UsualWork"]
      }]
    },
    {
      "id" : "Bundle.entry:employment-status",
      "path" : "Bundle.entry",
      "sliceName" : "employment-status",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:employment-status.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-EmploymentStatus"]
      }]
    },
    {
      "id" : "Bundle.entry:retirement-date",
      "path" : "Bundle.entry",
      "sliceName" : "retirement-date",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:retirement-date.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-RetirementDate"]
      }]
    },
    {
      "id" : "Bundle.entry:combat-zone-period",
      "path" : "Bundle.entry",
      "sliceName" : "combat-zone-period",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:combat-zone-period.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-CombatZonePeriod"]
      }]
    }]
  }
}

```
