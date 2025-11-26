# PDQm Patient Demographics Consumer Actor Implementing Match Operation Option - Patient Demographics Query for Mobile (PDQm) v3.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PDQm Patient Demographics Consumer Actor Implementing Match Operation Option**

## CapabilityStatement: PDQm Patient Demographics Consumer Actor Implementing Match Operation Option 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PDQm/CapabilityStatement/IHE.PDQm.PatientDemographicsConsumerMatch | *Version*:3.2.1 |
| Active as of 2023-09-22 | *Computable Name*:IHE_PDQM_PATIENT_DEMOGRAPHICS_CONSUMER_MATCH |

 
The PDQm Patient Demographics Consumer Actor (client) requirements CapabililtyStatement expresses the requirements that can be utilized while being compliant. This capability statement implements the Match Operation Option. 
* Invoke the $match operation on a FHIR endpoint
* Using FHIR R4
* Input and output parameters conform to the PDQm Profiles
* MAY request json or xml encoding
* SHOULD use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)
 

 [Raw OpenAPI-Swagger Definition file](IHE.PDQm.PatientDemographicsConsumerMatch.openapi.json) | [Download](IHE.PDQm.PatientDemographicsConsumerMatch.openapi.json) 

## IHE PDQm Patient Demographics Consumer Implementing Match Operation Option

* Implementation Guide Version: 3.2.1 
* FHIR Version: 4.0.1 
* Supported Formats: `application/fhir+xml`, `application/fhir+json`
* Published on: 2023-09-22 
* Published by: IHE IT Infrastructure Technical Committee 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

## FHIR RESTful Capabilities

### Mode: client

PDQm Patient Demographics Consumer provides capability to discover Patient Identities by invoking the ITI-119 $match operation.

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
| [Patient](#Patient1-1) | Supported Profiles  [PDQm Patient Profile for $match Input](StructureDefinition-IHE.PDQm.MatchInputPatient.md)  [PDQm Patient Profile](StructureDefinition-IHE.PDQm.Patient.md) |  |  |  |  |  |  |  | `$match` |

-------

#### Resource Conformance: supported Patient

Core FHIR Resource

[Patient](http://hl7.org/fhir/R4/patient.html)

Reference Policy

Interaction summary

Supported Profiles
[PDQm Patient Profile for $match Input](StructureDefinition-IHE.PDQm.MatchInputPatient.md)
[PDQm Patient Profile](StructureDefinition-IHE.PDQm.Patient.md)

Documentation
> 

Patient Demographics Match [ITI-119]


Extended Operations




## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.PDQm.PatientDemographicsConsumerMatch",
  "url" : "https://profiles.ihe.net/ITI/PDQm/CapabilityStatement/IHE.PDQm.PatientDemographicsConsumerMatch",
  "version" : "3.2.1",
  "name" : "IHE_PDQM_PATIENT_DEMOGRAPHICS_CONSUMER_MATCH",
  "title" : "IHE PDQm Patient Demographics Consumer Implementing Match Operation Option",
  "status" : "active",
  "experimental" : false,
  "date" : "2023-09-22",
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
  "description" : "The PDQm Patient Demographics Consumer Actor (client) requirements CapabililtyStatement expresses the requirements that can be utilized while being compliant. This capability statement implements the Match Operation Option.\n\n- Invoke the $match operation on a FHIR endpoint\n- Using FHIR R4\n- Input and output parameters conform to the PDQm Profiles\n- MAY request json or xml encoding\n- SHOULD use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)",
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
      "documentation" : "PDQm Patient Demographics Consumer provides capability to discover Patient Identities by invoking the ITI-119 $match operation.",
      "security" : {
        "description" : "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
      },
      "resource" : [
        {
          "type" : "Patient",
          "supportedProfile" : [
            "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.MatchInputPatient",
            "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Patient"
          ],
          "documentation" : "Patient Demographics Match [ITI-119]",
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
      ]
    }
  ]
}

```
