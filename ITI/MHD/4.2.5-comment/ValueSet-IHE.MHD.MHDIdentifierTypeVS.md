# IHE MHD Identifier Types ValueSet - Mobile access to Health Documents (MHD) v4.2.5-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE MHD Identifier Types ValueSet**

## ValueSet: IHE MHD Identifier Types ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/ValueSet/IHE.MHD.MHDIdentifierTypeVS | *Version*:4.2.5-comment |
| Active as of 2026-06-16 | *Computable Name*:MHDIdentifierTypeVS |

 
ValueSet for Identifier.type values defined in IHE MHD 

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
  "id" : "IHE.MHD.MHDIdentifierTypeVS",
  "url" : "https://profiles.ihe.net/ITI/MHD/ValueSet/IHE.MHD.MHDIdentifierTypeVS",
  "version" : "4.2.5-comment",
  "name" : "MHDIdentifierTypeVS",
  "title" : "IHE MHD Identifier Types ValueSet",
  "status" : "active",
  "experimental" : false,
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
  "description" : "ValueSet for Identifier.type values defined in IHE MHD",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://profiles.ihe.net/ITI/MHD/CodeSystem/IHE.MHD.MHDIdentifierType",
      "concept" : [{
        "code" : "entryUUID"
      },
      {
        "code" : "uniqueId"
      }]
    }]
  }
}

```
