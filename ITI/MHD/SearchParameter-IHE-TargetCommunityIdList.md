# search on the IHE defined extension for homeCommunityId - Mobile access to Health Documents (MHD) v4.2.5-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **search on the IHE defined extension for homeCommunityId**

## SearchParameter: search on the IHE defined extension for homeCommunityId 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/SearchParameter/IHE-TargetCommunityIdList | *Version*:4.2.5-comment |
| Active as of 2026-06-16 | *Computable Name*:TargetCommunityIdList |

 
This SearchParameter enables finding by the homeCommunityId where DocumentReference, submissionSet, or folder exist. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "IHE-TargetCommunityIdList",
  "url" : "https://profiles.ihe.net/ITI/MHD/SearchParameter/IHE-TargetCommunityIdList",
  "version" : "4.2.5-comment",
  "name" : "TargetCommunityIdList",
  "status" : "active",
  "date" : "2026-06-16T19:25:56-05:00",
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
  "description" : "This SearchParameter enables finding by the homeCommunityId where DocumentReference, submissionSet, or folder exist.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "code" : "targetCommunityIdList",
  "base" : ["List", "DocumentReference"],
  "type" : "uri",
  "expression" : "(extension('https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-HomeCommunityId').value.ofType(oid))"
}

```
