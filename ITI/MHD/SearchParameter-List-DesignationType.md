# search on the IHE defined extension for designationType - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **search on the IHE defined extension for designationType**

## SearchParameter: search on the IHE defined extension for designationType 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/SearchParameter/List-DesignationType | *Version*:4.2.3 |
| Active as of 2025-10-31 | *Computable Name*:DesignationType |

 
This SearchParameter enables finding Lists by the designationType code in a submissionSet or folder. 

## DesignationType

Parameter `designationType`:`token`

This SearchParameter enables finding Lists by the designationType code in a submissionSet or folder.

| | |
| :--- | :--- |
| Resource | [List](http://hl7.org/fhir/R4/list.html) |
| Expression | `(extension('https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-designationType').value.ofType(CodeableConcept))` |
| Multiples | * multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true
* multipleOr: It's up to the server whether the parameter can have multiple values (separated by comma) where at least one must be true
 |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "List-DesignationType",
  "url" : "https://profiles.ihe.net/ITI/MHD/SearchParameter/List-DesignationType",
  "version" : "4.2.3",
  "name" : "DesignationType",
  "status" : "active",
  "date" : "2025-10-31T14:38:46-05:00",
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
          "code" : "001",
          "display" : "World"
        }
      ]
    }
  ],
  "code" : "designationType",
  "base" : ["List"],
  "type" : "token",
  "expression" : "(extension('https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-designationType').value.ofType(CodeableConcept))"
}

```
