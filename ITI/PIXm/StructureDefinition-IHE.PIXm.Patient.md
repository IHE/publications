# PIXm Patient constraints for Feed - Patient Identifier Cross-referencing for mobile (PIXm) v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PIXm Patient constraints for Feed**

## Resource Profile: PIXm Patient constraints for Feed 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Patient | *Version*:3.1.0 |
| Active as of 2025-11-04 | *Computable Name*:PIXmPatient |

 
Profile for describing elements which have to be accepted by the Patient Identifier Cross-reference Manager for performing its cross-referencing function. 
* requiring name
* mustSupport for identifier, name, telecom, gender birthDate, address and managingOrganization
 

**Usages:**

* Examples for this Profile: [Patient/Patient-MaidenAlice-Red](Patient-Patient-MaidenAlice-Red.md), [Patient/Patient-MohrAlice-Blue](Patient-Patient-MohrAlice-Blue.md), [Patient/Patient-MohrAlice-Green](Patient-Patient-MohrAlice-Green.md), [Patient/Patient-MohrAlice-Red](Patient-Patient-MohrAlice-Red.md)...Show 3 more,[Patient/Patient-MohrAlice](Patient-Patient-MohrAlice.md),[Patient/Patient-MohrAlissa-Red](Patient-Patient-MohrAlissa-Red.md)and[Patient/Patient-MohrMaidenResolvedByMohrMalice-Red](Patient-Patient-MohrMaidenResolvedByMohrMalice-Red.md)
* CapabilityStatements using this Profile: [IHE ITI Patient Identifier Cross-referencing for mobile (PIXm) - Manager (server)](CapabilityStatement-IHE.PIXm.Manager.md) and [IHE ITI Patient Identifier Cross-referencing for mobile (PIXm) - Source (client)](CapabilityStatement-IHE.PIXm.Source.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.pixm|current/StructureDefinition/IHE.PIXm.Patient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.PIXm.Patient.csv), [Excel](StructureDefinition-IHE.PIXm.Patient.xlsx), [Schematron](StructureDefinition-IHE.PIXm.Patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.PIXm.Patient",
  "url" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Patient",
  "version" : "3.1.0",
  "name" : "PIXmPatient",
  "title" : "PIXm Patient constraints for Feed",
  "status" : "active",
  "date" : "2025-11-04T14:17:39-06:00",
  "publisher" : "IHE IT Infrastructure Technical Committee",
  "contact" : [
    {
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.ihe.net/ihe_domains/it_infrastructure/"
        }
      ]
    },
    {
      "telecom" : [
        {
          "system" : "email",
          "value" : "iti@ihe.net"
        }
      ]
    },
    {
      "name" : "IHE IT Infrastructure Technical Committee",
      "telecom" : [
        {
          "system" : "email",
          "value" : "iti@ihe.net"
        }
      ]
    }
  ],
  "description" : "Profile for describing elements which have to be accepted by the Patient Identifier Cross-reference Manager for performing its cross-referencing function.\r\n- requiring name\r\n- mustSupport for identifier, name, telecom, gender birthDate, address and managingOrganization",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
          "code" : "001"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
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
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient"
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "mustSupport" : true
      },
      {
        "id" : "Patient.name",
        "path" : "Patient.name",
        "min" : 1
      },
      {
        "id" : "Patient.gender",
        "path" : "Patient.gender",
        "mustSupport" : true
      },
      {
        "id" : "Patient.managingOrganization",
        "path" : "Patient.managingOrganization",
        "mustSupport" : true
      }
    ]
  }
}

```
