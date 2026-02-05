# Authorization subType events - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Authorization subType events**

## CodeSystem: Authorization subType events 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/BALP/CodeSystem/AuthZsubType | *Version*:1.1.4 |
| Active as of 2025-10-31 | *Computable Name*:AuthZsubType |

 
These AuditEvent subTypes are related to Authorization Decisions. These are more specific types of Security Alert. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AuthZsubTypeVS](ValueSet-AuthZsubTypeVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "AuthZsubType",
  "url" : "https://profiles.ihe.net/ITI/BALP/CodeSystem/AuthZsubType",
  "version" : "1.1.4",
  "name" : "AuthZsubType",
  "title" : "Authorization subType events",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-31T12:53:24-05:00",
  "publisher" : "IHE IT Infrastructure Technical Committee",
  "contact" : [
    {
      "name" : "IHE IT Infrastructure Technical Committee",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.ihe.net/ihe_domains/it_infrastructure/"
        },
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
  "description" : "These AuditEvent subTypes are related to Authorization Decisions. These are more specific types of Security Alert.",
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [
    {
      "code" : "AuthZ-Consent",
      "display" : "Authorization Decision using Roles and Consent"
    },
    {
      "code" : "AuthZ-Role",
      "display" : "Authorization Decision using only Roles"
    }
  ]
}

```
