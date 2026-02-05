# IHE ATNA Audit Record Repository supporting BALP Content - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE ATNA Audit Record Repository supporting BALP Content**

## CapabilityStatement: IHE ATNA Audit Record Repository supporting BALP Content 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/BALP/CapabilityStatement/IHE.BALP.ATNA.AuditRecordRepository | *Version*:1.1.4 |
| Active as of 2022-10-28 | *Computable Name*:IHE_BALP_ATNA_AuditRecordRepository |

 
CapabilityStatement for[ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html)Audit Record Repository Actor with the ATNA ATX:FHIR Feed Option and Retrieve Audit Message Option defined in[RESTful-ATNA Supplement](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_RESTful-ATNA.pdf)that also has support for BALP Content. 
This Actor is derived off of the ATNA Audit Record Repository actor that is not yet defined fully in an IG. This CapabilityStatement does not represent a formal Actor, but rather a system that has grouped ATNA and BALP. 

 [Raw OpenAPI-Swagger Definition file](IHE.BALP.ATNA.AuditRecordRepository.openapi.json) | [Download](IHE.BALP.ATNA.AuditRecordRepository.openapi.json) 

## IHE ATNA Audit Record Repository supporting BALP Content

* Implementation Guide Version: 1.1.4 
* FHIR Version: 4.0.1 
* Supported Formats: `application/fhir+xml`, `application/fhir+json`
* Published on: 2022-10-28 
* Published by: IHE IT Infrastructure Technical Committee 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

## FHIR RESTful Capabilities

### Mode: server

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
| [AuditEvent](#AuditEvent1-1) | Supported Profiles  [Basic AuditEvent for a successful Create not related to a Patient](StructureDefinition-IHE.BasicAudit.Create.md)  [Basic AuditEvent for a successful Read](StructureDefinition-IHE.BasicAudit.Read.md)  [Basic AuditEvent for a successful Update](StructureDefinition-IHE.BasicAudit.Update.md)  [Basic AuditEvent for a successful Delete](StructureDefinition-IHE.BasicAudit.Delete.md)  [Basic AuditEvent for a successful Query](StructureDefinition-IHE.BasicAudit.Query.md)  [Basic AuditEvent for a successful Create with known Patient subject](StructureDefinition-IHE.BasicAudit.PatientCreate.md)  [Basic AuditEvent for a successful Read with a Patient](StructureDefinition-IHE.BasicAudit.PatientRead.md)  [Basic AuditEvent for a successful Update with a Patient subject](StructureDefinition-IHE.BasicAudit.PatientUpdate.md)  [Basic AuditEvent for a successful Delete with Patient](StructureDefinition-IHE.BasicAudit.PatientDelete.md)  [Basic AuditEvent for a successful Query with Patient](StructureDefinition-IHE.BasicAudit.PatientQuery.md)  [IHE IUA ITI-71 AuditEvent for a successful Get Access Token](StructureDefinition-IHE.IUA.71.md)  [Basic AuditEvent pattern for when an activity was authorized by an IUA access token](StructureDefinition-IHE.BasicAudit.OAUTHaccessTokenUse.Comprehensive.md)  [Basic AuditEvent pattern for oAuth Opaque](StructureDefinition-IHE.BasicAudit.OAUTHaccessTokenUse.Minimal.md)  [Basic AuditEvent pattern for oAuth Opaque](StructureDefinition-IHE.BasicAudit.OAUTHaccessTokenUse.Opaque.md)  [Basic AuditEvent pattern for when an activity was authorized by an SAML access token Comprehensive](StructureDefinition-IHE.BasicAudit.SAMLaccessTokenUse.Comprehensive.md)  [Basic AuditEvent pattern for when an activity was authorized by an SAML access token Minimal](StructureDefinition-IHE.BasicAudit.SAMLaccessTokenUse.Minimal.md)  [Basic AuditEvent pattern for when an Authorization permit is decided](StructureDefinition-IHE.BasicAudit.AuthZconsent.md)  [Audit Event for a Privacy Disclosure as recorded by a Recipient](StructureDefinition-IHE.BasicAudit.PrivacyDisclosure.Recipient.md)  [Audit Event for Privacy Disclosure at Source](StructureDefinition-IHE.BasicAudit.PrivacyDisclosure.Source.md) | y | y |  | y | _id, _lastUpdated, date, address, agent.identifier, patient.identifier, entity.identifier, entity-type, entity-role, source.identifier, type, subtype, outcome |  |  |  |

-------

#### Resource Conformance: supported AuditEvent

Core FHIR Resource

[AuditEvent](http://hl7.org/fhir/R4/auditevent.html)

Reference Policy

Interaction summary

* Supports `search-type`, `read`, `create`.

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

For Retrieve ATNA Audit Event [ITI-81] and the FHIR Record Audit Event [ITI-20]. Note that all BALP Content profiles are listed here.


Search Parameters


 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.BALP.ATNA.AuditRecordRepository",
  "url" : "https://profiles.ihe.net/ITI/BALP/CapabilityStatement/IHE.BALP.ATNA.AuditRecordRepository",
  "version" : "1.1.4",
  "name" : "IHE_BALP_ATNA_AuditRecordRepository",
  "title" : "IHE ATNA Audit Record Repository supporting BALP Content",
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
  "description" : "CapabilityStatement for [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html) Audit Record Repository Actor with the ATNA ATX:FHIR Feed Option and Retrieve Audit Message Option defined in [RESTful-ATNA Supplement](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_RESTful-ATNA.pdf) that also has support for BALP Content.\n\nThis Actor is derived off of the ATNA Audit Record Repository actor that is not yet defined fully in an IG. This CapabilityStatement does not represent a formal Actor, but rather a system that has grouped ATNA and BALP.",
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
          "documentation" : "For Retrieve ATNA Audit Event [ITI-81] and the FHIR Record Audit Event [ITI-20]. Note that all BALP Content profiles are listed here.",
          "interaction" : [
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "create"
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
