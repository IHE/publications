# Entity Type for De-Identification - De-Identification Handbook v2.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Entity Type for De-Identification**

## CodeSystem: Entity Type for De-Identification 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/DeId/CodeSystem/DeIdentificationEntityType | *Version*:2.0.0-comment |
| Active as of 2026-06-12 | *Computable Name*:DeIdentificationEntityType |

 
These AuditEvent.entity.type are related to De-Identification policy identification. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DeIdentificationEntityTypeVS](ValueSet-DeIdentificationEntityTypeVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "DeIdentificationEntityType",
  "url" : "https://profiles.ihe.net/ITI/DeId/CodeSystem/DeIdentificationEntityType",
  "version" : "2.0.0-comment",
  "name" : "DeIdentificationEntityType",
  "title" : "Entity Type for De-Identification",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-12T10:52:17-05:00",
  "publisher" : "IHE IT Infrastructure Technical Committee",
  "contact" : [{
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ihe.net/ihe_domains/it_infrastructure/"
    }]
  },
  {
    "telecom" : [{
      "system" : "email",
      "value" : "iti@ihe.net"
    }]
  },
  {
    "name" : "IHE IT Infrastructure Technical Committee",
    "telecom" : [{
      "system" : "email",
      "value" : "iti@ihe.net"
    }]
  }],
  "description" : "These AuditEvent.entity.type are related to De-Identification policy identification.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "DeId-algorithm",
    "display" : "De-Identification Algorithm"
  }]
}

```
