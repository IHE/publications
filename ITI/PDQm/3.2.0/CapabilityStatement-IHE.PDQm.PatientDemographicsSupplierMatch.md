# PDQm Patient Demographics Supplier Actor Implementing Match Operation Option - Patient Demographics Query for Mobile (PDQm) v3.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PDQm Patient Demographics Supplier Actor Implementing Match Operation Option**

## CapabilityStatement: PDQm Patient Demographics Supplier Actor Implementing Match Operation Option 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PDQm/CapabilityStatement/IHE.PDQm.PatientDemographicsSupplierMatch | *Version*:3.2.0 |
| Active as of 2023-09-25 | *Computable Name*:IHE_PDQM_PATIENT_DEMOGRAPHICS_SUPPLIER_Match |

 
The PDQm Patient Demographics Supplier Actor (server) requirements CapabililtyStatement expresses the requirements that SHALL be provided. This capability statement implements the Match Operation Option. 
* Query against the FHIR endpoint to the Patient Resource endpoint
* Using FHIR R4
* SHALL support both json or xml encoding
* SHOULD use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)
* [Search Parameters that SHALL be supported](ITI-78.md#23784121-search-parameters) 
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
 
* SHALL support the `:exact` modifier on search parameters of type string
* SHALL support the PDQm $match operation
* SHALL return Patient Resources conforming to the PDQm Patient Profile
 

 [Raw OpenAPI-Swagger Definition file](IHE.PDQm.PatientDemographicsSupplierMatch.openapi.json) | [Download](IHE.PDQm.PatientDemographicsSupplierMatch.openapi.json) 

## IHE PDQm Patient Demographics Supplier Implementing Match Operation Option

* Implementation Guide Version: 3.2.0 
* FHIR Version: 4.0.1 
* Supported Formats: `application/fhir+xml`, `application/fhir+json`
* Published on: 2023-09-25 
* Published by: IHE IT Infrastructure Technical Committee 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

## FHIR RESTful Capabilities

### Mode: server

PDQm Patient Demographics Supplier provides capability to discover Patient Identities by demographics and identities.

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
| [Patient](#Patient1-1) | Supported Profiles  [PDQm Patient Profile](StructureDefinition-IHE.PDQm.Patient.md) | y | y |  |  | _lastUpdated, _id, active, family, family:exact, given, given:exact, identifier, telecom, birthdate, address, address:exact, address-city, address-city:exact, address-country, address-country:exact, address-postalcode, address-postalcode:exact, address-state, address-state:exact, gender, mothersMaidenName, mothersMaidenName:exact |  |  | `$match` |

-------

#### Resource Conformance: supported Patient

Core FHIR Resource

[Patient](http://hl7.org/fhir/R4/patient.html)

Reference Policy

Interaction summary

* Supports `read`, `search-type`.

Supported Profiles
[PDQm Patient Profile](StructureDefinition-IHE.PDQm.Patient.md)

Documentation
> 

Mobile Patient Demographics Query [ITI-78] and Patient Demographics Match [ITI-119]


Search Parameters


 

Extended Operations




## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.PDQm.PatientDemographicsSupplierMatch",
  "url" : "https://profiles.ihe.net/ITI/PDQm/CapabilityStatement/IHE.PDQm.PatientDemographicsSupplierMatch",
  "version" : "3.2.0",
  "name" : "IHE_PDQM_PATIENT_DEMOGRAPHICS_SUPPLIER_Match",
  "title" : "IHE PDQm Patient Demographics Supplier Implementing Match Operation Option",
  "status" : "active",
  "experimental" : false,
  "date" : "2023-09-25",
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
  "description" : "The PDQm Patient Demographics Supplier Actor (server) requirements CapabililtyStatement expresses the requirements that SHALL be provided. This capability statement implements the Match Operation Option.\n\n- Query against the FHIR endpoint to the Patient Resource endpoint\n- Using FHIR R4\n- SHALL support both json or xml encoding\n- SHOULD use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)\n- [Search Parameters that SHALL be supported](ITI-78.html#23784121-search-parameters)\n  - _id\n  - active\n  - family\n  - given\n  - identifier\n  - telecom\n  - birthdate\n  - address\n  - gender\n  - mothersMaidenName\n- SHALL support the `:exact` modifier on search parameters of type string\n- SHALL support the PDQm $match operation\n- SHALL return Patient Resources conforming to the PDQm Patient Profile",
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
      "mode" : "server",
      "documentation" : "PDQm Patient Demographics Supplier provides capability to discover Patient Identities by demographics and identities.",
      "security" : {
        "description" : "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
      },
      "resource" : [
        {
          "type" : "Patient",
          "supportedProfile" : [
            "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Patient"
          ],
          "documentation" : "Mobile Patient Demographics Query [ITI-78] and Patient Demographics Match [ITI-119]",
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
              "name" : "_lastUpdated",
              "type" : "date",
              "documentation" : "When the resource version last changed"
            },
            {
              "name" : "_id",
              "type" : "token",
              "documentation" : "Logical id of this artifact"
            },
            {
              "name" : "active",
              "type" : "token",
              "documentation" : "Whether the patient record is active"
            },
            {
              "name" : "family",
              "type" : "string",
              "documentation" : "A portion of the family name of the patient"
            },
            {
              "name" : "family:exact",
              "type" : "string",
              "documentation" : "A portion of the family name of the patient, modified to use exact string matching"
            },
            {
              "name" : "given",
              "type" : "string",
              "documentation" : "A portion of the given name of the patient"
            },
            {
              "name" : "given:exact",
              "type" : "string",
              "documentation" : "A portion of the given name of the patient, modified to use exact string matching"
            },
            {
              "name" : "identifier",
              "type" : "token",
              "documentation" : "A patient identifier"
            },
            {
              "name" : "telecom",
              "type" : "token",
              "documentation" : "The value in any kind of telecom details of the patient"
            },
            {
              "name" : "birthdate",
              "type" : "date",
              "documentation" : "The patient's date of birth"
            },
            {
              "name" : "address",
              "type" : "string",
              "documentation" : "A server defined search that MAY match any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text"
            },
            {
              "name" : "address:exact",
              "type" : "string",
              "documentation" : "A server defined search that MAY match any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text, modified to use exact string matching"
            },
            {
              "name" : "address-city",
              "type" : "string",
              "documentation" : "A city specified in an address"
            },
            {
              "name" : "address-city:exact",
              "type" : "string",
              "documentation" : "A city specified in an address, modified to use exact string matching"
            },
            {
              "name" : "address-country",
              "type" : "string",
              "documentation" : "A country specified in an address"
            },
            {
              "name" : "address-country:exact",
              "type" : "string",
              "documentation" : "A country specified in an address, modified to use exact string matching"
            },
            {
              "name" : "address-postalcode",
              "type" : "string",
              "documentation" : "A postalCode specified in an address"
            },
            {
              "name" : "address-postalcode:exact",
              "type" : "string",
              "documentation" : "A postalCode specified in an address, modified to use exact string matching"
            },
            {
              "name" : "address-state",
              "type" : "string",
              "documentation" : "A state specified in an address"
            },
            {
              "name" : "address-state:exact",
              "type" : "string",
              "documentation" : "A state specified in an address, modified to use exact matching"
            },
            {
              "name" : "gender",
              "type" : "token",
              "documentation" : "Gender of the patient"
            },
            {
              "name" : "mothersMaidenName",
              "definition" : "http://hl7.org/fhir/SearchParameter/patient-extensions-Patient-mothersMaidenName|5.2.0",
              "type" : "string",
              "documentation" : "Mother's maiden (unmarried) name, commonly collected to help verify patient identity."
            },
            {
              "name" : "mothersMaidenName:exact",
              "definition" : "http://hl7.org/fhir/SearchParameter/patient-extensions-Patient-mothersMaidenName|5.2.0",
              "type" : "string",
              "documentation" : "Mother's maiden (unmarried) name, commonly collected to help verify patient identity, modified to use exact string matching."
            }
          ],
          "operation" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "match",
              "definition" : "https://profiles.ihe.net/ITI/PDQm/OperationDefinition/PDQmMatch",
              "documentation" : "Implementation SHALL conform to [ITI-119](ITI-119.html)"
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
