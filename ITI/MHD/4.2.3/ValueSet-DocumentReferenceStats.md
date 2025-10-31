# MHD DocumentReference status codes - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MHD DocumentReference status codes**

## ValueSet: MHD DocumentReference status codes 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/ValueSet/DocumentReferenceStats | *Version*:4.2.3 |
| Active as of 2025-10-31 | *Computable Name*:DocumentReferenceStats |

 
ValueSet that does not include entered-in-error as that does not map 

 **References** 

* [MHD DocumentReference Minimal](StructureDefinition-IHE.MHD.Minimal.DocumentReference.md)

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
  "id" : "DocumentReferenceStats",
  "url" : "https://profiles.ihe.net/ITI/MHD/ValueSet/DocumentReferenceStats",
  "version" : "4.2.3",
  "name" : "DocumentReferenceStats",
  "title" : "MHD DocumentReference status codes",
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
  "description" : "ValueSet that does not include entered-in-error as that does not map",
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
  "compose" : {
    "include" : [
      {
        "system" : "http://hl7.org/fhir/document-reference-status",
        "concept" : [
          {
            "code" : "current"
          },
          {
            "code" : "superseded"
          }
        ]
      }
    ]
  }
}

```
