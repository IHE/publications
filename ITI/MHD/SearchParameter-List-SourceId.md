# search on the IHE defined extension for SourceId - Mobile access to Health Documents (MHD) v4.2.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **search on the IHE defined extension for SourceId**

## SearchParameter: search on the IHE defined extension for SourceId 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/SearchParameter/List-SourceId | *Version*:4.2.4 |
| Active as of 2026-06-15 | *Computable Name*:SourceId |

 
This SearchParameter enables finding Lists by the SourceId of a submissionSet. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "List-SourceId",
  "url" : "https://profiles.ihe.net/ITI/MHD/SearchParameter/List-SourceId",
  "version" : "4.2.4",
  "name" : "SourceId",
  "status" : "active",
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
  "description" : "This SearchParameter enables finding Lists by the SourceId of a submissionSet.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "code" : "sourceId",
  "base" : ["List"],
  "type" : "token",
  "expression" : "(extension('https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-sourceId').value.ofType(Identifier))"
}

```
