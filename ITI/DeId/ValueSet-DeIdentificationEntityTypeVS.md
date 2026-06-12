# Entity Type for De-Identification valueset - De-Identification Handbook v2.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Entity Type for De-Identification valueset**

## ValueSet: Entity Type for De-Identification valueset 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/DeId/ValueSet/DeIdentificationEntityTypeVS | *Version*:2.0.0-comment |
| Active as of 2026-06-12 | *Computable Name*:DeIdentificationEntityTypeVS |

 
ValueSet Entity Type for De-Identification 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "DeIdentificationEntityTypeVS",
  "url" : "https://profiles.ihe.net/ITI/DeId/ValueSet/DeIdentificationEntityTypeVS",
  "version" : "2.0.0-comment",
  "name" : "DeIdentificationEntityTypeVS",
  "title" : "Entity Type for De-Identification valueset",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-12T10:54:51-05:00",
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
  "description" : "ValueSet Entity Type for De-Identification",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://profiles.ihe.net/ITI/DeId/CodeSystem/DeIdentificationEntityType"
    }]
  }
}

```
