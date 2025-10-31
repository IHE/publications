# Entity Types that are defined in IHE BasicAudit - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Entity Types that are defined in IHE BasicAudit**

## CodeSystem: Entity Types that are defined in IHE BasicAudit 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/CodeSystem/BasicAuditEntityType | *Version*:5.0.0-comment |
| Active as of 2025-10-31 | *Computable Name*:BasicAuditEntityType |

 
These are new codes used in BasicAudit IG, where AuditEvent.entity is used to hold a specific kind of data that is not covered by the existing valueSet. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [BasicAuditEntityTypesVS](ValueSet-BasicAuditEntityTypesVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "BasicAuditEntityType",
  "url" : "https://profiles.ihe.net/ITI/MHD/CodeSystem/BasicAuditEntityType",
  "version" : "5.0.0-comment",
  "name" : "BasicAuditEntityType",
  "title" : "Entity Types that are defined in IHE BasicAudit",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-31T15:07:19-05:00",
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
  "description" : "These are new codes used in BasicAudit IG, where AuditEvent.entity is used to hold a specific kind of data that is not covered by the existing valueSet.",
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
  "count" : 1,
  "concept" : [
    {
      "code" : "XrequestId",
      "display" : "transport specific unique identifier where http X-Request-Id is used"
    }
  ]
}

```
