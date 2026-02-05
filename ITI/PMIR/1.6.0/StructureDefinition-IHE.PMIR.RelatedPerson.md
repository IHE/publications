# IHE Patient Master Identity Registry Related Person - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE Patient Master Identity Registry Related Person**

## Resource Profile: IHE Patient Master Identity Registry Related Person 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.RelatedPerson | *Version*:1.6.0 |
| Active as of 2025-11-04 | *Computable Name*:PMIRRelatedPerson |

 
StructureDefinition for RelatedPerson resource constraints for messages in the IHE PMIR Profile when a Patient is linked to a related person. 

**Usages:**

* Refer to this Profile: [IHE Patient Master Identity Registry Related Person Patient](StructureDefinition-IHE.PMIR.Patient.Related.md)
* Examples for this Profile: [RelatedPerson/bf7c8e34-1be8-4b67-aad7-d62d8da48065](RelatedPerson-bf7c8e34-1be8-4b67-aad7-d62d8da48065.md) and [RelatedPerson/ex-related-mom](RelatedPerson-ex-related-mom.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.pmir|current/StructureDefinition/IHE.PMIR.RelatedPerson)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.PMIR.RelatedPerson.csv), [Excel](StructureDefinition-IHE.PMIR.RelatedPerson.xlsx), [Schematron](StructureDefinition-IHE.PMIR.RelatedPerson.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.PMIR.RelatedPerson",
  "url" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.RelatedPerson",
  "version" : "1.6.0",
  "name" : "PMIRRelatedPerson",
  "title" : "IHE Patient Master Identity Registry Related Person",
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
  "description" : "StructureDefinition for RelatedPerson resource constraints for messages in the IHE PMIR Profile when a Patient is linked to a related person.",
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RelatedPerson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "RelatedPerson",
        "path" : "RelatedPerson"
      },
      {
        "id" : "RelatedPerson.relationship",
        "path" : "RelatedPerson.relationship",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype"
        }
      }
    ]
  }
}

```
