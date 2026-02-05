# OtherId Identifier Types - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OtherId Identifier Types**

## CodeSystem: OtherId Identifier Types 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/BALP/CodeSystem/OtherIdentifierTypes | *Version*:1.1.4 |
| Active as of 2025-10-31 | *Computable Name*:OtherIdentifierTypes |

 
OtherId Types beyond those in the FHIR core 

 This Code system is referenced in the content logical definition of the following value sets: 

* [OtherIdentifierTypesVS](ValueSet-OtherIdentifierTypesVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "OtherIdentifierTypes",
  "url" : "https://profiles.ihe.net/ITI/BALP/CodeSystem/OtherIdentifierTypes",
  "version" : "1.1.4",
  "name" : "OtherIdentifierTypes",
  "title" : "OtherId Identifier Types",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-31T12:57:41-05:00",
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
  "description" : "OtherId Types beyond those in the FHIR core",
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
      "code" : "SAML-subject-id",
      "display" : "SAML subject-id"
    }
  ]
}

```
