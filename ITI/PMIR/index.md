# 1:49 Patient Master Identity Registry (PMIR) Profile - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* **1:49 Patient Master Identity Registry (PMIR) Profile**

## 1:49 Patient Master Identity Registry (PMIR) Profile

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PMIR/ImplementationGuide/ihe.iti.pmir | *Version*:1.6.0 |
| Active as of 2025-11-04 | *Computable Name*:IHE_ITI_PMIR |

The Patient Master Identity Registry (PMIR) Profile supports the creating, updating and deprecating of patient master identity information about a subject of care, as well as subscribing to changes to the patient master identity, using the HL7 FHIR standard resources and RESTful transactions. In PMIR, “patient identity” information includes all information found in the FHIR Patient Resource such as identifier, name, phone, gender, birth date, address, marital status, photo, others to contact, preference for language, general practitioner, and links to other instances of identities. The “patient master identity” is the dominant patient identity managed centrally among many participating organizations (a.k.a., “Golden Patient Identity”).

Beyond the basic create, retrieve, update, and delete transaction set, this profile addresses important patient safety issues related to cases where there are two or more patient master identities that have been established for the same person, thus it is not clear which identity is the “true” one. There is also a risk that health data (possibly conflicting) may be associated with each identity – and these disparate data, together, may need to be reconciled before a fully and accurate “health picture” can be developed for this person. These situations represent patient safety risks. This profile addresses how these multiple patient master identities can be merged into a single patient master identity, and how this merge flows down to data custodians so that they take appropriate actions. It is outside the scope of this profile to define how references to the deprecated patient master identity from other data should be handled.

This profile is intended for FHIR-only configurations without other underlying standards for patient master identity management. The FHIR message pattern was chosen because it fits well into the subscription notification model.

| |
| :--- |
| [Significant Changes, Open, and Closed Issues](issues.md) |

### Organization of This Guide

This guide is organized into four main sections:

