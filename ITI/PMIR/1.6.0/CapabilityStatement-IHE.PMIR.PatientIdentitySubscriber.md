# IHE PMIR Patient Identity Subscriber - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE PMIR Patient Identity Subscriber**

## CapabilityStatement: IHE PMIR Patient Identity Subscriber 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PMIR/CapabilityStatement/IHE.PMIR.PatientIdentitySubscriber | *Version*:1.6.0 |
| Active as of 2022-10-27 | *Computable Name*:IHE_PMIR_PatientIdentitySubscriber |

 
CapabilityStatement for Patient Identity Subscriber Actor in the IHE IT Infrastructure Technical Framework Supplement[IHE PMIR](index.md). 

 [Raw OpenAPI-Swagger Definition file](IHE.PMIR.PatientIdentitySubscriber.openapi.json) | [Download](IHE.PMIR.PatientIdentitySubscriber.openapi.json) 

## IHE PMIR Patient Identity Subscriber

* Implementation Guide Version: 1.6.0 
* FHIR Version: 4.0.1 
* Supported Formats: `application/fhir+xml`, `application/fhir+json`
* Published on: 2022-10-27 
* Published by: IHE IT Infrastructure Technical Committee 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

## FHIR RESTful Capabilities

### Mode: client

PMIR Patient Identity Subscriber will create, update, or deleate Subscription resources.

**Security**

> 

Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or SMART-on-FHIR


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




## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.PMIR.PatientIdentitySubscriber",
  "url" : "https://profiles.ihe.net/ITI/PMIR/CapabilityStatement/IHE.PMIR.PatientIdentitySubscriber",
  "version" : "1.6.0",
  "name" : "IHE_PMIR_PatientIdentitySubscriber",
  "title" : "IHE PMIR Patient Identity Subscriber",
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
  "description" : "CapabilityStatement for Patient Identity Subscriber Actor in the IHE IT Infrastructure Technical Framework Supplement [IHE PMIR](index.html).",
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
      "documentation" : "PMIR Patient Identity Subscriber will create, update, or deleate Subscription resources.",
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
        }
      ]
    }
  ]
}

```
