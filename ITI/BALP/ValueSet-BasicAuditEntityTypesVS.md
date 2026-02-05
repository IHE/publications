# Entity Types used by IHE BasicAudit - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Entity Types used by IHE BasicAudit**

## ValueSet: Entity Types used by IHE BasicAudit 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/BALP/ValueSet/BasicAuditEntityTypesVS | *Version*:1.1.4 |
| Active as of 2025-10-31 | *Computable Name*:BasicAuditEntityTypesVS |

 
For use with AuditEvent.entity.type. This includes codes defined in the BasicAudit. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

* Include all codes defined in [`https://profiles.ihe.net/ITI/BALP/CodeSystem/BasicAuditEntityType`](CodeSystem-BasicAuditEntityType.md)version 📦1.1.4

 

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
  "id" : "BasicAuditEntityTypesVS",
  "url" : "https://profiles.ihe.net/ITI/BALP/ValueSet/BasicAuditEntityTypesVS",
  "version" : "1.1.4",
  "name" : "BasicAuditEntityTypesVS",
  "title" : "Entity Types used by IHE BasicAudit",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-31T12:57:41-05:00",
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
  "description" : "For use with AuditEvent.entity.type.  This includes codes defined in the BasicAudit.",
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
        "system" : "https://profiles.ihe.net/ITI/BALP/CodeSystem/BasicAuditEntityType"
      }
    ]
  }
}

```
