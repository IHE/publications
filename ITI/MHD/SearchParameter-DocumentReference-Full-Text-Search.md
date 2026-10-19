# search on the textual content of the represented document - Mobile access to Health Documents (MHD) v4.2.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **search on the textual content of the represented document**

## SearchParameter: search on the textual content of the represented document 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/SearchParameter/DocumentReference-Full-Text-Search | *Version*:4.2.5 |
| Active as of 2026-10-18 | *Computable Name*:FullTextSearch |

 
Searches the textual content of the represented document. The search is performed against the content available via DocumentReference.content.attachment.url. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "DocumentReference-Full-Text-Search",
  "url" : "https://profiles.ihe.net/ITI/MHD/SearchParameter/DocumentReference-Full-Text-Search",
  "version" : "4.2.5",
  "name" : "FullTextSearch",
  "status" : "active",
  "date" : "2026-10-18T17:32:41-05:00",
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
  "description" : "Searches the textual content of the represented document. The search is performed against the content available via DocumentReference.content.attachment.url.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "code" : "full-text",
  "base" : ["DocumentReference"],
  "type" : "string",
  "multipleOr" : false,
  "multipleAnd" : false,
  "modifier" : ["exact"]
}

```
