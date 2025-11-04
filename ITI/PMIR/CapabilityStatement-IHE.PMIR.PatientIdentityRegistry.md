# IHE PMIR Patient Identity Registry - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE PMIR Patient Identity Registry**

## CapabilityStatement: IHE PMIR Patient Identity Registry 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PMIR/CapabilityStatement/IHE.PMIR.PatientIdentityRegistry | *Version*:1.6.0 |
| Active as of 2022-10-27 | *Computable Name*:IHE_PMIR_PatientIdentityRegistry |

 
CapabilityStatement for the Patient Identity Registry Actor in the IHE IT Infrastructure Technical Framework Supplement[IHE PMIR](index.md). 

 [Raw OpenAPI-Swagger Definition file](IHE.PMIR.PatientIdentityRegistry.openapi.json) | [Download](IHE.PMIR.PatientIdentityRegistry.openapi.json) 

## IHE PMIR Patient Identity Registry

* Implementation Guide Version: 1.6.0 
* FHIR Version: 4.0.1 
* Supported Formats: `application/fhir+xml`, `application/fhir+json`
* Published on: 2022-10-27 
* Published by: IHE IT Infrastructure Technical Committee 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

## FHIR RESTful Capabilities

### Mode: server

PMIR Patient Identity Registry provides capability to manage Master Patient Identity.

**Security**

> 

Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or SMART-on-FHIR


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

| | | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [Subscription](#Subscription1-1) | Supported Profiles  [IHE Patient Master Identity Registry Subscription request](StructureDefinition-IHE.PMIR.Subscription.Request.md) | y |  | y | y | y |  |  |  |  |
| [Patient](#Patient1-2) |   | y | y |  |  |  | _id, active, address-city, address-country, address-postalcode, address-state, birthdate, family, gender, given, identifier, telecom, _lastUpdated, mothersMaidenName |  |  | `$$ihe-pix` |

-------

#### Resource Conformance: supported Subscription

Core FHIR Resource

[Subscription](http://hl7.org/fhir/R4/subscription.html)

Reference Policy

Interaction summary

* Supports `create`, `read`, `update`, `delete`.

Supported Profiles
[IHE Patient Master Identity Registry Subscription request](StructureDefinition-IHE.PMIR.Subscription.Request.md)

Documentation
> 

For Subscribe to Patient Updates [ITI-94]


#### Resource Conformance: supported Patient

Core FHIR Resource

[Patient](http://hl7.org/fhir/R4/patient.html)

Reference Policy

Interaction summary

* Supports `read`, `search-type`.

Documentation
> 

For Mobile Patient Identifier Cross-reference Query [ITI-83] and Mobile Patient Demographics Query [ITI-78]


Search Parameters


 

Extended Operations


## FHIR Messaging Capabilities

### Messaging Capability 1

#### Supported Message(s)

| | |
| :--- | :--- |
| sender | [PMIR Mobile Patient Identity Feed [ITI-93] MessageDefinition](MessageDefinition-IHE.PMIR.MessageDefinition.md) |

Documentation
> 

For Mobile Patient Identity Feed [ITI-93]


### Messaging Capability 2

#### Supported Message(s)

| | |
| :--- | :--- |
| receiver | [PMIR Mobile Patient Identity Feed [ITI-93] MessageDefinition](MessageDefinition-IHE.PMIR.MessageDefinition.md) |

Documentation
> 

For Mobile Patient Identity Feed [ITI-93]




## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.PMIR.PatientIdentityRegistry",
  "url" : "https://profiles.ihe.net/ITI/PMIR/CapabilityStatement/IHE.PMIR.PatientIdentityRegistry",
  "version" : "1.6.0",
  "name" : "IHE_PMIR_PatientIdentityRegistry",
  "title" : "IHE PMIR Patient Identity Registry",
  "status" : "active",
  "experimental" : false,
  "date" : "2022-10-27",
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
  "description" : "CapabilityStatement for the Patient Identity Registry Actor in the IHE IT Infrastructure Technical Framework Supplement [IHE PMIR](index.html).",
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
      "documentation" : "PMIR Patient Identity Registry provides capability to manage Master Patient Identity.",
      "security" : {
        "description" : "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or SMART-on-FHIR"
      },
      "resource" : [
        {
          "type" : "Subscription",
          "supportedProfile" : [
            "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Subscription.Request"
          ],
          "documentation" : "For Subscribe to Patient Updates [ITI-94]",
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "read"
            },
            {
              "code" : "update"
            },
            {
              "code" : "delete"
            }
          ]
        },
        {
          "type" : "Patient",
          "documentation" : "For Mobile Patient Identifier Cross-reference Query [ITI-83]\nand Mobile Patient Demographics Query [ITI-78]",
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
              "name" : "address-city",
              "type" : "string",
              "documentation" : "A city specified in an address"
            },
            {
              "name" : "address-country",
              "type" : "string",
              "documentation" : "A country specified in an address"
            },
            {
              "name" : "address-postalcode",
              "type" : "string",
              "documentation" : "A postalCode specified in an address"
            },
            {
              "name" : "address-state",
              "type" : "string",
              "documentation" : "A state specified in an address"
            },
            {
              "name" : "birthdate",
              "type" : "date",
              "documentation" : "The patient's date of birth"
            },
            {
              "name" : "family",
              "type" : "string",
              "documentation" : "A portion of the family name of the patient"
            },
            {
              "name" : "gender",
              "type" : "token",
              "documentation" : "Gender of the patient"
            },
            {
              "name" : "given",
              "type" : "string",
              "documentation" : "A portion of the given name of the patient"
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
              "name" : "_lastUpdated",
              "type" : "date",
              "documentation" : "When the resource version last changed"
            },
            {
              "name" : "mothersMaidenName",
              "definition" : "http://hl7.org/fhir/SearchParameter/patient-extensions-Patient-mothersMaidenName|5.2.0",
              "type" : "string",
              "documentation" : "Mother's maiden (unmarried) name, commonly collected to help verify patient identity."
            }
          ],
          "operation" : [
            {
              "name" : "$ihe-pix",
              "definition" : "https://profiles.ihe.net/ITI/PIXm/OperationDefinition/IHE.PIXm.pix"
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
  ],
  "messaging" : [
    {
      "documentation" : "For Mobile Patient Identity Feed [ITI-93]",
      "supportedMessage" : [
        {
          "mode" : "sender",
          "definition" : "https://profiles.ihe.net/ITI/PMIR/MessageDefinition/IHE.PMIR.MessageDefinition"
        }
      ]
    },
    {
      "documentation" : "For Mobile Patient Identity Feed [ITI-93]",
      "supportedMessage" : [
        {
          "mode" : "receiver",
          "definition" : "https://profiles.ihe.net/ITI/PMIR/MessageDefinition/IHE.PMIR.MessageDefinition"
        }
      ]
    }
  ]
}

```
