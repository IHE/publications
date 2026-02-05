# IHE PMIR Patient Identity Consumer - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE PMIR Patient Identity Consumer**

## CapabilityStatement: IHE PMIR Patient Identity Consumer 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PMIR/CapabilityStatement/IHE.PMIR.PatientIdentityConsumer | *Version*:1.6.0 |
| Active as of 2022-10-27 | *Computable Name*:IHE_PMIR_PatientIdentityConsumer |

 
CapabilityStatement for Patient Identity Consumer Actor in the IHE IT Infrastructure Technical Framework Supplement[IHE PMIR](index.md). 

 [Raw OpenAPI-Swagger Definition file](IHE.PMIR.PatientIdentityConsumer.openapi.json) | [Download](IHE.PMIR.PatientIdentityConsumer.openapi.json) 

## IHE PMIR Patient Identity Consumer

* Implementation Guide Version: 1.6.0 
* FHIR Version: 4.0.1 
* Supported Formats: `application/fhir+xml`, `application/fhir+json`
* Published on: 2022-10-27 
* Published by: IHE IT Infrastructure Technical Committee 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

## FHIR Messaging Capabilities

### Messaging Capability

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
  "id" : "IHE.PMIR.PatientIdentityConsumer",
  "url" : "https://profiles.ihe.net/ITI/PMIR/CapabilityStatement/IHE.PMIR.PatientIdentityConsumer",
  "version" : "1.6.0",
  "name" : "IHE_PMIR_PatientIdentityConsumer",
  "title" : "IHE PMIR Patient Identity Consumer",
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
  "description" : "CapabilityStatement for Patient Identity Consumer Actor in the IHE IT Infrastructure Technical Framework Supplement [IHE PMIR](index.html).",
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
  "messaging" : [
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
