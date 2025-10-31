# Other Id Types ValueSet - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Other Id Types ValueSet**

## ValueSet: Other Id Types ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/BALP/ValueSet/OtherIdentifierTypesVS | *Version*:1.1.4 |
| Active as of 2025-10-31 | *Computable Name*:OtherIdentifierTypesVS |

 
ValueSet of the Other Id Types allowed 

 **References** 

* [AuditEvent.agent other identifiers](StructureDefinition-ihe-otherId.md)

### Logical Definition (CLD)

 

### Expansion

This value set contains 3 concepts

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
  "id" : "OtherIdentifierTypesVS",
  "url" : "https://profiles.ihe.net/ITI/BALP/ValueSet/OtherIdentifierTypesVS",
  "version" : "1.1.4",
  "name" : "OtherIdentifierTypesVS",
  "title" : "Other Id Types ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-31T12:53:24-05:00",
  "publisher" : "IHE IT Infrastructure Technical Committee",
  "contact" : [
    {
      "name" : "IHE IT Infrastructure Technical Committee",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.ihe.net/ihe_domains/it_infrastructure/"
        },
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
  "description" : "ValueSet of the Other Id Types allowed",
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
  "compose" : {
    "include" : [
      {
        "system" : "https://profiles.ihe.net/ITI/BALP/CodeSystem/OtherIdentifierTypes"
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "concept" : [
          {
            "code" : "NPI"
          },
          {
            "code" : "PRN"
          }
        ]
      }
    ]
  }
}

```
