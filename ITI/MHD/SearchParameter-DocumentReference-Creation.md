# search on the DocumentReference.content.attachment.creation element - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **search on the DocumentReference.content.attachment.creation element**

## SearchParameter: search on the DocumentReference.content.attachment.creation element 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/SearchParameter/DocumentReference-Creation | *Version*:4.2.3 |
| Active as of 2025-10-31 | *Computable Name*:Creation |

 
This SearchParameter enables finding DocumentReference by the creation dateTime. 

## Creation

Parameter `creation`:`date`

This SearchParameter enables finding DocumentReference by the creation dateTime.

| | |
| :--- | :--- |
| Resource | [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) |
| Expression | `DocumentReference.content.attachment.creation` |
| Multiples | * multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true
* multipleOr: It's up to the server whether the parameter can have multiple values (separated by comma) where at least one must be true
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "DocumentReference-Creation",
  "url" : "https://profiles.ihe.net/ITI/MHD/SearchParameter/DocumentReference-Creation",
  "version" : "4.2.3",
  "name" : "Creation",
  "status" : "active",
  "date" : "2025-10-31T11:05:31-05:00",
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
  "description" : "This SearchParameter enables finding DocumentReference by the creation dateTime.",
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
  "code" : "creation",
  "base" : ["DocumentReference"],
  "type" : "date",
  "expression" : "DocumentReference.content.attachment.creation"
}

```
