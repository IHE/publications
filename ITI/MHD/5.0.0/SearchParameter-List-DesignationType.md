# search on the IHE defined extension for designationType - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **search on the IHE defined extension for designationType**

## SearchParameter: search on the IHE defined extension for designationType 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/SearchParameter/List-DesignationType | *Version*:5.0.0 |
| Active as of 2025-12-18 | *Computable Name*:DesignationType |

 
This SearchParameter enables finding Lists by the designationType code in a submissionSet or folder. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "List-DesignationType",
  "url" : "https://profiles.ihe.net/ITI/MHD/SearchParameter/List-DesignationType",
  "version" : "5.0.0",
  "name" : "DesignationType",
  "title" : "search on the IHE defined extension for designationType",
  "status" : "active",
  "date" : "2025-12-18T09:48:18-06:00",
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
  "description" : "This SearchParameter enables finding Lists by the designationType code in a submissionSet or folder.",
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
  "code" : "designationType",
  "base" : ["List"],
  "type" : "token",
  "expression" : "(extension('https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-designationType').value.ofType(CodeableConcept))",
  "processingMode" : "normal"
}

```
