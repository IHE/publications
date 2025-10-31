# MHD List Types - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MHD List Types**

## CodeSystem: MHD List Types 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes | *Version*:4.2.3 |
| Active as of 2025-10-31 | *Computable Name*:MHDlistTypes |

 
To use the List resource for two different use-cases we define a code-system with the types of List needed in MHD 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MHDlistTypesVS](ValueSet-MHDlistTypesVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "MHDlistTypes",
  "url" : "https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes",
  "version" : "4.2.3",
  "name" : "MHDlistTypes",
  "title" : "MHD List Types",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-31T10:59:52-05:00",
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
  "description" : "To use the List resource for two different use-cases we define a code-system with the types of List needed in MHD",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
          "code" : "001",
          "display" : "World"
        }
      ]
    }
  ],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [
    {
      "code" : "folder",
      "display" : "Folder as a FHIR List"
    },
    {
      "code" : "submissionset",
      "display" : "SubmissionSet as a FHIR List"
    }
  ]
}

```
