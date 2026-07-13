# search on the DocumentReference.content.attachment.creation element - Mobile access to Health Documents (MHD) v4.2.5-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **search on the DocumentReference.content.attachment.creation element**

## SearchParameter: search on the DocumentReference.content.attachment.creation element 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/SearchParameter/DocumentReference-Creation | *Version*:4.2.5-comment |
| Active as of 2026-06-16 | *Computable Name*:Creation |

 
This SearchParameter enables finding DocumentReference by the creation dateTime. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "DocumentReference-Creation",
  "url" : "https://profiles.ihe.net/ITI/MHD/SearchParameter/DocumentReference-Creation",
  "version" : "4.2.5-comment",
  "name" : "Creation",
  "status" : "active",
  "date" : "2026-06-16T19:21:44-05:00",
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
  "description" : "This SearchParameter enables finding DocumentReference by the creation dateTime.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "code" : "creation",
  "base" : ["DocumentReference"],
  "type" : "date",
  "expression" : "DocumentReference.content.attachment.creation"
}

```
