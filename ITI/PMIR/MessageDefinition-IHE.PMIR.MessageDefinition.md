# PMIR Mobile Patient Identity Feed [ITI-93] MessageDefinition - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PMIR Mobile Patient Identity Feed [ITI-93] MessageDefinition**

## MessageDefinition: PMIR Mobile Patient Identity Feed [ITI-93] MessageDefinition 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PMIR/MessageDefinition/IHE.PMIR.MessageDefinition | *Version*:1.6.0 |
| Active as of 2022-03-31 | *Computable Name*:IHE_PMIR_MessageDefinition |

 
PMIR MessageDefinition for the[Mobile Patient Identity Feed [ITI-93]](ITI-93.md) 

**url**: [MessageDefinition PMIR Mobile Patient Identity Feed [ITI-93] MessageDefinition](MessageDefinition-IHE.PMIR.MessageDefinition.md)

**version**: 1.6.0

**name**: IHE_PMIR_MessageDefinition

**title**: PMIR Mobile Patient Identity Feed [ITI-93] MessageDefinition

**status**: Active

**date**: 2022-03-31

**publisher**: IHE IT Infrastructure Technical Committee

**contact**: [https://www.ihe.net/ihe_domains/it_infrastructure/](https://www.ihe.net/ihe_domains/it_infrastructure/), [iti@ihe.net](mailto:iti@ihe.net), IHE IT Infrastructure Technical Committee: [iti@ihe.net](mailto:iti@ihe.net)

**description**: 

PMIR MessageDefinition for the [Mobile Patient Identity Feed [ITI-93]](ITI-93.md)

**jurisdiction**: Global (Whole world)

**event**: urn:ihe:iti:pmir:2019:patient-feed

**category**: Notification

### Focus

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Code** | **Profile** | **Min** | **Max** |
| * | Bundle | [IHE Patient Master Identity Registry Bundle Message](StructureDefinition-IHE.PMIR.Bundle.History.md) | 1 | 1 |

**responseRequired**: Always

### AllowedResponses

| | |
| :--- | :--- |
| - | **Message** |
| * | [PMIR Mobile Patient Identity Feed [ITI-93] MessageDefinition Response](MessageDefinition-IHE.PMIR.MessageDefinition.Response.md) |



## Resource Content

```json
{
  "resourceType" : "MessageDefinition",
  "id" : "IHE.PMIR.MessageDefinition",
  "url" : "https://profiles.ihe.net/ITI/PMIR/MessageDefinition/IHE.PMIR.MessageDefinition",
  "version" : "1.6.0",
  "name" : "IHE_PMIR_MessageDefinition",
  "title" : "PMIR Mobile Patient Identity Feed [ITI-93] MessageDefinition",
  "status" : "active",
  "date" : "2022-03-31",
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
  "description" : "PMIR MessageDefinition for the [Mobile Patient Identity Feed \\[ITI-93\\]](ITI-93.html)",
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
  "eventUri" : "urn:ihe:iti:pmir:2019:patient-feed",
  "category" : "notification",
  "focus" : [
    {
      "code" : "Bundle",
      "profile" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle.History",
      "min" : 1,
      "max" : "1"
    }
  ],
  "responseRequired" : "always",
  "allowedResponse" : [
    {
      "message" : "https://profiles.ihe.net/ITI/PMIR/MessageDefinition/IHE.PMIR.MessageDefinition.Response"
    }
  ]
}

```
