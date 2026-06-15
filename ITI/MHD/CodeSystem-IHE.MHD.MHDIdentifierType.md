# IHE MHD Identifier Types - Mobile access to Health Documents (MHD) v4.2.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE MHD Identifier Types**

## CodeSystem: IHE MHD Identifier Types 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/CodeSystem/IHE.MHD.MHDIdentifierType | *Version*:4.2.4 |
| Active as of 2026-06-15 | *Computable Name*:MHDIdentifierType |

 
Code System for Identifier.type values defined in IHE MHD 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MHDIdentifierTypeVS](ValueSet-IHE.MHD.MHDIdentifierTypeVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "IHE.MHD.MHDIdentifierType",
  "url" : "https://profiles.ihe.net/ITI/MHD/CodeSystem/IHE.MHD.MHDIdentifierType",
  "version" : "4.2.4",
  "name" : "MHDIdentifierType",
  "title" : "IHE MHD Identifier Types",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-15T14:55:16-05:00",
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
  "description" : "Code System for Identifier.type values defined in IHE MHD",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "entryUUID",
    "display" : "Identifier type for XDS entryUUID"
  },
  {
    "code" : "uniqueId",
    "display" : "Identifier type for XDS UniqueId"
  }]
}

```
