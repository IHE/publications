# Agent types holding User-Agent - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Agent types holding User-Agent**

## ValueSet: Agent types holding User-Agent 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/BALP/ValueSet/UserAgentTypesVS | *Version*:1.1.4 |
| Active as of 2025-10-31 | *Computable Name*:UserAgentTypesVS |

 
AuditEvent.agent.type values holding OAuth/SAML identified user. Note that user is not just users, but representes the higest agent responsible for triggering the activity being recorded in the AuditEvent. 
Often this agent also has a type coding that is more specific to the transaction and the direction of the transaction. 
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#IRCP // use for query/retrieve
* http://terminology.hl7.org/CodeSystem/v3-RoleClass#AGNT // use for push/create/update
* http://terminology.hl7.org/CodeSystem/v3-RoleClass#PAT // use when the user is the patient
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#AUT "Author" // used with create/update
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#INF "Informant" // used with export
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST "Custodian" // used with export
 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (not supported by Publication Tooling)

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "UserAgentTypesVS",
  "url" : "https://profiles.ihe.net/ITI/BALP/ValueSet/UserAgentTypesVS",
  "version" : "1.1.4",
  "name" : "UserAgentTypesVS",
  "title" : "Agent types holding User-Agent",
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
  "description" : "AuditEvent.agent.type values holding OAuth/SAML identified user. Note that user is not just users, but representes the higest agent responsible for triggering the activity being recorded in the AuditEvent.\n\nOften this agent also has a type coding that is more specific to the transaction and the direction of the transaction.\n- http://terminology.hl7.org/CodeSystem/v3-ParticipationType#IRCP // use for query/retrieve\n- http://terminology.hl7.org/CodeSystem/v3-RoleClass#AGNT // use for push/create/update\n- http://terminology.hl7.org/CodeSystem/v3-RoleClass#PAT  // use when the user is the patient\n- http://terminology.hl7.org/CodeSystem/v3-ParticipationType#AUT \"Author\" // used with create/update\n- http://terminology.hl7.org/CodeSystem/v3-ParticipationType#INF \"Informant\" // used with export\n- http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST \"Custodian\" // used with export",
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
  "compose" : {
    "include" : [
      {
        "system" : "https://profiles.ihe.net/ITI/BALP/CodeSystem/UserAgentTypes"
      },
      {
        "system" : "urn:ihe:iti:xca:2010",
        "concept" : [
          {
            "code" : "homeCommunityId",
            "display" : "IHE homeCommunityId"
          }
        ]
      }
    ]
  }
}

```
