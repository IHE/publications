# IHE BALP Audit Consumer - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE BALP Audit Consumer**

## CapabilityStatement: IHE BALP Audit Consumer 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/BALP/CapabilityStatement/IHE.BALP.AuditConsumer | *Version*:1.1.4 |
| Active as of 2022-10-28 | *Computable Name*:IHE_BALP_AuditConsumer |

 
CapabilityStatement for[Audit Consumer](volume-1.md#152112-audit-consumer)Actor in[BALP](index.md). 
This CapabilityStatement replicates the requirements that would come from the ATNA**Audit Consumer* actor supporting **ATNA Retrieve Audit Message Option**. 

 [Raw OpenAPI-Swagger Definition file](IHE.BALP.AuditConsumer.openapi.json) | [Download](IHE.BALP.AuditConsumer.openapi.json) 

## IHE BALP Audit Consumer

* Implementation Guide Version: 1.1.4 
* FHIR Version: 4.0.1 
* Supported Formats: `application/fhir+xml`, `application/fhir+json`
* Published on: 2022-10-28 
* Published by: IHE IT Infrastructure Technical Committee 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

## FHIR RESTful Capabilities

### Mode: client

BALP Audit Consumer will query for AuditEvent resources.

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
| [AuditEvent](#AuditEvent1-1) | Supported Profiles  [Basic AuditEvent for a successful Create not related to a Patient](StructureDefinition-IHE.BasicAudit.Create.md)  [Basic AuditEvent for a successful Read](StructureDefinition-IHE.BasicAudit.Read.md)  [Basic AuditEvent for a successful Update](StructureDefinition-IHE.BasicAudit.Update.md)  [Basic AuditEvent for a successful Delete](StructureDefinition-IHE.BasicAudit.Delete.md)  [Basic AuditEvent for a successful Query](StructureDefinition-IHE.BasicAudit.Query.md)  [Basic AuditEvent for a successful Create with known Patient subject](StructureDefinition-IHE.BasicAudit.PatientCreate.md)  [Basic AuditEvent for a successful Read with a Patient](StructureDefinition-IHE.BasicAudit.PatientRead.md)  [Basic AuditEvent for a successful Update with a Patient subject](StructureDefinition-IHE.BasicAudit.PatientUpdate.md)  [Basic AuditEvent for a successful Delete with Patient](StructureDefinition-IHE.BasicAudit.PatientDelete.md)  [Basic AuditEvent for a successful Query with Patient](StructureDefinition-IHE.BasicAudit.PatientQuery.md)  [IHE IUA ITI-71 AuditEvent for a successful Get Access Token](StructureDefinition-IHE.IUA.71.md)  [Basic AuditEvent pattern for when an activity was authorized by an IUA access token](StructureDefinition-IHE.BasicAudit.OAUTHaccessTokenUse.Comprehensive.md)  [Basic AuditEvent pattern for oAuth Opaque](StructureDefinition-IHE.BasicAudit.OAUTHaccessTokenUse.Minimal.md)  [Basic AuditEvent pattern for oAuth Opaque](StructureDefinition-IHE.BasicAudit.OAUTHaccessTokenUse.Opaque.md)  [Basic AuditEvent pattern for when an activity was authorized by an SAML access token Comprehensive](StructureDefinition-IHE.BasicAudit.SAMLaccessTokenUse.Comprehensive.md)  [Basic AuditEvent pattern for when an activity was authorized by an SAML access token Minimal](StructureDefinition-IHE.BasicAudit.SAMLaccessTokenUse.Minimal.md)  [Basic AuditEvent pattern for when an Authorization permit is decided](StructureDefinition-IHE.BasicAudit.AuthZconsent.md)  [Audit Event for a Privacy Disclosure as recorded by a Recipient](StructureDefinition-IHE.BasicAudit.PrivacyDisclosure.Recipient.md)  [Audit Event for Privacy Disclosure at Source](StructureDefinition-IHE.BasicAudit.PrivacyDisclosure.Source.md) | y | y |  |  | _id, _lastUpdated, date, address, agent.identifier, patient.identifier, entity.identifier, entity-type, entity-role, source.identifier, type, subtype, outcome |  |  |  |

-------

#### Resource Conformance: supported AuditEvent

Core FHIR Resource

[AuditEvent](http://hl7.org/fhir/R4/auditevent.html)

Reference Policy

Interaction summary

* Supports `search-type`, `read`.

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

For Retrieve ATNA Audit Event [ITI-81]. Note that all BALP Content profiles are listed here.


Search Parameters


 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.BALP.AuditConsumer",
  "url" : "https://profiles.ihe.net/ITI/BALP/CapabilityStatement/IHE.BALP.AuditConsumer",
  "version" : "1.1.4",
  "name" : "IHE_BALP_AuditConsumer",
  "title" : "IHE BALP Audit Consumer",
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
  "description" : "CapabilityStatement for [Audit Consumer](volume-1.html#152112-audit-consumer) Actor in [BALP](index.html).\n\nThis CapabilityStatement replicates the requirements that would come from the ATNA **Audit Consumer* actor supporting **ATNA Retrieve Audit Message Option**.",
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
      "documentation" : "BALP Audit Consumer will query for AuditEvent resources.",
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
          "documentation" : "For Retrieve ATNA Audit Event [ITI-81]. Note that all BALP Content profiles are listed here.",
          "interaction" : [
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            }
          ],
          "searchParam" : [
            {
              "name" : "_id",
              "type" : "token"
            },
            {
              "name" : "_lastUpdated",
              "type" : "date"
            },
            {
              "name" : "date",
              "type" : "date"
            },
            {
              "name" : "address",
              "type" : "string"
            },
            {
              "name" : "agent.identifier",
              "type" : "token"
            },
            {
              "name" : "patient.identifier",
              "type" : "token"
            },
            {
              "name" : "entity.identifier",
              "type" : "token"
            },
            {
              "name" : "entity-type",
              "type" : "token"
            },
            {
              "name" : "entity-role",
              "type" : "token"
            },
            {
              "name" : "source.identifier",
              "type" : "token"
            },
            {
              "name" : "type",
              "type" : "token"
            },
            {
              "name" : "subtype",
              "type" : "token"
            },
            {
              "name" : "outcome",
              "type" : "token"
            }
          ]
        }
      ]
    }
  ]
}

```
