# Document Consumer (client) - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Document Consumer (client)**

## CapabilityStatement: Document Consumer (client) 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.DocumentConsumer | *Version*:4.2.3 |
| Active as of 2025-10-31 | *Computable Name*:IHE_MHD_DocumentConsumer |

 
IHE ITI Mobile access to Health Documents (MHD) - Document Consumer (client). 

This is the **Requirements** CapabilityStatement for a [Document Consumer](1331_actors_and_transactions.md#133112-document-consumer). The Document Consumer may declared the UnContained References [Options](1332_actor_options.md). This Actor is allowed to use [Find Document List ITI-66](ITI-66.md), [Find Document References ITI-67](ITI-67.md), and [Retrieve Document ITI-68](ITI-68.md) transactions. The Document Consumer Actor should be robust for unconstrained DocumentReference and List Resources, as the results returned to the Document Consumer from the Document Responder may not follow the conformance constraints.

**Figure: Query Actors Interactions**

 [Raw OpenAPI-Swagger Definition file](IHE.MHD.DocumentConsumer.openapi.json) | [Download](IHE.MHD.DocumentConsumer.openapi.json) 

## Document Consumer (client)

* Implementation Guide Version: 4.2.3 
* FHIR Version: 4.0.1 
* Supported Formats: `application/fhir+xml`, `application/fhir+json`
* Published on: 2025-10-31 11:05:31-0500 
* Published by: IHE IT Infrastructure Technical Committee 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

## FHIR RESTful Capabilities

### Mode: client

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

| | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [DocumentReference](#DocumentReference1-1) | [https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.DocumentReference](StructureDefinition-IHE.MHD.Minimal.DocumentReference.md) | y | y |  |  | _id, _lastupdated, author.given, author.family, category, creation, date, event, facility, format, identifier, patient, patient.identifier, period, related, security-label, setting, status, type |  |  |  |
| [List](#List1-2) | [https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.List](StructureDefinition-IHE.MHD.List.md) | y | y |  |  | _id, _lastupdated, code, date, identifier, patient, patient.identifier, source.given, source.family, status, designationType, sourceId |  |  |  |
| [Binary](#Binary1-3) |   | y |  |  |  |  |  |  |  |

-------

#### Resource Conformance: supported DocumentReference

Base System Profile

[MHD DocumentReference Minimal](StructureDefinition-IHE.MHD.Minimal.DocumentReference.md)

Profile Conformance

**SHALL**

Reference Policy

Interaction summary

* Supports `read`, `search-type`.

Search Parameters


 

#### Resource Conformance: supported List

Base System Profile

[MHD common List with designationType](StructureDefinition-IHE.MHD.List.md)

Profile Conformance

**SHALL**

Reference Policy

Interaction summary

* Supports `read`, `search-type`.

Search Parameters


 

#### Resource Conformance: supported Binary

Core FHIR Resource

[Binary](http://hl7.org/fhir/R4/binary.html)

Reference Policy

Interaction summary

* Supports `read`.



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.MHD.DocumentConsumer",
  "url" : "https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.DocumentConsumer",
  "version" : "4.2.3",
  "name" : "IHE_MHD_DocumentConsumer",
  "title" : "Document Consumer (client)",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-31T11:05:31-05:00",
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
  "description" : "IHE ITI Mobile access to Health Documents (MHD) - Document Consumer (client).",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
          "code" : "001",
          "display" : "World"
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
      "security" : {
        "description" : "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or SMART-on-FHIR"
      },
      "resource" : [
        {
          "type" : "DocumentReference",
          "profile" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.DocumentReference",
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
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
              "type" : "token",
              "documentation" : "Logical id of this artifact"
            },
            {
              "name" : "_lastupdated",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated",
              "type" : "date",
              "documentation" : "When the resource version last changed"
            },
            {
              "name" : "author.given",
              "type" : "string",
              "documentation" : "These parameters, of type string, specify the name parts of the author person, which is associated with the DocumentReference Resource, or in Document Sharing nomenclature, the author of the Document Entry. See ITI TF-2x: Appendix Z.2 for use of the string data type."
            },
            {
              "name" : "author.family",
              "type" : "string",
              "documentation" : "These parameters, of type string, specify the name parts of the author person, which is associated with the DocumentReference Resource, or in Document Sharing nomenclature, the author of the Document Entry. See ITI TF-2x: Appendix Z.2 for use of the string data type."
            },
            {
              "name" : "category",
              "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-category",
              "type" : "token",
              "documentation" : "Categorization of document"
            },
            {
              "name" : "creation",
              "definition" : "https://profiles.ihe.net/ITI/MHD/SearchParameter/DocumentReference-Creation",
              "type" : "date",
              "documentation" : "When this document was created"
            },
            {
              "name" : "date",
              "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-date",
              "type" : "date",
              "documentation" : "When this document reference was created"
            },
            {
              "name" : "event",
              "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-event",
              "type" : "token",
              "documentation" : "Main clinical acts documented"
            },
            {
              "name" : "facility",
              "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-facility",
              "type" : "token",
              "documentation" : "Kind of facility where patient was seen"
            },
            {
              "name" : "format",
              "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-format",
              "type" : "token",
              "documentation" : "Format/content rules for the document"
            },
            {
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token",
              "documentation" : "The identifier for this DocumentReference"
            },
            {
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
              "type" : "reference",
              "documentation" : "Who/what is the subject of the document"
            },
            {
              "name" : "patient.identifier",
              "type" : "token",
              "documentation" : "An Identifier for Who/what is the subject of the document"
            },
            {
              "name" : "period",
              "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-period",
              "type" : "date",
              "documentation" : "Time of service that is being documented"
            },
            {
              "name" : "related",
              "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-related",
              "type" : "reference",
              "documentation" : "Related Resource"
            },
            {
              "name" : "security-label",
              "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-security-label",
              "type" : "token",
              "documentation" : "Document security-tags"
            },
            {
              "name" : "setting",
              "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-setting",
              "type" : "token",
              "documentation" : "Additional details about where the content was created (e.g. clinical specialty)"
            },
            {
              "name" : "status",
              "definition" : "http://hl7.org/fhir/SearchParameter/DocumentReference-status",
              "type" : "token",
              "documentation" : "current | superseded | entered-in-error"
            },
            {
              "name" : "type",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
              "type" : "reference",
              "documentation" : "Kind of document (LOINC if possible)"
            }
          ]
        },
        {
          "type" : "List",
          "profile" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.List",
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
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
              "type" : "token",
              "documentation" : "Logical id of this artifact"
            },
            {
              "name" : "_lastupdated",
              "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated",
              "type" : "date",
              "documentation" : "When the resource version last changed"
            },
            {
              "name" : "code",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-code",
              "type" : "token",
              "documentation" : "This parameter, of type token, specifies the code.coding value supplied in the List Resource. The value of the code element indicates the List of type SubmissionSet or Folder as indicated."
            },
            {
              "name" : "date",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-date",
              "type" : "date",
              "documentation" : "This parameter, of type date, specifies the time when the List was created."
            },
            {
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token",
              "documentation" : "This parameter, of type token, specifies an identifier for this List. The search results represent the results of a search on List.identifier. See ITI TF-2x: Appendix Z.2 for additional constraints on the use of the token search parameter type."
            },
            {
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
              "type" : "reference",
              "documentation" : "This parameter is of type Reference(Patient). The Document Consumer may get this reference through the use of the PDQm or PIXm Profiles, or by some other method. When the patient parameter is used, the Patient reference would need to be accessible to both the Document Consumer and the Document Responder."
            },
            {
              "name" : "patient.identifier",
              "type" : "token",
              "documentation" : "An Identifier for Who/what is the subject of the document"
            },
            {
              "name" : "source.given",
              "type" : "string",
              "documentation" : "These parameters, of type string, specify the name parts of the author person which is associated with the List. See ITI TF-2x: Appendix Z.2 for use of the string data type."
            },
            {
              "name" : "source.family",
              "type" : "string",
              "documentation" : "These parameters, of type string, specify the name parts of the author person which is associated with the List. See ITI TF-2x: Appendix Z.2 for use of the string data type."
            },
            {
              "name" : "status",
              "definition" : "http://hl7.org/fhir/SearchParameter/List-status",
              "type" : "token",
              "documentation" : "This parameter, of type token, specifies the status of the List. If included in the query, the Document Consumer shall populate the code portion of the token with one of the codes in the following Table 3.66.4.1.2.1-1: Values for code for status of List. The system portion of the token shall not be populated."
            },
            {
              "name" : "designationType",
              "definition" : "https://profiles.ihe.net/ITI/MHD/SearchParameter/List-DesignationType",
              "type" : "token",
              "documentation" : "This IHE extension on parameters defined as SearchParameter/List-DesignationType, of type token, specifies the designation type of the List. The value of the designation type element indicates the clinical purpose of the SubmissionSet or Folder. Note that servers that do not support this extended search parameter will ignore it, and thus return more results than expected."
            },
            {
              "name" : "sourceId",
              "definition" : "https://profiles.ihe.net/ITI/MHD/SearchParameter/List-SourceId",
              "type" : "token",
              "documentation" : "This IHE extension on parameters defined as SearchParameter/List-SourceId, of type token, specifies the source (author) value supplied in the List Resource."
            }
          ]
        },
        {
          "type" : "Binary",
          "interaction" : [
            {
              "code" : "read"
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
