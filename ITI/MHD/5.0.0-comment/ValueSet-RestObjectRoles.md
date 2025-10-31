# RESTful objects role in the event - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RESTful objects role in the event**

## ValueSet: RESTful objects role in the event 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/ValueSet/RestObjectRoles | *Version*:5.0.0-comment |
| Active as of 2025-10-31 | *Computable Name*:RestObjectRoles |

 
The role that the given Object played in the Audit Event recorded 

 **References** 

* [Basic AuditEvent for a successful Create not related to a Patient](StructureDefinition-IHE.BasicAudit.MHD5.Create.md)
* [Basic AuditEvent for a successful Read](StructureDefinition-IHE.BasicAudit.MHD5.Read.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R5/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "RestObjectRoles",
  "url" : "https://profiles.ihe.net/ITI/MHD/ValueSet/RestObjectRoles",
  "version" : "5.0.0-comment",
  "name" : "RestObjectRoles",
  "title" : "RESTful objects role in the event",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-31T11:44:01-05:00",
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
  "description" : "The role that the given Object played in the Audit Event recorded",
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
        "system" : "http://terminology.hl7.org/CodeSystem/object-role",
        "concept" : [
          {
            "code" : "4",
            "display" : "Domain Resource"
          },
          {
            "code" : "3",
            "display" : "Report"
          },
          {
            "code" : "20",
            "display" : "Job"
          }
        ]
      }
    ]
  }
}

```
