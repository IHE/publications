# IHE ITI Patient Identifier Cross-referencing for mobile (PIXm) - Consumer (client) - Patient Identifier Cross-referencing for mobile (PIXm) v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE ITI Patient Identifier Cross-referencing for mobile (PIXm) - Consumer (client)**

## CapabilityStatement: IHE ITI Patient Identifier Cross-referencing for mobile (PIXm) - Consumer (client) 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PIXm/CapabilityStatement/IHE.PIXm.Consumer | *Version*:3.1.0 |
| Active as of 2025-05-30 | *Computable Name*:IHE_PIXm_Consumer |

 
The[Patient Identifier Cross-reference Consumer Actor](volume-1.md#141112-patient-identifier-cross-reference-consumer)CapabililtyStatement expresses the requirements that can be utilized while being compliant. 
* using FHIR R4
* using json or xml encoding
* [ITI-83](ITI-83.md) the $ihe-pix operation
* should use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)
 

 [Raw OpenAPI-Swagger Definition file](IHE.PIXm.Consumer.openapi.json) | [Download](IHE.PIXm.Consumer.openapi.json) 

## IHE ITI Patient Identifier Cross-referencing for mobile (PIXm) - Consumer (client)

* Implementation Guide Version: 3.1.0 
* FHIR Version: 4.0.1 
* Supported Formats: `application/fhir+xml`, `application/fhir+json`
* Published on: 2025-05-30 13:12:36-0600 
* Published by: IHE IT Infrastructure Technical Committee 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

## FHIR RESTful Capabilities

### Mode: client

PIXm client queries for Patient Identity Cross-reference matching a query parameters

**Security**

> 

Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)


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
| [Patient](#Patient1-1) |   |  |  |  |  |  |  |  | `$$ihe-pix` |

-------

#### Resource Conformance: supported Patient

Core FHIR Resource

[Patient](http://hl7.org/fhir/R4/patient.html)

Reference Policy

Interaction summary

Extended Operations




## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.PIXm.Consumer",
  "url" : "https://profiles.ihe.net/ITI/PIXm/CapabilityStatement/IHE.PIXm.Consumer",
  "version" : "3.1.0",
  "name" : "IHE_PIXm_Consumer",
  "title" : "IHE ITI Patient Identifier Cross-referencing for mobile (PIXm) - Consumer (client)",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-05-30T13:12:36-06:00",
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
  "description" : "The [Patient Identifier Cross-reference Consumer Actor](volume-1.html#141112-patient-identifier-cross-reference-consumer) CapabililtyStatement expresses the requirements that can be utilized while being compliant.\n\n- using FHIR R4\n- using json or xml encoding\n- [ITI-83](ITI-83.html) the $ihe-pix operation\n- should use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)",
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
      "documentation" : "PIXm client queries for Patient Identity Cross-reference matching a query parameters",
      "security" : {
        "description" : "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
      },
      "resource" : [
        {
          "type" : "Patient",
          "operation" : [
            {
              "name" : "$ihe-pix",
              "definition" : "https://profiles.ihe.net/ITI/PIXm/OperationDefinition/IHE.PIXm.pix"
            }
          ]
        }
      ]
    }
  ]
}

```
