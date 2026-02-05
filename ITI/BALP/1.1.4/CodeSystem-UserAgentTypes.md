# The code used to identifiy a User Agent - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **The code used to identifiy a User Agent**

## CodeSystem: The code used to identifiy a User Agent 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/BALP/CodeSystem/UserAgentTypes | *Version*:1.1.4 |
| Active as of 2025-10-31 | *Computable Name*:UserAgentTypes |

 
Code used to identify the User Agent. Defined codes for SAML vs OAuth to enable differentiation of .policy as the token ID 

 This Code system is referenced in the content logical definition of the following value sets: 

* [UserAgentTypesVS](ValueSet-UserAgentTypesVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "UserAgentTypes",
  "url" : "https://profiles.ihe.net/ITI/BALP/CodeSystem/UserAgentTypes",
  "version" : "1.1.4",
  "name" : "UserAgentTypes",
  "title" : "The code used to identifiy a User Agent",
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
  "description" : "Code used to identify the User Agent.\nDefined codes for SAML vs OAuth to enable differentiation of .policy as the token ID",
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
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "UserSamlAgent",
      "display" : "User SAML Agent participant"
    },
    {
      "code" : "UserOauthAgent",
      "display" : "User OAuth Agent participant"
    },
    {
      "code" : "AuthzOauthService",
      "display" : "OAuth Authorization Server"
    }
  ]
}

```
