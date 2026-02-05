# IHE Patient Master Identity Registry Related Person Patient - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE Patient Master Identity Registry Related Person Patient**

## Resource Profile: IHE Patient Master Identity Registry Related Person Patient 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Patient.Related | *Version*:1.6.0 |
| Active as of 2025-11-04 | *Computable Name*:PMIRPatientRelated |

 
StructureDefinition for Patient resource constraints for messages in the IHE PMIR Profile when the Patient is linked to a related person. 

**Usages:**

* Examples for this Profile: [Patient/ex-patient-create2](Patient-ex-patient-create2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.pmir|current/StructureDefinition/IHE.PMIR.Patient.Related)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.PMIR.Patient.Related.csv), [Excel](StructureDefinition-IHE.PMIR.Patient.Related.xlsx), [Schematron](StructureDefinition-IHE.PMIR.Patient.Related.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.PMIR.Patient.Related",
  "url" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Patient.Related",
  "version" : "1.6.0",
  "name" : "PMIRPatientRelated",
  "title" : "IHE Patient Master Identity Registry Related Person Patient",
  "status" : "active",
  "date" : "2025-11-04T15:17:55-06:00",
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
  "description" : "StructureDefinition for Patient resource constraints for messages in the IHE PMIR Profile when the Patient is linked to a related person.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient"
      },
      {
        "id" : "Patient.link",
        "path" : "Patient.link",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Patient.link.other",
        "path" : "Patient.link.other",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : false
              }
            ],
            "code" : "Reference",
            "targetProfile" : [
              "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.RelatedPerson"
            ]
          }
        ]
      },
      {
        "id" : "Patient.link.type",
        "path" : "Patient.link.type",
        "patternCode" : "seealso"
      }
    ]
  }
}

```
