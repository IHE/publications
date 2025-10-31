# MHD Patient Types ValueSet - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MHD Patient Types ValueSet**

## ValueSet: MHD Patient Types ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/ValueSet/MHDprovidePatientActions | *Version*:5.0.0-comment |
| Active as of 2025-10-31 | *Computable Name*:MHDprovidePatientActions |

 
A ValueSet of the allowed actions in a ITI-65 Provide Document Bundle for the Patient type Resource. Where Patient would typically be indicated as a GET (read), but might be created or updated depending on policy. 

 **References** 

* [MHD Minimal Provide Document Bundle](StructureDefinition-IHE.MHD.Minimal.ProvideBundle.md)

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
  "id" : "MHDprovidePatientActions",
  "url" : "https://profiles.ihe.net/ITI/MHD/ValueSet/MHDprovidePatientActions",
  "version" : "5.0.0-comment",
  "name" : "MHDprovidePatientActions",
  "title" : "MHD Patient Types ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-31T15:07:19-05:00",
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
  "description" : "A ValueSet of the allowed actions in a ITI-65 Provide Document Bundle for the Patient type Resource. Where Patient would typically be indicated as a GET (read), but might be created or updated depending on policy.",
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
        "system" : "http://hl7.org/fhir/http-verb",
        "concept" : [
          {
            "code" : "GET"
          },
          {
            "code" : "POST"
          },
          {
            "code" : "PUT"
          }
        ]
      }
    ]
  }
}

```
