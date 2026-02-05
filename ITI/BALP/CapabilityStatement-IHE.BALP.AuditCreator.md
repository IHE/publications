# IHE BALP Audit Creator - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE BALP Audit Creator**

## CapabilityStatement: IHE BALP Audit Creator 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/BALP/CapabilityStatement/IHE.BALP.AuditCreator | *Version*:1.1.4 |
| Active as of 2022-10-28 | *Computable Name*:IHE_BALP_AuditCreator |

 
CapabilityStatement for[Audit Creator](volume-1.md#152111-audit-creator)Actor in[BALP](index.md). 
This Actor is derived off of the**ATNA Secure Application**or**Secure Node**actor with**ATNA ATX:FHIR Feed Option**using ITI-20. 

 [Raw OpenAPI-Swagger Definition file](IHE.BALP.AuditCreator.openapi.json) | [Download](IHE.BALP.AuditCreator.openapi.json) 

## IHE BALP Audit Creator

* Implementation Guide Version: 1.1.4 
* FHIR Version: 4.0.1 
* Supported Formats: `application/fhir+xml`, `application/fhir+json`
* Published on: 2022-10-28 
* Published by: IHE IT Infrastructure Technical Committee 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

## FHIR RESTful Capabilities

### Mode: client

BALP **Audit Creator** will CREATE AuditEvent resources, and send them to the **Audit Record Repository** with **ATNA ATX:FHIR Feed Option** using ITI-20 FHIR support.

**Security**

> 

[ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html) required, encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or SMART-on-FHIR


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
| [AuditEvent](#AuditEvent1-1) | Supported Profiles  [Basic AuditEvent for a successful Create not related to a Patient](StructureDefinition-IHE.BasicAudit.Create.md)  [Basic AuditEvent for a successful Read](StructureDefinition-IHE.BasicAudit.Read.md)  [Basic AuditEvent for a successful Update](StructureDefinition-IHE.BasicAudit.Update.md)  [Basic AuditEvent for a successful Delete](StructureDefinition-IHE.BasicAudit.Delete.md)  [Basic AuditEvent for a successful Query](StructureDefinition-IHE.BasicAudit.Query.md)  [Basic AuditEvent for a successful Create with known Patient subject](StructureDefinition-IHE.BasicAudit.PatientCreate.md)  [Basic AuditEvent for a successful Read with a Patient](StructureDefinition-IHE.BasicAudit.PatientRead.md)  [Basic AuditEvent for a successful Update with a Patient subject](StructureDefinition-IHE.BasicAudit.PatientUpdate.md)  [Basic AuditEvent for a successful Delete with Patient](StructureDefinition-IHE.BasicAudit.PatientDelete.md)  [Basic AuditEvent for a successful Query with Patient](StructureDefinition-IHE.BasicAudit.PatientQuery.md)  [IHE IUA ITI-71 AuditEvent for a successful Get Access Token](StructureDefinition-IHE.IUA.71.md)  [Basic AuditEvent pattern for when an activity was authorized by an IUA access token](StructureDefinition-IHE.BasicAudit.OAUTHaccessTokenUse.Comprehensive.md)  [Basic AuditEvent pattern for oAuth Opaque](StructureDefinition-IHE.BasicAudit.OAUTHaccessTokenUse.Minimal.md)  [Basic AuditEvent pattern for oAuth Opaque](StructureDefinition-IHE.BasicAudit.OAUTHaccessTokenUse.Opaque.md)  [Basic AuditEvent pattern for when an activity was authorized by an SAML access token Comprehensive](StructureDefinition-IHE.BasicAudit.SAMLaccessTokenUse.Comprehensive.md)  [Basic AuditEvent pattern for when an activity was authorized by an SAML access token Minimal](StructureDefinition-IHE.BasicAudit.SAMLaccessTokenUse.Minimal.md)  [Basic AuditEvent pattern for when an Authorization permit is decided](StructureDefinition-IHE.BasicAudit.AuthZconsent.md)  [Audit Event for a Privacy Disclosure as recorded by a Recipient](StructureDefinition-IHE.BasicAudit.PrivacyDisclosure.Recipient.md)  [Audit Event for Privacy Disclosure at Source](StructureDefinition-IHE.BasicAudit.PrivacyDisclosure.Source.md) |  |  |  | y |  |  |  |  |

-------

#### Resource Conformance: supported AuditEvent

Core FHIR Resource

[AuditEvent](http://hl7.org/fhir/R4/auditevent.html)

Reference Policy

Interaction summary

* Supports `create`.

Supported Profiles
[Basic AuditEvent for a successful Create not related to a Patient](StructureDefinition-IHE.BasicAudit.Create.md)
[Basic AuditEvent for a successful Read](StructureDefinition-IHE.BasicAudit.Read.md)
[Basic AuditEvent for a successful Update](StructureDefinition-IHE.BasicAudit.Update.md)
[Basic AuditEvent for a successful Delete](StructureDefinition-IHE.BasicAudit.Delete.md)
[Basic AuditEvent for a successful Query](StructureDefinition-IHE.BasicAudit.Query.md)
[Basic AuditEvent for a successful Create with known Patient subject](StructureDefinition-IHE.BasicAudit.PatientCreate.md)
[Basic AuditEvent for a successful Read with a Patient](StructureDefinition-IHE.BasicAudit.PatientRead.md)
[Basic AuditEvent for a successful Update with a Patient subject](StructureDefinition-IHE.BasicAudit.PatientUpdate.md)
[Basic AuditEvent for a successful Delete with Patient](StructureDefinition-IHE.BasicAudit.PatientDelete.md)
[Basic AuditEvent for a successful Query with Patient](StructureDefinition-IHE.BasicAudit.PatientQuery.md)
[IHE IUA ITI-71 AuditEvent for a successful Get Access Token](StructureDefinition-IHE.IUA.71.md)
[Basic AuditEvent pattern for when an activity was authorized by an IUA access token](StructureDefinition-IHE.BasicAudit.OAUTHaccessTokenUse.Comprehensive.md)
[Basic AuditEvent pattern for oAuth Opaque](StructureDefinition-IHE.BasicAudit.OAUTHaccessTokenUse.Minimal.md)
[Basic AuditEvent pattern for oAuth Opaque](StructureDefinition-IHE.BasicAudit.OAUTHaccessTokenUse.Opaque.md)
[Basic AuditEvent pattern for when an activity was authorized by an SAML access token Comprehensive](StructureDefinition-IHE.BasicAudit.SAMLaccessTokenUse.Comprehensive.md)
[Basic AuditEvent pattern for when an activity was authorized by an SAML access token Minimal](StructureDefinition-IHE.BasicAudit.SAMLaccessTokenUse.Minimal.md)
[Basic AuditEvent pattern for when an Authorization permit is decided](StructureDefinition-IHE.BasicAudit.AuthZconsent.md)
[Audit Event for a Privacy Disclosure as recorded by a Recipient](StructureDefinition-IHE.BasicAudit.PrivacyDisclosure.Recipient.md)
[Audit Event for Privacy Disclosure at Source](StructureDefinition-IHE.BasicAudit.PrivacyDisclosure.Source.md)

Documentation
> 

For ATNA Record Audit Event [ITI-20] using FHIR. . Note that all BALP Content profiles are listed here.




## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.BALP.AuditCreator",
  "url" : "https://profiles.ihe.net/ITI/BALP/CapabilityStatement/IHE.BALP.AuditCreator",
  "version" : "1.1.4",
  "name" : "IHE_BALP_AuditCreator",
  "title" : "IHE BALP Audit Creator",
  "status" : "active",
  "experimental" : false,
  "date" : "2022-10-28",
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
  "description" : "CapabilityStatement for [Audit Creator](volume-1.html#152111-audit-creator) Actor in [BALP](index.html).\n\nThis Actor is derived off of the **ATNA Secure Application** or **Secure Node** actor with **ATNA ATX:FHIR Feed Option** using ITI-20. ",
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
      "documentation" : "BALP **Audit Creator** will CREATE AuditEvent resources, and send them to the **Audit Record Repository** with **ATNA ATX:FHIR Feed Option** using ITI-20 FHIR support.",
      "security" : {
        "description" : "[ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html) required, encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or SMART-on-FHIR"
      },
      "resource" : [
        {
          "type" : "AuditEvent",
          "supportedProfile" : [
            "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.Create",
            "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.Read",
            "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.Update",
            "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.Delete",
            "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.Query",
            "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PatientCreate",
            "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PatientRead",
            "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PatientUpdate",
            "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PatientDelete",
            "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PatientQuery",
            "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.IUA.71",
            "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.OAUTHaccessTokenUse.Comprehensive",
            "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.OAUTHaccessTokenUse.Minimal",
            "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.OAUTHaccessTokenUse.Opaque",
            "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.SAMLaccessTokenUse.Comprehensive",
            "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.SAMLaccessTokenUse.Minimal",
            "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.AuthZconsent",
            "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PrivacyDisclosure.Recipient",
            "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PrivacyDisclosure.Source"
          ],
          "documentation" : "For ATNA Record Audit Event [ITI-20] using FHIR. . Note that all BALP Content profiles are listed here.",
          "interaction" : [
            {
              "code" : "create"
            }
          ]
        }
      ]
    }
  ]
}

```
