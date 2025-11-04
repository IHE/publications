# IHE Patient Master Identity Registry Subscription request - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE Patient Master Identity Registry Subscription request**

## Resource Profile: IHE Patient Master Identity Registry Subscription request 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Subscription.Request | *Version*:1.6.0 |
| Active as of 2025-11-04 | *Computable Name*:PMIRSubscriptionRequest |

 
StructureDefinition for Subscrption resource constraints for subscription requests in the IHE PMIR Profile. The IHE PMIR Profile text is Normative, this conformance resource is Informative. 

**Usages:**

* Examples for this Profile: [Subscription/ex-subscription-request](Subscription-ex-subscription-request.md)
* CapabilityStatements using this Profile: [IHE PMIR Patient Identity Registry](CapabilityStatement-IHE.PMIR.PatientIdentityRegistry.md) and [IHE PMIR Patient Identity Subscriber](CapabilityStatement-IHE.PMIR.PatientIdentitySubscriber.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.pmir|current/StructureDefinition/IHE.PMIR.Subscription.Request)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.PMIR.Subscription.Request.csv), [Excel](StructureDefinition-IHE.PMIR.Subscription.Request.xlsx), [Schematron](StructureDefinition-IHE.PMIR.Subscription.Request.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.PMIR.Subscription.Request",
  "url" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Subscription.Request",
  "version" : "1.6.0",
  "name" : "PMIRSubscriptionRequest",
  "title" : "IHE Patient Master Identity Registry Subscription request",
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
  "description" : "StructureDefinition for Subscrption resource constraints for subscription requests in the IHE PMIR Profile.  The IHE PMIR Profile text is Normative, this conformance resource is Informative.",
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
  "baseDefinition" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Subscription",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Subscription",
        "path" : "Subscription"
      },
      {
        "id" : "Subscription.status",
        "path" : "Subscription.status",
        "patternCode" : "requested"
      }
    ]
  }
}

```
