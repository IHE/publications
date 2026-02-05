# PDQm Patient Demographics Consumer Actor Implementing Patient Search Option - Patient Demographics Query for Mobile (PDQm) v3.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PDQm Patient Demographics Consumer Actor Implementing Patient Search Option**

## CapabilityStatement: PDQm Patient Demographics Consumer Actor Implementing Patient Search Option 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PDQm/CapabilityStatement/IHE.PDQm.PatientDemographicsConsumerQuery | *Version*:3.2.0 |
| Active as of 2022-10-28 | *Computable Name*:IHE_PDQM_PATIENT_DEMOGRAPHICS_CONSUMER_SEARCH |

 
The PDQm Patient Demographics Consumer Actor (client) requirements CapabililtyStatement expresses the requirements that can be utilized while being compliant. This capability statement implements the Patient Search Option. 
* Query against the FHIR endpoint to the Patient Resource endpoint
* Using FHIR R4
* MAY request json or xml encoding
* SHOULD use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)
* [Search Parameters that MAY be used](ITI-78.md#23784121-search-parameters) 
* _id
* active
* family
* given
* identifier
* telecom
* birthdate
* address
* gender
* mothersMaidenName
 
 

 [Raw OpenAPI-Swagger Definition file](IHE.PDQm.PatientDemographicsConsumerQuery.openapi.json) | [Download](IHE.PDQm.PatientDemographicsConsumerQuery.openapi.json) 

## IHE PDQm Patient Demographics Consumer Implementing Patient Search Option

* Implementation Guide Version: 3.2.0 
* FHIR Version: 4.0.1 
* Supported Formats: `application/fhir+xml`, `application/fhir+json`
* Published on: 2022-10-28 
* Published by: IHE IT Infrastructure Technical Committee 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

## FHIR RESTful Capabilities

### Mode: client

PDQm Patient Demographics Consumer provides capability to discover Patient Identities by demographics and identities.

**Security**

> 

Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)


**Summary of System-wide Interactions**

* Supports the `search-system`interaction.

### Capabilities by Resource/Profile

#### Summary

The summary table lists the resources that are part of this configuration, and for each resource it lists:

* The relevant profiles (if any)
* The interactions supported by each resource (**R**ead, **S**earch, **U**pdate, and **C**reate, are always shown, while **VR**ead, **P**atch, **D**elete, **H**istory on **I**nstance, or **H**istory on **T**ype are only present if at least one of the resources has support for them.
* The required, recommended, and some optional search parameters (if any).
* The linked resources enabled for `_include`
* The other resources enabled for `_revinclude`
* The operations on the resource (if any)

| | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [Patient](#Patient1-1) |   | y | y |  |  | _lastUpdated, _id, active, family, given, identifier, telecom, birthdate, address, address-city, address-country, address-postalcode, address-state, gender, mothersMaidenName |  |  |  |

-------

#### Resource Conformance: MAY Patient

Core FHIR Resource

[Patient](http://hl7.org/fhir/R4/patient.html)

Reference Policy

Interaction summary

* Supports `read`, `search-type`.

Documentation
> 

Mobile Patient Demographics Query [ITI-78]


Search Parameters


 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.PDQm.PatientDemographicsConsumerQuery",
  "url" : "https://profiles.ihe.net/ITI/PDQm/CapabilityStatement/IHE.PDQm.PatientDemographicsConsumerQuery",
  "version" : "3.2.0",
  "name" : "IHE_PDQM_PATIENT_DEMOGRAPHICS_CONSUMER_SEARCH",
  "title" : "IHE PDQm Patient Demographics Consumer Implementing Patient Search Option",
  "status" : "active",
  "experimental" : false,
  "date" : "2022-10-28",
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
  "description" : "The PDQm Patient Demographics Consumer Actor (client) requirements CapabililtyStatement expresses the requirements that can be utilized while being compliant. This capability statement implements the Patient Search Option.\n\n- Query against the FHIR endpoint to the Patient Resource endpoint\n- Using FHIR R4\n- MAY request json or xml encoding\n- SHOULD use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)\n- [Search Parameters that MAY be used](ITI-78.html#23784121-search-parameters)\n  - _id\n  - active\n  - family\n  - given\n  - identifier\n  - telecom\n  - birthdate\n  - address\n  - gender\n  - mothersMaidenName",
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
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["application/fhir+xml", "application/fhir+json"],
  "rest" : [
    {
      "mode" : "client",
      "documentation" : "PDQm Patient Demographics Consumer provides capability to discover Patient Identities by demographics and identities.",
      "security" : {
        "description" : "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
      },
      "resource" : [
        {
          "type" : "Patient",
          "documentation" : "Mobile Patient Demographics Query [ITI-78]",
          "interaction" : [
            {
              "code" : "read"
            },
            {
              "code" : "search-type"
            }
          ],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "_lastUpdated",
              "type" : "date",
              "documentation" : "When the resource version last changed"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "_id",
              "type" : "token",
              "documentation" : "Logical id of this artifact"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "active",
              "type" : "token",
              "documentation" : "Whether the patient record is active"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "family",
              "type" : "string",
              "documentation" : "A portion of the family name of the patient"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "given",
              "type" : "string",
              "documentation" : "A portion of the given name of the patient"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "identifier",
              "type" : "token",
              "documentation" : "A patient identifier"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "telecom",
              "type" : "token",
              "documentation" : "The value in any kind of telecom details of the patient"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "birthdate",
              "type" : "date",
              "documentation" : "The patient's date of birth"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "address",
              "type" : "string",
              "documentation" : "A server defined search that MAY match any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "address-city",
              "type" : "string",
              "documentation" : "A city specified in an address"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "address-country",
              "type" : "string",
              "documentation" : "A country specified in an address"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "address-postalcode",
              "type" : "string",
              "documentation" : "A postalCode specified in an address"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "address-state",
              "type" : "string",
              "documentation" : "A state specified in an address"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "gender",
              "type" : "token",
              "documentation" : "Gender of the patient"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "mothersMaidenName",
              "definition" : "http://hl7.org/fhir/SearchParameter/patient-extensions-Patient-mothersMaidenName|5.2.0",
              "type" : "string",
              "documentation" : "Mother's maiden (unmarried) name, commonly collected to help verify patient identity."
            }
          ]
        }
      ],
      "interaction" : [
        {
          "code" : "search-system"
        }
      ]
    }
  ]
}

```