1. Volume 1: Profiles
1. [PMIR Introduction](volume-1.md)
1. [PMIR Actors, Transactions, and Content Modules](volume-1.md#1491-pmir-actors-transactions-and-content-modules)
1. [PMIR Actor Options](volume-1.md#1492-pmir-actor-options)
1. [PMIR Required Actor Groupings](volume-1.md#1493-pmir-required-actor-groupings)
1. [PMIR Overview](volume-1.md#1494-pmir-overview)
1. [PMIR Security Considerations](volume-1.md#1495-pmir-security-considerations)
1. [PMIR Cross Profile Considerations](volume-1.md#1496-pmir-cross-profile-considerations)

1. Volume 2: Transaction Detail
1. [Mobile Patient Identity Feed [ITI-93]](ITI-93.md)
1. [Subscribe to Patient Updates [ITI-94]](ITI-94.md)

1. [Test Plan](testplan.md)
1. [Changes to other Profiles](other.md)

Click on any of the links above, navigate the contents using the [table of contents](toc.md), or if you are looking for a specific artifact, check out the [artifacts](artifacts.md).

### Conformance Expectations

IHE uses the normative words: Shall, Should, and May according to [standards conventions](https://profiles.ihe.net/GeneralIntro/ch-E.html).

#### Must Support

The use of `mustSupport` in StructureDefinition profiles equivalent to the IHE use of **R2** as defined in [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.10-profiling-conventions-for-constraints-on-fhir).

mustSupport of true - only has a meaning on items that are minimal cardinality of zero (0), and applies only to the source actor populating the data. The source actor shall populate the elements marked with MustSupport if the concept is supported by the actor, a value exists, and security and consent rules permit. The consuming actors should handle these elements being populated or being absent/empty. Note that sometimes mustSupport will appear on elements with a minimal cardinality greater than zero (0), this is due to inheritance from a less constrained profile.

### Download

You can also download:

* [this entire guide](full-ig.zip),
* the definition resources in [json](definitions.json.zip), [xml](definitions.xml.zip), [ttl](definitions.ttl.zip), or [csv](csvs.zip) format, or
* the example resources in [json](examples.json.zip), [xml](examples.xml.zip) or [ttl](examples.ttl.zip) format.

The source code for this Implementation Guide can be found on [IHE GitHub](https://github.com/IHE/ITI.PMIR).

#### Cross Version Analysis

This is an R4 IG. None of the features it uses are changed in R4B, so it can be used as is with R4B systems. Packages for both [R4 (ihe.iti.pmir.r4)](package.r4.tgz) and [R4B (ihe.iti.pmir.r4b)](package.r4b.tgz) are available.

#### Dependency Table






#### Globals Table

*There are no Global profiles defined*

#### IP Statements

This publication includes IP covered under the following statements.

* These codes are excerpted from Digital Imaging and Communications in Medicine (DICOM) Standard, Part 16: Content Mapping Resource, Copyright © 2011 by the National Electrical Manufacturers Association.

* [DICOM Controlled Terminology Definitions](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html): [AuditEvent/ex-auditPmirFeed-consumer](AuditEvent-ex-auditPmirFeed-consumer.md), [AuditEvent/ex-auditPmirFeed-supplier](AuditEvent-ex-auditPmirFeed-supplier.md)...Show 13 more,[AuditEvent/ex-auditPmirSubscription-registry-create](AuditEvent-ex-auditPmirSubscription-registry-create.md),[AuditEvent/ex-auditPmirSubscription-registry-delete](AuditEvent-ex-auditPmirSubscription-registry-delete.md),[AuditEvent/ex-auditPmirSubscription-registry-read](AuditEvent-ex-auditPmirSubscription-registry-read.md),[AuditEvent/ex-auditPmirSubscription-registry-update](AuditEvent-ex-auditPmirSubscription-registry-update.md),[AuditEvent/ex-auditPmirSubscription-subscriber-create](AuditEvent-ex-auditPmirSubscription-subscriber-create.md),[AuditEvent/ex-auditPmirSubscription-subscriber-delete](AuditEvent-ex-auditPmirSubscription-subscriber-delete.md),[AuditEvent/ex-auditPmirSubscription-subscriber-read](AuditEvent-ex-auditPmirSubscription-subscriber-read.md),[AuditEvent/ex-auditPmirSubscription-subscriber-update](AuditEvent-ex-auditPmirSubscription-subscriber-update.md),[AuditPmirFeed](StructureDefinition-IHE.PMIR.Feed.Audit.md),[AuditPmirSubscriptionCreate](StructureDefinition-IHE.PMIR.Audit.Subscription.Create.md),[AuditPmirSubscriptionDelete](StructureDefinition-IHE.PMIR.Audit.Subscription.Delete.md),[AuditPmirSubscriptionRead](StructureDefinition-IHE.PMIR.Audit.Subscription.Read.md)and[AuditPmirSubscriptionUpdate](StructureDefinition-IHE.PMIR.Audit.Subscription.Update.md)
* [Audit Event ID](http://terminology.hl7.org/6.5.0/CodeSystem-audit-event-type.html): [AuditEvent/ex-auditPmirSubscription-registry-create](AuditEvent-ex-auditPmirSubscription-registry-create.md), [AuditEvent/ex-auditPmirSubscription-registry-delete](AuditEvent-ex-auditPmirSubscription-registry-delete.md)...Show 10 more,[AuditEvent/ex-auditPmirSubscription-registry-read](AuditEvent-ex-auditPmirSubscription-registry-read.md),[AuditEvent/ex-auditPmirSubscription-registry-update](AuditEvent-ex-auditPmirSubscription-registry-update.md),[AuditEvent/ex-auditPmirSubscription-subscriber-create](AuditEvent-ex-auditPmirSubscription-subscriber-create.md),[AuditEvent/ex-auditPmirSubscription-subscriber-delete](AuditEvent-ex-auditPmirSubscription-subscriber-delete.md),[AuditEvent/ex-auditPmirSubscription-subscriber-read](AuditEvent-ex-auditPmirSubscription-subscriber-read.md),[AuditEvent/ex-auditPmirSubscription-subscriber-update](AuditEvent-ex-auditPmirSubscription-subscriber-update.md),[AuditPmirSubscriptionCreate](StructureDefinition-IHE.PMIR.Audit.Subscription.Create.md),[AuditPmirSubscriptionDelete](StructureDefinition-IHE.PMIR.Audit.Subscription.Delete.md),[AuditPmirSubscriptionRead](StructureDefinition-IHE.PMIR.Audit.Subscription.Read.md)and[AuditPmirSubscriptionUpdate](StructureDefinition-IHE.PMIR.Audit.Subscription.Update.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [Audit event entity type](http://terminology.hl7.org/6.5.0/CodeSystem-audit-entity-type.html): [AuditEvent/ex-auditPmirFeed-consumer](AuditEvent-ex-auditPmirFeed-consumer.md), [AuditEvent/ex-auditPmirFeed-supplier](AuditEvent-ex-auditPmirFeed-supplier.md)...Show 13 more,[AuditEvent/ex-auditPmirSubscription-registry-create](AuditEvent-ex-auditPmirSubscription-registry-create.md),[AuditEvent/ex-auditPmirSubscription-registry-delete](AuditEvent-ex-auditPmirSubscription-registry-delete.md),[AuditEvent/ex-auditPmirSubscription-registry-read](AuditEvent-ex-auditPmirSubscription-registry-read.md),[AuditEvent/ex-auditPmirSubscription-registry-update](AuditEvent-ex-auditPmirSubscription-registry-update.md),[AuditEvent/ex-auditPmirSubscription-subscriber-create](AuditEvent-ex-auditPmirSubscription-subscriber-create.md),[AuditEvent/ex-auditPmirSubscription-subscriber-delete](AuditEvent-ex-auditPmirSubscription-subscriber-delete.md),[AuditEvent/ex-auditPmirSubscription-subscriber-read](AuditEvent-ex-auditPmirSubscription-subscriber-read.md),[AuditEvent/ex-auditPmirSubscription-subscriber-update](AuditEvent-ex-auditPmirSubscription-subscriber-update.md),[AuditPmirFeed](StructureDefinition-IHE.PMIR.Feed.Audit.md),[AuditPmirSubscriptionCreate](StructureDefinition-IHE.PMIR.Audit.Subscription.Create.md),[AuditPmirSubscriptionDelete](StructureDefinition-IHE.PMIR.Audit.Subscription.Delete.md),[AuditPmirSubscriptionRead](StructureDefinition-IHE.PMIR.Audit.Subscription.Read.md)and[AuditPmirSubscriptionUpdate](StructureDefinition-IHE.PMIR.Audit.Subscription.Update.md)
* [AuditEventEntityRole](http://terminology.hl7.org/6.5.0/CodeSystem-object-role.html): [AuditEvent/ex-auditPmirFeed-consumer](AuditEvent-ex-auditPmirFeed-consumer.md), [AuditEvent/ex-auditPmirFeed-supplier](AuditEvent-ex-auditPmirFeed-supplier.md)...Show 13 more,[AuditEvent/ex-auditPmirSubscription-registry-create](AuditEvent-ex-auditPmirSubscription-registry-create.md),[AuditEvent/ex-auditPmirSubscription-registry-delete](AuditEvent-ex-auditPmirSubscription-registry-delete.md),[AuditEvent/ex-auditPmirSubscription-registry-read](AuditEvent-ex-auditPmirSubscription-registry-read.md),[AuditEvent/ex-auditPmirSubscription-registry-update](AuditEvent-ex-auditPmirSubscription-registry-update.md),[AuditEvent/ex-auditPmirSubscription-subscriber-create](AuditEvent-ex-auditPmirSubscription-subscriber-create.md),[AuditEvent/ex-auditPmirSubscription-subscriber-delete](AuditEvent-ex-auditPmirSubscription-subscriber-delete.md),[AuditEvent/ex-auditPmirSubscription-subscriber-read](AuditEvent-ex-auditPmirSubscription-subscriber-read.md),[AuditEvent/ex-auditPmirSubscription-subscriber-update](AuditEvent-ex-auditPmirSubscription-subscriber-update.md),[AuditPmirFeed](StructureDefinition-IHE.PMIR.Feed.Audit.md),[AuditPmirSubscriptionCreate](StructureDefinition-IHE.PMIR.Audit.Subscription.Create.md),[AuditPmirSubscriptionDelete](StructureDefinition-IHE.PMIR.Audit.Subscription.Delete.md),[AuditPmirSubscriptionRead](StructureDefinition-IHE.PMIR.Audit.Subscription.Read.md)and[AuditPmirSubscriptionUpdate](StructureDefinition-IHE.PMIR.Audit.Subscription.Update.md)
* [Provenance participant type](http://terminology.hl7.org/6.5.0/CodeSystem-provenance-participant-type.html): [AuditEvent/ex-auditPmirSubscription-registry-delete](AuditEvent-ex-auditPmirSubscription-registry-delete.md), [AuditEvent/ex-auditPmirSubscription-subscriber-delete](AuditEvent-ex-auditPmirSubscription-subscriber-delete.md) and [AuditPmirSubscriptionDelete](StructureDefinition-IHE.PMIR.Audit.Subscription.Delete.md)
* [Audit Event Source Type](http://terminology.hl7.org/6.5.0/CodeSystem-security-source-type.html): [AuditEvent/ex-auditPmirFeed-consumer](AuditEvent-ex-auditPmirFeed-consumer.md), [AuditEvent/ex-auditPmirFeed-supplier](AuditEvent-ex-auditPmirFeed-supplier.md)...Show 8 more,[AuditEvent/ex-auditPmirSubscription-registry-create](AuditEvent-ex-auditPmirSubscription-registry-create.md),[AuditEvent/ex-auditPmirSubscription-registry-delete](AuditEvent-ex-auditPmirSubscription-registry-delete.md),[AuditEvent/ex-auditPmirSubscription-registry-read](AuditEvent-ex-auditPmirSubscription-registry-read.md),[AuditEvent/ex-auditPmirSubscription-registry-update](AuditEvent-ex-auditPmirSubscription-registry-update.md),[AuditEvent/ex-auditPmirSubscription-subscriber-create](AuditEvent-ex-auditPmirSubscription-subscriber-create.md),[AuditEvent/ex-auditPmirSubscription-subscriber-delete](AuditEvent-ex-auditPmirSubscription-subscriber-delete.md),[AuditEvent/ex-auditPmirSubscription-subscriber-read](AuditEvent-ex-auditPmirSubscription-subscriber-read.md)and[AuditEvent/ex-auditPmirSubscription-subscriber-update](AuditEvent-ex-auditPmirSubscription-subscriber-update.md)
* [contactRole2](http://terminology.hl7.org/6.5.0/CodeSystem-v2-0131.html): [PMIRRelatedPerson](StructureDefinition-IHE.PMIR.RelatedPerson.md)
* [ParticipationType](http://terminology.hl7.org/6.5.0/CodeSystem-v3-ParticipationType.html): [AuditEvent/ex-auditPmirSubscription-registry-create](AuditEvent-ex-auditPmirSubscription-registry-create.md), [AuditEvent/ex-auditPmirSubscription-registry-delete](AuditEvent-ex-auditPmirSubscription-registry-delete.md)...Show 7 more,[AuditEvent/ex-auditPmirSubscription-registry-read](AuditEvent-ex-auditPmirSubscription-registry-read.md),[AuditEvent/ex-auditPmirSubscription-registry-update](AuditEvent-ex-auditPmirSubscription-registry-update.md),[AuditEvent/ex-auditPmirSubscription-subscriber-create](AuditEvent-ex-auditPmirSubscription-subscriber-create.md),[AuditEvent/ex-auditPmirSubscription-subscriber-delete](AuditEvent-ex-auditPmirSubscription-subscriber-delete.md),[AuditEvent/ex-auditPmirSubscription-subscriber-read](AuditEvent-ex-auditPmirSubscription-subscriber-read.md),[AuditEvent/ex-auditPmirSubscription-subscriber-update](AuditEvent-ex-auditPmirSubscription-subscriber-update.md)and[AuditPmirSubscriptionRead](StructureDefinition-IHE.PMIR.Audit.Subscription.Read.md)
* [RoleCode](http://terminology.hl7.org/6.5.0/CodeSystem-v3-RoleCode.html): [PMIRRelatedPerson](StructureDefinition-IHE.PMIR.RelatedPerson.md), [RelatedPerson/bf7c8e34-1be8-4b67-aad7-d62d8da48065](RelatedPerson-bf7c8e34-1be8-4b67-aad7-d62d8da48065.md) and [RelatedPerson/ex-related-mom](RelatedPerson-ex-related-mom.md)




## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "ihe.iti.pmir",
  "url" : "https://profiles.ihe.net/ITI/PMIR/ImplementationGuide/ihe.iti.pmir",
  "version" : "1.6.0",
  "name" : "IHE_ITI_PMIR",
  "title" : "Patient Master Identity Registry (PMIR)",
  "status" : "active",
  "date" : "2025-11-04T15:20:37-06:00",
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
  "description" : "The Patient Master Identity Registry (PMIR) Profile supports the creating, updating and deprecating of patient master identity information about a subject of care, as well as subscribing to changes to the patient master identity, using the HL7 FHIR standard resources and RESTful transactions.",
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
  "packageId" : "ihe.iti.pmir",
  "license" : "CC-BY-4.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [
    {
      "id" : "hl7tx",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
        }
      ],
      "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
      "packageId" : "hl7.terminology.r4",
      "version" : "6.5.0"
    },
    {
      "id" : "hl7ext",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
        }
      ],
      "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
      "packageId" : "hl7.fhir.uv.extensions.r4",
      "version" : "5.2.0"
    },
    {
      "id" : "ihe_iti_balp",
      "uri" : "https://profiles.ihe.net/ITI/BALP/ImplementationGuide/ihe.iti.balp",
      "packageId" : "ihe.iti.balp",
      "version" : "1.1.4"
    },
    {
      "id" : "ihe_iti_pdqm",
      "uri" : "https://profiles.ihe.net/ITI/PDQm/ImplementationGuide/ihe.iti.pdqm",
      "packageId" : "ihe.iti.pdqm",
      "version" : "3.2.0"
    },
    {
      "id" : "ihe_iti_pixm",
      "uri" : "https://profiles.ihe.net/ITI/PIXm/ImplementationGuide/ihe.iti.pixm",
      "packageId" : "ihe.iti.pixm",
      "version" : "3.1.0"
    }
  ],
  "definition" : {
    "extension" : [
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2022+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "Trial-Implementation"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "show-inherited-invariants"
          },
          {
            "url" : "value",
            "valueString" : "false"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "usage-stats-opt-out"
          },
          {
            "url" : "value",
            "valueString" : "false"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "logging"
          },
          {
            "url" : "value",
            "valueString" : "progress"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "shownav"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "false"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "urn:ihe:event-type-code"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "urn:ihe:iti:pmir:2019:patient-feed"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "urn:ihe:iti:pmir:2019:patient-feed-response"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "pin-canonicals"
          },
          {
            "url" : "value",
            "valueString" : "pin-multiples"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://profiles.ihe.net/ITI/PMIR/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
        "valueCode" : "hl7.fhir.uv.tools.r4#0.8.0"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2022+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "Trial-Implementation"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "show-inherited-invariants"
          },
          {
            "url" : "value",
            "valueString" : "false"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "usage-stats-opt-out"
          },
          {
            "url" : "value",
            "valueString" : "false"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "logging"
          },
          {
            "url" : "value",
            "valueString" : "progress"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "shownav"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "false"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "urn:ihe:event-type-code"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "urn:ihe:iti:pmir:2019:patient-feed"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "urn:ihe:iti:pmir:2019:patient-feed-response"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "pin-canonicals"
          },
          {
            "url" : "value",
            "valueString" : "pin-multiples"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://profiles.ihe.net/ITI/PMIR/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      }
    ],
    "resource" : [
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.PMIR.Feed.Audit"
        },
        "name" : "Audit Event for Mobile Patient Identity Feed by the Supplier and Consumer",
        "description" : "Defines constraints on the AuditEvent Resource to record when a Mobile Patient Identity Feed Transaction happens, as recorded by the Supplier and Consumer.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.PMIR.Audit.Subscription.Create"
        },
        "name" : "Audit Event for Subscribe to Patient Updates Transaction by the Patient Identity Subscriber and Registry for Create",
        "description" : "Defines constraints on the AuditEvent Resource to record when a Subscribe to Patient Updates Transaction happens\nto create a new subscription, as recorded by the Patient Identity Subscriber and Registry.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.PMIR.Audit.Subscription.Delete"
        },
        "name" : "Audit Event for Subscribe to Patient Updates Transaction by the Patient Identity Subscriber and Registry for Delete",
        "description" : "Defines constraints on the AuditEvent Resource to record when a Subscribe to Patient Updates Transaction happens\nto delete a subscription, as recorded by the Patient Identity Subscriber and Registry.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.PMIR.Audit.Subscription.Read"
        },
        "name" : "Audit Event for Subscribe to Patient Updates Transaction by the Patient Identity Subscriber and Registry for Read",
        "description" : "Defines constraints on the AuditEvent Resource to record when a Subscribe to Patient Updates Transaction happens\nto read a subscription, as recorded by the Patient Identity Subscriber and Registry.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.PMIR.Audit.Subscription.Update"
        },
        "name" : "Audit Event for Subscribe to Patient Updates Transaction by the Patient Identity Subscriber and Registry for Update",
        "description" : "Defines constraints on the AuditEvent Resource to record when a Subscribe to Patient Updates Transaction happens\nto update a subscription, as recorded by the Patient Identity Subscriber and Registry.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditPmirFeed-consumer"
        },
        "name" : "Audit Example of ITI-93 for Consumer",
        "description" : "AuditEvent for the PMIR Mobile Patient Identity Feed by a Consumer.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Feed.Audit"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditPmirFeed-supplier"
        },
        "name" : "Audit Example of ITI-93 for Supplier",
        "description" : "AuditEvent for the PMIR Mobile Patient Identity Feed by a Supplier.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Feed.Audit"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditPmirSubscription-registry-create"
        },
        "name" : "Audit Example of ITI-94 for Patient Identity Registry for Subscription Create",
        "description" : "AuditEvent for the PMIR Subscribe to Patient Updates by a Patient Identity Registry to create a Subscription.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Audit.Subscription.Create"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditPmirSubscription-registry-delete"
        },
        "name" : "Audit Example of ITI-94 for Patient Identity Registry for Subscription Delete",
        "description" : "AuditEvent for the PMIR Subscribe to Patient Updates by a Patient Identity Registry to delete a Subscription.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Audit.Subscription.Delete"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditPmirSubscription-registry-read"
        },
        "name" : "Audit Example of ITI-94 for Patient Identity Registry for Subscription Read",
        "description" : "AuditEvent for the PMIR Subscribe to Patient Updates by a Patient Identity Registry to read a Subscription.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Audit.Subscription.Read"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditPmirSubscription-registry-update"
        },
        "name" : "Audit Example of ITI-94 for Patient Identity Registry for Subscription Update",
        "description" : "AuditEvent for the PMIR Subscribe to Patient Updates by a Patient Identity Registry to update a Subscription.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Audit.Subscription.Update"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditPmirSubscription-subscriber-create"
        },
        "name" : "Audit Example of ITI-94 for Patient Identity Subscriber for Create",
        "description" : "AuditEvent for the PMIR Subscribe to Patient Updates by a Patient Identity Subscriber\nwhen creating a Subscription.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Audit.Subscription.Create"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditPmirSubscription-subscriber-delete"
        },
        "name" : "Audit Example of ITI-94 for Patient Identity Subscriber for Delete",
        "description" : "AuditEvent for the PMIR Subscribe to Patient Updates by a Patient Identity Subscriber\nwhen deleting a Subscription.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Audit.Subscription.Delete"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditPmirSubscription-subscriber-read"
        },
        "name" : "Audit Example of ITI-94 for Patient Identity Subscriber for Read",
        "description" : "AuditEvent for the PMIR Subscribe to Patient Updates by a Patient Identity Subscriber\nwhen reading a Subscription.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Audit.Subscription.Read"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditPmirSubscription-subscriber-update"
        },
        "name" : "Audit Example of ITI-94 for Patient Identity Subscriber for Update",
        "description" : "AuditEvent for the PMIR Subscribe to Patient Updates by a Patient Identity Subscriber\nwhen updating a Subscription.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Audit.Subscription.Update"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          },
          {
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ImplementationGuide.definition.resource.profile",
            "valueCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle.History"
          },
          {
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ImplementationGuide.definition.resource.profile",
            "valueCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "Bundle/3594fe3c-31af-4695-b533-550e3bc0f1c9"
        },
        "name" : "CAT Sample 1 ITI-93 Mother",
        "description" : "Connectathon sample 1 message bundle to create a patient that is a mother.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/d0bceb02-ddc1-4855-98a0-00bc364f24eb"
        },
        "name" : "CAT Sample 2 ITI-93 Mother",
        "description" : "Connectathon sample 2 message bundle to create a patient that is a mother.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          },
          {
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ImplementationGuide.definition.resource.profile",
            "valueCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle.History"
          },
          {
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ImplementationGuide.definition.resource.profile",
            "valueCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "Bundle/30e285b5-a28c-444f-a898-a15159c82f38"
        },
        "name" : "CAT Sample 3 ITI-93 Baby",
        "description" : "Connectathon sample 3 message bundle to create a patient that is a baby.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/08b38db4-13c1-48a3-ab50-80104d6dd66a"
        },
        "name" : "CAT Sample 4 ITI-93 Baby",
        "description" : "Connectathon sample 4 message bundle to create a patient that is a baby.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "RelatedPerson"
          }
        ],
        "reference" : {
          "reference" : "RelatedPerson/bf7c8e34-1be8-4b67-aad7-d62d8da48065"
        },
        "name" : "CAT Sample 5 ITI-93 Related Person",
        "description" : "Connectathon sample 5 related person resource.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          },
          {
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ImplementationGuide.definition.resource.profile",
            "valueCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle.History"
          },
          {
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ImplementationGuide.definition.resource.profile",
            "valueCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "Bundle/72681afa-2bee-4422-bdf7-d0363e113b65"
        },
        "name" : "CAT Sample 6 ITI-93 update Baby",
        "description" : "Connectathon sample 6 message bundle to update a patient that is a baby.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          },
          {
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ImplementationGuide.definition.resource.profile",
            "valueCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle.History"
          },
          {
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ImplementationGuide.definition.resource.profile",
            "valueCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "Bundle/d97b9e33-4b48-4190-8622-0b4b5be9770d"
        },
        "name" : "CAT Sample 7 ITI-93 merge",
        "description" : "Connectathon sample 7 message bundle to merge a patient.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/22125985-cac7-4da9-9557-ef4e7ff97140"
        },
        "name" : "CAT Sample 8 ITI-93 merge",
        "description" : "Connectathon sample 8 message bundle to merge a patient.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Device"
          }
        ],
        "reference" : {
          "reference" : "Device/ex-device"
        },
        "name" : "Device Example for PMIR",
        "description" : "Device Example for PMIR.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Device"
          }
        ],
        "reference" : {
          "reference" : "Device/ex-pmir"
        },
        "name" : "Device Example for PMIR",
        "description" : "Device Example for PMIR.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.PMIR.Bundle.History"
        },
        "name" : "IHE Patient Master Identity Registry Bundle Message",
        "description" : "StructureDefinition for Bundle resource constraints for messages in the IHE PMIR Profile.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.PMIR.Patient.Merge"
        },
        "name" : "IHE Patient Master Identity Registry Merged Patient",
        "description" : "StructureDefinition for Patient resource constraints for messages in the IHE PMIR Profile when the Patient is being merged.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.PMIR.Bundle"
        },
        "name" : "IHE Patient Master Identity Registry Message Bundle",
        "description" : "StructureDefinition for Bundle resource constraints in the IHE PMIR Profile.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-PMIRBundleCreate"
        },
        "name" : "IHE Patient Master Identity Registry Message Bundle Create Example",
        "description" : "IHE PMIR example to create two patients.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-PMIRBundleDelete"
        },
        "name" : "IHE Patient Master Identity Registry Message Bundle Delete Example",
        "description" : "IHE PMIR example to delete a patient.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-PMIRBundleMerge"
        },
        "name" : "IHE Patient Master Identity Registry Message Bundle Merge Example",
        "description" : "IHE PMIR example Bundle for a patient that has been merged.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-PMIRBundleUpdate"
        },
        "name" : "IHE Patient Master Identity Registry Message Bundle Update Example",
        "description" : "IHE PMIR example to update a patient.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.PMIR.MessageHeader"
        },
        "name" : "IHE Patient Master Identity Registry MessageHeader",
        "description" : "StructureDefinition for MessageHeader resource constraints in the IHE PMIR Profile.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.PMIR.MessageHeader.Response"
        },
        "name" : "IHE Patient Master Identity Registry MessageHeader Response",
        "description" : "StructureDefinition for the PMIR MessageHeader response constraints.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.PMIR.RelatedPerson"
        },
        "name" : "IHE Patient Master Identity Registry Related Person",
        "description" : "StructureDefinition for RelatedPerson resource constraints for messages in the IHE PMIR Profile when a Patient is linked to a related person.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.PMIR.Patient.Related"
        },
        "name" : "IHE Patient Master Identity Registry Related Person Patient",
        "description" : "StructureDefinition for Patient resource constraints for messages in the IHE PMIR Profile when the Patient is linked to a related person.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.PMIR.Subscription"
        },
        "name" : "IHE Patient Master Identity Registry Subscription",
        "description" : "StructureDefinition for Subscrption resource constraints in the IHE PMIR Profile.\n\nSee [Section 3.94.4.1.2.1.1](ITI-94.html#239441211-criteria-constraints) for details\non constraints for criteria.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.PMIR.Subscription.Request"
        },
        "name" : "IHE Patient Master Identity Registry Subscription request",
        "description" : "StructureDefinition for Subscrption resource constraints for subscription requests in the IHE PMIR Profile.  The IHE PMIR Profile text is Normative, this conformance resource is Informative.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/IHE.PMIR.PatientIdentityConsumer"
        },
        "name" : "IHE PMIR Patient Identity Consumer",
        "description" : "CapabilityStatement for Patient Identity Consumer Actor in the IHE IT Infrastructure Technical Framework Supplement [IHE PMIR](index.html).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/IHE.PMIR.PatientIdentityRegistry"
        },
        "name" : "IHE PMIR Patient Identity Registry",
        "description" : "CapabilityStatement for the Patient Identity Registry Actor in the IHE IT Infrastructure Technical Framework Supplement [IHE PMIR](index.html).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/IHE.PMIR.PatientIdentitySource"
        },
        "name" : "IHE PMIR Patient Identity Source",
        "description" : "CapabilityStatement for Patient Identity Source Actor in the IHE IT Infrastructure Technical Framework Supplement [IHE PMIR](index.html).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/IHE.PMIR.PatientIdentitySubscriber"
        },
        "name" : "IHE PMIR Patient Identity Subscriber",
        "description" : "CapabilityStatement for Patient Identity Subscriber Actor in the IHE IT Infrastructure Technical Framework Supplement [IHE PMIR](index.html).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/ex-messageheader-create"
        },
        "name" : "PMIR example MessageHeader for create",
        "description" : "Example PMIR MessageHeader for creating.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.MessageHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/ex-messageheader-create-response"
        },
        "name" : "PMIR example MessageHeader for create",
        "description" : "Example PMIR MessageHeader for creating.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.MessageHeader.Response"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/ex-messageheader-delete"
        },
        "name" : "PMIR example MessageHeader for delete",
        "description" : "Example PMIR MessageHeader for deleting.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.MessageHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/ex-messageheader-merge"
        },
        "name" : "PMIR example MessageHeader for merge",
        "description" : "Example PMIR MessageHeader for merging.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.MessageHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/ex-messageheader-update"
        },
        "name" : "PMIR example MessageHeader for update",
        "description" : "Example PMIR MessageHeader for updating.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.MessageHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "RelatedPerson"
          }
        ],
        "reference" : {
          "reference" : "RelatedPerson/ex-related-mom"
        },
        "name" : "PMIR Example of a Related Person for Mother",
        "description" : "PMIR Example of a Related Person for Mother.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.RelatedPerson"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/ex-patient-create1"
        },
        "name" : "PMIR example Patient for create",
        "description" : "Example PMIR Patient for creating.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/ex-patient-create2"
        },
        "name" : "PMIR example Patient for create",
        "description" : "Example PMIR Patient for creating.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Patient.Related"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/ex-related-child"
        },
        "name" : "PMIR example Patient for create",
        "description" : "Example PMIR Patient for creating.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/ex-patient-merge"
        },
        "name" : "PMIR example Patient for merge",
        "description" : "Example PMIR Patient for merging.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Patient.Merge"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/ex-patient-merged"
        },
        "name" : "PMIR example Patient for merge",
        "description" : "Example PMIR Patient for merging.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/ex-patient-update"
        },
        "name" : "PMIR example Patient for update",
        "description" : "Example PMIR Patient for updating.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Subscription"
          }
        ],
        "reference" : {
          "reference" : "Subscription/ex-subscription"
        },
        "name" : "PMIR Example Subscription",
        "description" : "Example of PMIR Subscription resource.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Subscription"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Subscription"
          }
        ],
        "reference" : {
          "reference" : "Subscription/ex-subscription-request"
        },
        "name" : "PMIR Example Subscription Request",
        "description" : "Example of PMIR Subscription Request resource.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Subscription.Request"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-bundle-history-create"
        },
        "name" : "PMIR History Bundle for create",
        "description" : "Example PMIR History Bundle for creating.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle.History"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-bundle-history-delete"
        },
        "name" : "PMIR History Bundle for delete",
        "description" : "Example PMIR History Bundle for deleting.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle.History"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-bundle-history-merge"
        },
        "name" : "PMIR History Bundle for merge",
        "description" : "Example PMIR History Bundle for merging.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle.History"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-bundle-history-update"
        },
        "name" : "PMIR History Bundle for update",
        "description" : "Example PMIR History Bundle for updating.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle.History"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageDefinition"
          }
        ],
        "reference" : {
          "reference" : "MessageDefinition/IHE.PMIR.MessageDefinition"
        },
        "name" : "PMIR Mobile Patient Identity Feed [ITI-93] MessageDefinition",
        "description" : "PMIR MessageDefinition for the [Mobile Patient Identity Feed \\[ITI-93\\]](ITI-93.html)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageDefinition"
          }
        ],
        "reference" : {
          "reference" : "MessageDefinition/IHE.PMIR.MessageDefinition.Response"
        },
        "name" : "PMIR Mobile Patient Identity Feed [ITI-93] MessageDefinition Response",
        "description" : "PMIR MessageDefinition Response for the [Mobile Patient Identity Feed \\[ITI-93\\]](ITI-93.html)",
        "exampleBoolean" : false
      }
    ],
    "page" : {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "toc.html"
        }
      ],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "index.html"
            }
          ],
          "nameUrl" : "index.html",
          "title" : "1:49 Patient Master Identity Registry (PMIR) Profile",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "volume-1.html"
            }
          ],
          "nameUrl" : "volume-1.html",
          "title" : "1:49 Patient Master Identity Registry (PMIR) Profile Volume 1",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "ITI-93.html"
            }
          ],
          "nameUrl" : "ITI-93.html",
          "title" : "2:3.93 Mobile Patient Identity Feed [ITI-93]",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "ITI-94.html"
            }
          ],
          "nameUrl" : "ITI-94.html",
          "title" : "2:3.94 Subscribe to Patient Updates [ITI-94]",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "testplan.html"
            }
          ],
          "nameUrl" : "testplan.html",
          "title" : "Test Plan",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "issues.html"
            }
          ],
          "nameUrl" : "issues.html",
          "title" : "Open and Closed issues",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "other.html"
            }
          ],
          "nameUrl" : "other.html",
          "title" : "Changes to Other Documents",
          "generation" : "markdown"
        }
      ]
    },
    "parameter" : [
      {
        "code" : "path-resource",
        "value" : "input/resources"
      },
      {
        "code" : "path-resource",
        "value" : "fsh-generated/resources"
      },
      {
        "code" : "path-resource",
        "value" : "input/examples"
      },
      {
        "code" : "path-resource",
        "value" : "input/capabilities"
      },
      {
        "code" : "path-resource",
        "value" : "input/extensions"
      },
      {
        "code" : "path-resource",
        "value" : "input/models"
      },
      {
        "code" : "path-resource",
        "value" : "input/operations"
      },
      {
        "code" : "path-resource",
        "value" : "input/profiles"
      },
      {
        "code" : "path-resource",
        "value" : "input/vocabulary"
      },
      {
        "code" : "path-resource",
        "value" : "input/testing"
      },
      {
        "code" : "path-resource",
        "value" : "input/history"
      },
      {
        "code" : "path-pages",
        "value" : "template/config"
      },
      {
        "code" : "path-pages",
        "value" : "input/images"
      },
      {
        "code" : "path-tx-cache",
        "value" : "input-cache/txcache"
      }
    ]
  }
}

```
