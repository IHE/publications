# IHE Patient Master Identity Registry Subscription - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE Patient Master Identity Registry Subscription**

## Resource Profile: IHE Patient Master Identity Registry Subscription 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Subscription | *Version*:1.6.0 |
| Active as of 2025-11-04 | *Computable Name*:PMIRSubscription |

 
StructureDefinition for Subscrption resource constraints in the IHE PMIR Profile. 
See[Section 3.94.4.1.2.1.1](ITI-94.md#239441211-criteria-constraints)for details on constraints for criteria. 

**Usages:**

* Derived from this Profile: [IHE Patient Master Identity Registry Subscription request](StructureDefinition-IHE.PMIR.Subscription.Request.md)
* Examples for this Profile: [Subscription/ex-subscription](Subscription-ex-subscription.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.pmir|current/StructureDefinition/IHE.PMIR.Subscription)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.PMIR.Subscription.csv), [Excel](StructureDefinition-IHE.PMIR.Subscription.xlsx), [Schematron](StructureDefinition-IHE.PMIR.Subscription.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.PMIR.Subscription",
  "url" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Subscription",
  "version" : "1.6.0",
  "name" : "PMIRSubscription",
  "title" : "IHE Patient Master Identity Registry Subscription",
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
  "description" : "StructureDefinition for Subscrption resource constraints in the IHE PMIR Profile.\n\nSee [Section 3.94.4.1.2.1.1](ITI-94.html#239441211-criteria-constraints) for details\non constraints for criteria.",
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Subscription",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Subscription",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Subscription",
        "path" : "Subscription"
      },
      {
        "id" : "Subscription.contact.system",
        "path" : "Subscription.contact.system",
        "min" : 1
      },
      {
        "id" : "Subscription.contact.value",
        "path" : "Subscription.contact.value",
        "min" : 1
      },
      {
        "id" : "Subscription.criteria",
        "path" : "Subscription.criteria",
        "short" : "See Section 2:3.94.4.1.2.1.1",
        "definition" : "See Section 2:3.94.4.1.2.1.1",
        "requirements" : "Must support Patient, Patient?_id=X, Patient?organization=X, and Patient?identifier=X"
      },
      {
        "id" : "Subscription.channel.type",
        "path" : "Subscription.channel.type",
        "patternCode" : "message"
      },
      {
        "id" : "Subscription.channel.endpoint",
        "path" : "Subscription.channel.endpoint",
        "min" : 1
      },
      {
        "id" : "Subscription.channel.payload",
        "path" : "Subscription.channel.payload",
        "min" : 1
      }
    ]
  }
}

```
