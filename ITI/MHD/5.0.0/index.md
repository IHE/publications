# MHD Home - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* **MHD Home**

## MHD Home

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/ImplementationGuide/ihe.iti.mhd | *Version*:5.0.0 |
| Active as of 2025-12-18 | *Computable Name*:IHE_ITI_MHD |

This IG is founded on HL7 FHIR Revision 5.0.0 found at http://hl7.org/fhir/R5/. This present MHD IG is made available for use, but is not the recommended version of MHD or FHIR. The family of [Document Sharing Health Information Exchange](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) Implementation Guides have not been converted to FHIR R5, and there are fewer implementations of FHIR R5. This FHIR R5 founded MHD is derived from the FHIR R4 MHD which is the main focus. Current MHD is founded on FHIR R4 to support the broadest availability, it is available at [https://profiles.ihe.net/ITI/MHD](https://profiles.ihe.net/ITI/MHD/index.html).

Applications specific to resource-constrained and mobile devices are an emerging platform for healthcare-enhancing software. The MHD Profile is not limited to mobile devices, using the term “mobile” only as a grouping for mobile applications, mobile devices or any other systems that are resource and platform-constrained. These constraints may drive the implementer to use simpler network interface technology. There are numerous deployed implementations of [Document Sharing Health Information Exchange](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) that need a simpler network interface technology, for example those hosted by a Health Information Exchange (HIE), large health provider electronic health record (EHR), or personal health record (PHR).

The Mobile access to Health Documents (MHD) Profile defines one standardized interface to [health document sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) (a.k.a. an Application Programming Interface (API)) for use by mobile devices so that deployment of mobile applications is more consistent and reusable. In this context, mobile devices include tablets, smart-phones, and embedded devices including home-health devices. This profile is also applicable to more capable systems where needs are simple, such as pulling the latest summary for display. The critical aspects of the "mobile device" are that it is resource-constrained, has a simple programming environment (e.g., JSON, JavaScript), simple protocol stack (e.g., HTTP), and simple display functionality (e.g., HTML browser). The goal is, in part, to avoid burdening the client with additional libraries such as those that are necessary to process SOAP, WSSE, MIME-Multipart, MTOM/XOP, ebRIM, and multi-depth XML.

The Mobile access to Health Documents (MHD) Profile defines one pair of actors and a transaction to submit or push new “document entries” from the mobile device to a receiving system. Another set of actors and transactions is used to query a list of “document entries” having specific metadata, and to retrieve a document.

The transactions defined here leverage the [document content- and format-agnostic metadata concepts](https://profiles.ihe.net/ITI/TF/Volume3/index.html#4) that were initially developed for [XDS](https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html) but simplify them for access in constrained environments including mobile devices.

The MHD Profile can be used as an [API to a Document Sharing exchange using XDS](1336_cross_profile_considerations.md#13361-mhd-actor-grouped-with-xds-infrastructure) or [XCA](1336_cross_profile_considerations.md#13362-mhd-actors-grouped-with-xca-infrastructure). The MHD Profile is used by the [MHDS Document Sharing](https://profiles.ihe.net/ITI/TF/Volume1/ch-50.html) solution. The MHD Profile can be used in [push solutions](1334_overview.md#133422-publication-of-new-documents-process-flow) alone or as an API to solutions like XDR or XDM. These are further elaborated in [Cross Profile Considerations](1336_cross_profile_considerations.md).

The [Mobile Cross-Enterprise Document Data Element Extraction (mXDE)](https://profiles.ihe.net/ITI/TF/Volume1/ch-45.html) Profile combines MHD with the PCC Query for Existing Data for Mobile (QEDm) Profile to provide element level access to the medical information available in a Document Sharing exchange. More details can be found in the white paper on [Document Sharing Health Information Exchange](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html).

MHD is part of [IHE](https://profiles.ihe.net) – [IT-Infrastructure](https://profiles.ihe.net/ITI) Domain and part of the [IHE Document Sharing Health Information Exchange](https://profiles.ihe.net/ITI/HIE-Whitepaper) solution.

 This IG is founded on HL7 FHIR Revision 5.0.0 found at http://hl7.org/fhir/R5/.

| |
| :--- |
| [Significant Changes, Open and Closed Issues](a_issues.md) |

**[Search this IG](https://www.google.com/search?q=site%3Ahttps%3A%2F%2Fprofiles.ihe.net%2FITI%2FMHD&rlz=1C1GCEU_enUS815US815&sxsrf=ALeKk02egtK8A20vWkRrPApvkcoQjnIiDA%3A1620864970799&ei=ym-cYPmMMMq6tQa8vre4CA&oq=site%3Ahttps%3A%2F%2Fprofiles.ihe.net%2FITI%2FMHD&gs_lcp=Cgdnd3Mtd2l6EANQ7CZYmDBg9TdoAXAAeACAAWaIAcIDkgEDNS4xmAEAoAEBqgEHZ3dzLXdpesABAQ&sclient=gws-wiz&ved=0ahUKEwj5mcDGsMXwAhVKXc0KHTzfDYcQ4dUDCA4&uact=5)**

MHD is updated by [Internet User Authorization (IUA)](https://profiles.ihe.net/ITI/IUA/index.html#33-mhd-profile) to add specific scope values to be used when grouped with IUA.

#### Organization of This Guide

This guide is organized into the following sections:

* Volume 1: Use-Case analysis 
* [Actors and Transactions](1331_actors_and_transactions.md)
* [Actor Options](1332_actor_options.md)
* [Actor Required Groupings](1333_required_grouping.md)
* [Overview](1334_overview.md)
* [Security Considerations](1335_security_considerations.md)
* [Cross Profile Considerations](1336_cross_profile_considerations.md)
 
* Volume 2: Transaction Detail 
* [Provide Document Bundle [ITI-65]](ITI-65.md)
* [Find Document Lists [ITI-66]](ITI-66.md)
* [Find Document References [ITI-67]](ITI-67.md)
* [Retrieve Document [ITI-68]](ITI-68.md)
* [Simplified Publish [ITI-105]](ITI-105.md)
* [Generate Metadata [ITI-106]](ITI-106.md)
 
* Volume 3: Metadata 
* [XDS Error Codes](31_xds.md)
* [FHIR Representation](32_fhir_maps.md)
 
* Other 
* [Test Plan](testplan.md)
* [Download and Analysis](download.md)
 

Click on any of the links above, see the [Table of Contents](toc.md), or if you are looking for a specific artifact, see the index of [Artifacts](artifacts.md).

#### Must Support

MHD defines `Must Support` in StructureDefinition profiles as the element, when the minimal cardinality is zero, is **R2** `Required if Known`, as found in [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.10-profiling-conventions-for-constraints-on-fhir). `Must Support` when the element minimal cardinality is not zero means **R**.



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "ihe.iti.mhd",
  "url" : "https://profiles.ihe.net/ITI/MHD/ImplementationGuide/ihe.iti.mhd",
  "version" : "5.0.0",
  "name" : "IHE_ITI_MHD",
  "title" : "Mobile access to Health Documents (MHD)",
  "status" : "active",
  "date" : "2025-12-18T09:48:18-06:00",
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
  "description" : "ImplementationGuide for IHE IT Infrastructure Technical Framework Supplement Mobile access to Health Documents (MHD)",
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
  "packageId" : "ihe.iti.mhd",
  "license" : "CC-BY-4.0",
  "fhirVersion" : ["5.0.0"],
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
      "packageId" : "hl7.terminology.r5",
      "version" : "7.0.1"
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
      "packageId" : "hl7.fhir.uv.extensions.r5",
      "version" : "5.2.0"
    }
  ],
  "definition" : {
    "extension" : [
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
        "valueCode" : "hl7.fhir.uv.tools.r5#0.9.0"
      }
    ],
    "resource" : [
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/AllReadVS"
        },
        "name" : "all Reads",
        "description" : "ValueSet of the restful-interaction reads",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/AllSearchVS"
        },
        "name" : "all Searches",
        "description" : "ValueSet of the restful-interaction searches",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/AssociationTypeVsRelatesTo"
        },
        "name" : "AssociationType vs RelatesTo",
        "description" : "map between XDS Association Types and MHD FHIR DocumentReference relatesTo code.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.FindDocumentLists.Audit.Responder"
        },
        "name" : "Audit Event for Find Document Lists Transaction at Document Responder",
        "description" : "Defines constraints on the AuditEvent Resource to record when a Find Document Lists Transaction happens, as recorded by the Document Responder.\n- Build off of the IHE BasicAudit PatientQuery event\n- add the ITI-67 as a subtype\n- client is Document Consumer\n- server is Document Responder\n- entity slices for query, and patient are required\n- entity slice for transaction is available",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.FindDocumentLists.Audit.Consumer"
        },
        "name" : "Audit Event for Find Document Lists Transaction by the Document Consumer",
        "description" : "Defines constraints on the AuditEvent Resource to record when a Find Document Lists Transaction happens, as recorded by the Document Consumer.\n- Build off of the IHE BasicAudit PatientQuery event\n- add the ITI-67 as a subtype\n- client is Document Consumer\n- server is Document Responder\n- entity slices for query, and patient are required\n- entity slice for transaction is available",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.FindDocumentReferences.Audit.Consumer"
        },
        "name" : "Audit Event for Find Document References Transaction at Document Consumer",
        "description" : "Defines constraints on the AuditEvent Resource to record when a Find Document References Transaction happens, as recorded by the Document Consumer.\n- Build off of the IHE BasicAudit PatientQuery event\n- add the ITI-67 as a subtype\n- client is Document Consumer\n- server is Document Responder\n- entity slices for query, and patient are required\n- entity slice for transaction is available",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.FindDocumentReferences.Audit.Responder"
        },
        "name" : "Audit Event for Find Document References Transaction at Document Responder",
        "description" : "Defines constraints on the AuditEvent Resource to record when a Find Document References Transaction happens, as recorded by the Document Responder.\n- Build off of the IHE BasicAudit PatientQuery event\n- add the ITI-67 as a subtype\n- client is Document Consumer\n- server is Document Responder\n- entity slices for query, and patient are required\n- entity slice for transaction is available",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.GenerateMetadata.Audit.Recipient"
        },
        "name" : "Audit Event for Generate Metadata ITI-106 Transaction at Recipient",
        "description" : "Defines constraints on the AuditEvent Resource to record when a Generate Metadata ITI-106 Transaction happens at the Recipient.\n- Build off of the IHE Basic Audit Patient Create event\n- add the ITI-106 as a subtype\n- client is the Document Source\n- Server is the Document Recipient\n- may have user, app, organization agent(s)\n- shall have a patient entity\n- shall have a documentReference identity entity",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.GenerateMetadata.Audit.Source"
        },
        "name" : "Audit Event for Generate Metadata ITI-106 Transaction at Source",
        "description" : "Defines constraints on the AuditEvent Resource to record when a Generate Metadata ITI-106 Transaction happens at the Soure.\n- Build off of the IHE Basic Audit Create event\n- add the ITI-106 as a subtype\n- client is the Document Source\n- Server is the Document Recipient\n- may have user, app, organization agent(s)\n- shall have a document uri\n- note the Document Source may add a patient if it knows it.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.ProvideBundle.Audit.Recipient"
        },
        "name" : "Audit Event for Provide Bundle Transaction at Recipient",
        "description" : "Defines constraints on the AuditEvent Resource to record when a Provide Bundle Transaction happens at the Recipient.\r\n- Import event\r\n- shall have source of itself\r\n- shall have a document source agent\r\n- shall have a document recipient agent\r\n- may have user, app, organization agent(s)\r\n- shall have a patient entity\r\n- shall have a submission set identity entity",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.ProvideBundle.Audit.Source"
        },
        "name" : "Audit Event for Provide Bundle Transaction at Source",
        "description" : "Defines constraints on the AuditEvent Resource to record when a Provide Bundle Transaction happens at the Source.\r\n- Export event\r\n- shall have source of itself\r\n- shall have a document source agent\r\n- shall have a document recipient agent\r\n- may have user, app, organization agent(s)\r\n- shall have a patient entity\r\n- shall have a submission set identity entity",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.RetrieveDocument.Audit.Consumer"
        },
        "name" : "Audit Event for Retrieve Document Transaction at Document Consumer",
        "description" : "Defines constraints on the Document Consumer AuditEvent Resource to record when a Retrieve Document Transaction happens, as recorded by the Document Consumer.\n- Build off of the IHE BasicAudit PatientRead event\n- add the ITI-68 as a subtype\n- client is Document Consumer\n- server is Document Responder\n- entity slices for data, and patient are required\n- entity slice for transaction is available",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.RetrieveDocument.Audit.Responder"
        },
        "name" : "Audit Event for Retrieve Document Transaction at the Document Responder",
        "description" : "Defines constraints on the Document Responder AuditEvent Resource to record when a Retrieve Document Transaction happens, as recorded by the Document Responder.\n- Build off of the IHE BasicAudit PatientRead event\n- add the ITI-68 as a subtype\n- client is Document Consumer\n- server is Document Responder\n- entity slices for data, and patient are required\n- entity slice for transaction is available",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.SimplifiedPublish.Audit.Recipient"
        },
        "name" : "Audit Event for Simplified Publish ITI-105 Transaction at Recipient",
        "description" : "Defines constraints on the AuditEvent Resource to record when a Simplified Publish ITI-105 Transaction happens at the Recipient.\n- Build off of the IHE Basic Audit Patient Create event\n- add the ITI-105 as a subtype\n- client is the Document Source\n- Server is the Document Recipient\n- may have user, app, organization agent(s)\n- shall have a patient entity\n- shall have a documentReference identity entity",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.SimplifiedPublish.Audit.Source"
        },
        "name" : "Audit Event for Simplified Publish ITI-105 Transaction at Source",
        "description" : "Defines constraints on the AuditEvent Resource to record when a Simplified Publish ITI-105 Transaction happens at the Soure.\n- Build off of the IHE Basic Audit Patient Create event\n- add the ITI-105 as a subtype\n- client is the Document Source\n- Server is the Document Recipient\n- may have user, app, organization agent(s)\n- shall have a patient entity\n- shall have a documentReference identity entity",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditSimplifiedPublish-recipient"
        },
        "name" : "Audit Example of ITI-105 at recipient",
        "description" : "Audit Example for a Simplified Publish Transaction as recorded at the recipient",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.SimplifiedPublish.Audit.Recipient"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditSimplifiedPublish-source"
        },
        "name" : "Audit Example of ITI-105 at source",
        "description" : "Audit Example for a Simplified Publish Transaction from source perspective",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.SimplifiedPublish.Audit.Source"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditGenerateMetadata-recipient"
        },
        "name" : "Audit Example of ITI-106 at recipient",
        "description" : "Audit Example for a Generate Metadata Transaction as recorded at the recipient",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.GenerateMetadata.Audit.Recipient"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditGenerateMetadata-source"
        },
        "name" : "Audit Example of ITI-106 at source",
        "description" : "Audit Example for a Generate Metadata Transaction from source perspective",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.GenerateMetadata.Audit.Source"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditProvideBundle-recipient"
        },
        "name" : "Audit Example of ITI-65 at recipient",
        "description" : "Audit Example for a Provide Bundle Transaction as recorded at the recipient",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.ProvideBundle.Audit.Recipient"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditProvideBundle-source"
        },
        "name" : "Audit Example of ITI-65 at source",
        "description" : "Audit Example for a Provide Bundle Transaction from source perspective",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.ProvideBundle.Audit.Source"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditFindDocumentLists-consumer"
        },
        "name" : "Audit Example of ITI-66 at Consumer",
        "description" : "Audit Example for a Find Document Lists Transaction as recorded at the consumer",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.FindDocumentLists.Audit.Consumer"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditFindDocumentLists-responder"
        },
        "name" : "Audit Example of ITI-66 at responder",
        "description" : "Audit Example for a Find Document Lists Transaction from responder perspective",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.FindDocumentLists.Audit.Responder"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditFindDocumentReferences-consumer"
        },
        "name" : "Audit Example of ITI-67 at Consumer",
        "description" : "Audit Example for a Find Document References Transaction as recorded at the consumer",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.FindDocumentReferences.Audit.Consumer"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditFindDocumentReferences-responder"
        },
        "name" : "Audit Example of ITI-67 at responder",
        "description" : "Audit Example for a Find Document References Transaction from responder perspective",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.FindDocumentReferences.Audit.Responder"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditFindDocumentReferences-post-responder"
        },
        "name" : "Audit Example of ITI-67 using POST recorded at responder",
        "description" : "Audit Example for a Find Document References Transaction using POST search as recorded at the responder perspective",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.FindDocumentReferences.Audit.Responder"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditRetrieveDocument-consumer"
        },
        "name" : "Audit Example of ITI-68 at consumer",
        "description" : "Audit Example for a Retrieve Document Transaction as recorded at the consumer",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.RetrieveDocument.Audit.Consumer"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditRetrieveDocument-responder"
        },
        "name" : "Audit Example of ITI-68 at responder",
        "description" : "Audit Example for a Retrieve Document Transaction from responder perspective",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.RetrieveDocument.Audit.Responder"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/ihe-authorOrg"
        },
        "name" : "Author organization of the SubmissionSet",
        "description" : "When the author of the SubmissionSet is an Organization, this extension shall be used.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.BasicAudit.MHD5.Create"
        },
        "name" : "Basic AuditEvent for a successful Create not related to a Patient",
        "description" : "A basic AuditEvent profile for when a RESTful Create action happens successfully.\n\n- Given a Resource Create is requested \n- And that resource does not have a Patient subject or is otherwise associated with a Patient\n  - when the resource is Patient specific then [PatientCreate](StructureDefinition-IHE.BasicAudit.MHD5.PatientCreate.html) is used\n- And the request is authorized\n  - Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)\n- When successful\n  - Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome\n- Then the AuditEvent recorded will conform",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.BasicAudit.MHD5.PatientCreate"
        },
        "name" : "Basic AuditEvent for a successful Create with known Patient subject",
        "description" : "A basic AuditEvent profile for when a RESTful Create action happens successfully, and where there is an identifiable Patient subject associated with the create of the Resource.\n\n- Given a Resource Create is requested \n- And that resource has a Patient subject or is otherwise associated with a Patient\n- And the request is authorized\n  - Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)\n- When successful\n  - Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome\n- Then the AuditEvent recorded will conform",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.BasicAudit.MHD5.Query"
        },
        "name" : "Basic AuditEvent for a successful Query",
        "description" : "A basic AuditEvent profile for when a RESTful Query / Search action happens successfully.\n\n- Given a RESTful Query is requested\n- And the request does not have a Patient subject indicated\n  - The requestor logging the event would potentially not know they have requested Patient specific data\n  - The data objects may not be patient specific kind of objects\n  - when the request is Patient specific then [PatientQuery](StructureDefinition-IHE.BasicAudit.MHD5.PatientQuery.html) is used\n- And the request is authorized\n  - Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)\n- When successful\n  - Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome\n  - Note success may result in zero or more results. The number of results and the content of the results are not recorded.\n- And the results are not Patient specific\n  - when the results are Patient specific then [PatientQuery](StructureDefinition-IHE.BasicAudit.MHD5.PatientQuery.html) are used\n- Then the AuditEvent recorded will conform\n  - The raw search request is base64 encoded and placed in the .entity[query].query element. The base64 encoding of the raw search request enables preserving exactly what was requested, including possibly malicious patterns. This enables detection of malicious or malformed requests.\n  - The cleaned search may be recorded (not base64) in the .entity[query].description. The cleaned search request would have removed parameters that were not understood/supported. The cleaned search request in the .description element enables more efficient processing.\n\nNote: the pattern defined in DICOM and IHE have the client is identified as the Source Role ID, and the server is identified as the Destination Role ID. This represents the query parameters are flowing from the client to the server. This may not be so obvious, as the data actually flows the opposite direction. This pattern is established and thus followed here.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.BasicAudit.MHD5.PatientQuery"
        },
        "name" : "Basic AuditEvent for a successful Query with Patient",
        "description" : "A basic AuditEvent profile for when a RESTful Query action happens successfully, and where there is an identifiable Patient subject associated with the read Resource(s).\n\n- Given a RESTful Query is requested\n- And the request is for a Patient subject indicated\n  - The requestor includes a Patient id or identifier as a query parameter\n  - The requestor security context is limited to a given Patient identity\n- And the request is authorized\n  - Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)\n- When successful\n  - Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome\n  - Note success may result in zero or more results. The number of results and the content of the results are not recorded.\n- Then the AuditEvent recorded will conform\n  - The raw search request is base64 encoded and placed in the .entity[query].query element. The base64 encoding of the raw search request enables preserving exactly what was requested, including possibly malicious patterns. This enables detection of malicious or malformed requests.\n  - The cleaned search may be recorded (not base64) in the .entity[query].description. The cleaned search request would have removed parameters that were not understood/supported. The cleaned search request in the .description element enables more efficient processing.\n- And When multiple patient results are returned, one AuditEvent is created for every Patient identified in the resulting search set. Note this is true when the search set bundle includes any number of resources that collectively reference multiple Patients. This includes one Resource with multiple subject values, or many Resources with single subject values that are different.\n\nNote: the pattern defined in DICOM and IHE have that the client is identified as the Source Role ID, and the server is identified as the Destination Role ID. This may not be so obvious, as the data actually flows the opposite direction. This pattern is established and thus followed here.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.BasicAudit.MHD5.Read"
        },
        "name" : "Basic AuditEvent for a successful Read",
        "description" : "A basic AuditEvent profile for when a RESTful Read action happens successfully.\n\n- Given a Resource Read is requested \n- And that resource does not have a Patient subject or is otherwise associated with a Patient\n  - when the resource is Patient specific then [PatientRead](StructureDefinition-IHE.BasicAudit.MHD5.PatientRead.html) is used\n- And the request is authorized\n  - Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)\n- When successful\n  - Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome\n- Then the AuditEvent recorded will conform",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.BasicAudit.MHD5.PatientRead"
        },
        "name" : "Basic AuditEvent for a successful Read with a Patient",
        "description" : "A basic AuditEvent profile for when a RESTful Read action happens successfully, and where there is an identifiable Patient subject associated with the read Resource.\n\n- Given a Resource Read is requested \n- And that resource has a Patient subject or is otherwise associated with a Patient\n- And the request is authorized\n  - Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)\n- When successful\n  - Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome\n- Then the AuditEvent recorded will conform",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/ihe-designationType"
        },
        "name" : "Clinical code of the List",
        "description" : "Expresses contentType of submissionSet or the codeList of a Folder. Usually expressed in LOINC or SNOMED.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/IHE.MHD.DocumentConsumer"
        },
        "name" : "Document Consumer (client)",
        "description" : "IHE ITI Mobile access to Health Documents (MHD) - Document Consumer (client).",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/IHE.MHD.DocumentRecipient"
        },
        "name" : "Document Recipient",
        "description" : "IHE ITI Mobile access to Health Documents (MHD) - Document Recipient - with no declared Options or all declared Options.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/IHE.MHD.DocumentRecipient.Comprehensive"
        },
        "name" : "Document Recipient implementing Comprehensive Metadata Option",
        "description" : "IHE ITI Mobile access to Health Documents (MHD) - Document Recipient - with Comprehensive declared Option.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/IHE.MHD.DocumentRecipient.Generate"
        },
        "name" : "Document Recipient implementing Generate Metadata Option",
        "description" : "IHE ITI Mobile access to Health Documents (MHD) - Document Recipient - with Generate Metadata declared Option.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/IHE.MHD.DocumentRecipient.Fdoc"
        },
        "name" : "Document Recipient implementing ITI-65 FHIR Documents Publish Option",
        "description" : "IHE ITI Mobile access to Health Documents (MHD) - Document Recipient - with ITI-65 FHIR Documents Publish declared Option.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/IHE.MHD.DocumentRecipient.Simplified"
        },
        "name" : "Document Recipient implementing Simplified Publish Option",
        "description" : "IHE ITI Mobile access to Health Documents (MHD) - Document Recipient - with Simplified Publish declared Option.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/IHE.MHD.DocumentRecipient.UnContained"
        },
        "name" : "Document Recipient implementing UnContained References Option",
        "description" : "IHE ITI Mobile access to Health Documents (MHD) - Document Recipient - with UnContained declared Option.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/IHE.MHD.DocumentResponder"
        },
        "name" : "Document Responder (server)",
        "description" : "IHE ITI Mobile access to Health Documents (MHD) - Document Responder (server).",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/IHE.MHD.DocumentSource"
        },
        "name" : "Document Source (publisher)",
        "description" : "IHE ITI Mobile access to Health Documents (MHD) - Document Source (publisher) - with no declared Options or all declared Options.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/IHE.MHD.DocumentSource.Comprehensive"
        },
        "name" : "Document Source (publisher) implementing Comprehensive Metadata Option",
        "description" : "IHE ITI Mobile access to Health Documents (MHD) - Document Source (publisher) - with Comprehensive Metadata Option.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/IHE.MHD.DocumentSource.Fdoc"
        },
        "name" : "Document Source (publisher) implementing ITI-65 FHIR Documents Publish Option",
        "description" : "IHE ITI Mobile access to Health Documents (MHD) - Document Source (publisher) - with ITI-65 FHIR Documents Publish Option.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/IHE.MHD.DocumentSource.Generate"
        },
        "name" : "Document Source (publisher) implementing the Generate Metadata Option",
        "description" : "IHE ITI Mobile access to Health Documents (MHD) - Document Source (publisher) - with the Generate Metadata declared Options and may also declare other Options.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/IHE.MHD.DocumentSource.Simplified"
        },
        "name" : "Document Source (publisher) implementing the Simplified Publish Option",
        "description" : "IHE ITI Mobile access to Health Documents (MHD) - Document Source (publisher) - with the Simplified Publication declared Options and may also declare other Options.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/IHE.MHD.DocumentSource.UnContained"
        },
        "name" : "Document Source (publisher) implementing UnContained References Option",
        "description" : "IHE ITI Mobile access to Health Documents (MHD) - Document Source (publisher) - with UnContained Option.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "DocumentReference"
          }
        ],
        "reference" : {
          "reference" : "DocumentReference/ex-DocumentReferenceComprehensive"
        },
        "name" : "DocumentReference for Comprehensive fully filled metadata",
        "description" : "Example of a Comprehensive DocumentReference resource. This is fully filled for all mandatory elements and all optional elements.",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.DocumentReference"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "DocumentReference"
          }
        ],
        "reference" : {
          "reference" : "DocumentReference/ex-DocumentReferenceComprehensiveDelayedAssembly"
        },
        "name" : "DocumentReference for Comprehensive fully filled metadata for a Deferred Creation",
        "description" : "Example of a Comprehensive DocumentReference resource. \r\n- This is fully filled for all mandatory elements and all optional elements.\r\n- This specifies a Delayed Document Assembly Document.\r\n  - Thus the hash is the fixed value da39a3ee5e6b4b0d3255bfef95601890afd80709\r\n  - and the size is explicitly zero\r\n  - and when a Document Consumer retrieves the URL, then the document will be assembled and returned to it\r\n  - and the DocumentReference would be updated with the resulting hash and size thus becoming a static entry",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.DocumentReference"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "DocumentReference"
          }
        ],
        "reference" : {
          "reference" : "DocumentReference/ex-DocumentReferenceComprehensiveWithBinary"
        },
        "name" : "DocumentReference for Comprehensive fully filled metadata for a document in a Binary",
        "description" : "Example of a Comprehensive DocumentReference resource. \r\n- This is fully filled for all mandatory elements.\r\n- This specifies a Document in a Binary.",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.DocumentReference"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "DocumentReference"
          }
        ],
        "reference" : {
          "reference" : "DocumentReference/ex-DocumentReferenceComprehensiveOnDemand"
        },
        "name" : "DocumentReference for Comprehensive fully filled metadata for a On-Demand document",
        "description" : "Example of a Comprehensive DocumentReference resource. \r\n- This is fully filled for all mandatory elements.\r\n- This specifies a On-Demand Document.\r\n  - Thus the hash is not provided\r\n  - and the size is not provided\r\n  - and when a Document Consumer retrieves the URL, then a new document will be created and returned to it\r\n  - and a linked snapshot DocumentReference would be created with the resulting hash and size thus becoming a static entry",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.DocumentReference"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/ex-patchParameters"
        },
        "name" : "DocumentReference for Comprehensive metadata beeing replaced",
        "description" : "Example of a comprehensive DocumentReference resource beeing replaced",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Patch.Parameters"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "DocumentReference"
          }
        ],
        "reference" : {
          "reference" : "DocumentReference/ex-DocumentReferenceUnContainedFully"
        },
        "name" : "DocumentReference for Comprehensive minimally filled metadata",
        "description" : "Example of a UnContained References Option with Comprehensive DocumentReference resource. This is fully filled for all mandatory elements and optional elements.",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.DocumentReference"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "DocumentReference"
          }
        ],
        "reference" : {
          "reference" : "DocumentReference/ex-DocumentReferenceUnContained"
        },
        "name" : "DocumentReference for Comprehensive minimally metadata",
        "description" : "Example of a Comprehensive DocumentReference resource. This is minimally filled for all mandatory elements.",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.DocumentReference"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "DocumentReference"
          }
        ],
        "reference" : {
          "reference" : "DocumentReference/ex-DocumentReferenceMinimal"
        },
        "name" : "DocumentReference for Minimal metadata",
        "description" : "Example of a minimal DocumentReference resource. This is very unlikely to be acceptable anywhere, but it is the minimum required.",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.DocumentReference"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "DocumentReference"
          }
        ],
        "reference" : {
          "reference" : "DocumentReference/ex-DocumentReferenceMinimalEncounter"
        },
        "name" : "DocumentReference for Minimal metadata with an encounter",
        "description" : "Example of a minimal DocumentReference resource. This has minimal metadata plus an encounter and custodian.",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.DocumentReference"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "DocumentReference"
          }
        ],
        "reference" : {
          "reference" : "DocumentReference/ex-DocumentReferenceSimplifiedPublish"
        },
        "name" : "DocumentReference for Simplified Publish with an encounter",
        "description" : "Example of a Simplified Publish DocumentReference resource. This has minimal metadata plus an encounter and custodian.",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.SimplifiedPublish.DocumentReference"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Binary"
          }
        ],
        "reference" : {
          "reference" : "Binary/ex-binary"
        },
        "name" : "Dummy Binary document that says: Hello World",
        "description" : "For Bundling Example binary that \n- holds \\\"Hello World\\\"\n- size 11\n- hash 0a4d55a8d778e5022fab701977c5d840bbc486d0\n- base64 of the hash MGE0ZDU1YThkNzc4ZTUwMjJmYWI3MDE5NzdjNWQ4NDBiYmM0ODZkMA==",
        "isExample" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-dummyBundleDocAndBinary"
        },
        "name" : "Dummy Bundle with DocumentReference + Binary",
        "description" : "Dummy Bundle with a DocumentReferenece and Binary\r\n- with 1 documentReference\r\n- with 1 document Binary",
        "isExample" : true
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
        "name" : "Dummy Device example",
        "description" : "Dummy Device example for completeness sake. No actual use of this resource other than an example target",
        "isExample" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "DocumentReference"
          }
        ],
        "reference" : {
          "reference" : "DocumentReference/ex-documentreference2"
        },
        "name" : "Dummy DocumentReference 2 example",
        "description" : "Dummy DocumentReference 2 example for completeness sake. No actual use of this resource other than an example target",
        "isExample" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "DocumentReference"
          }
        ],
        "reference" : {
          "reference" : "DocumentReference/ex-documentreference"
        },
        "name" : "Dummy DocumentReference example",
        "description" : "Dummy DocumentReference example for completeness sake. No actual use of this resource other than an example target",
        "isExample" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Encounter"
          }
        ],
        "reference" : {
          "reference" : "Encounter/ex-encounter"
        },
        "name" : "Dummy Encounter example",
        "description" : "Dummy Encounter example for completness sake. No actual use of this resource other than an example target",
        "isExample" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "List"
          }
        ],
        "reference" : {
          "reference" : "List/ex-list"
        },
        "name" : "Dummy List example",
        "description" : "Dummy List example for completeness sake. No actual use of this resource other than an example target",
        "isExample" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/ex-organization"
        },
        "name" : "Dummy Organization example",
        "description" : "Dummy Organization example for completeness sake. No actual use of this resource other than an example target",
        "isExample" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/ex-patient"
        },
        "name" : "Dummy Patient example",
        "description" : "Dummy patient example for completeness sake. No actual use of this resource other than an example target",
        "isExample" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Practitioner"
          }
        ],
        "reference" : {
          "reference" : "Practitioner/ex-practitioner"
        },
        "name" : "Dummy Practitioner example",
        "description" : "Dummy Practitioner example for completeness sake. No actual use of this resource other than an example target",
        "isExample" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/BasicAuditEntityType"
        },
        "name" : "Entity Types that are defined in IHE BasicAudit",
        "description" : "These are new codes used in BasicAudit IG, where AuditEvent.entity is used to hold a specific kind of data that is not covered by the existing valueSet.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/BasicAuditEntityTypesVS"
        },
        "name" : "Entity Types used by IHE BasicAudit",
        "description" : "For use with AuditEvent.entity.type.  This includes codes defined in the BasicAudit.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:complex-type"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.EntryUUID.Identifier"
        },
        "name" : "entryUUID Identifier",
        "description" : "entryUUID Identifier holding a UUID",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/ex-input-binary"
        },
        "name" : "ex-input-binary",
        "description" : "example Parameters with a binary. Note that the Binary is not a CDA or FHIR document, but is provided for example purposes.",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.GenerateMetadata.Parameters.In"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/ex-input-doc-bundle"
        },
        "name" : "ex-input-doc-bundle",
        "description" : "example Parameters with a Document Bundle",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.GenerateMetadata.Parameters.In"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "List"
          }
        ],
        "reference" : {
          "reference" : "List/ex-compEmailPackage"
        },
        "name" : "Example Comprehensive Email SubmissionSet",
        "description" : "SubmissionSet in List resource conforming Comprehensive metadata with an intendedRecipient",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.SubmissionSet"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "List"
          }
        ],
        "reference" : {
          "reference" : "List/ex-compFolder"
        },
        "name" : "Example Comprehensive Folder",
        "description" : "Folder in List resource conforming only to Comprehensive metadata",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.Folder"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "List"
          }
        ],
        "reference" : {
          "reference" : "List/ex-compSubmissionSetFull"
        },
        "name" : "Example Comprehensive Full SubmissionSet",
        "description" : "SubmissionSet in List resource conforming fully to Comprehensive metadata. This has all elements fully populated.",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.SubmissionSet"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "List"
          }
        ],
        "reference" : {
          "reference" : "List/ex-compSubmissionSetList"
        },
        "name" : "Example Comprehensive SubmissionSet",
        "description" : "SubmissionSet in List resource conforming minimally to Comprehensive metadata",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.SubmissionSet"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Binary"
          }
        ],
        "reference" : {
          "reference" : "Binary/ex-b-binary"
        },
        "name" : "Example document that says: Hello World",
        "description" : "Example binary that holds just Hello World\r\n- size 11\r\n- hash 0a4d55a8d778e5022fab701977c5d840bbc486d0\r\n- base64 of the hash MGE0ZDU1YThkNzc4ZTUwMjJmYWI3MDE5NzdjNWQ4NDBiYmM0ODZkMA==",
        "isExample" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "List"
          }
        ],
        "reference" : {
          "reference" : "List/ex-minimalFolder"
        },
        "name" : "Example Minimal Folder",
        "description" : "Folder in List resource conforming only to Minimal metadata",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.Folder"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-fhir-document-bundle"
        },
        "name" : "Example of a FHIR-Document Bundle",
        "description" : "An example of a FHIR-Document Bundle",
        "isExample" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-findDocumentListsResponse"
        },
        "name" : "Example of a Find Document Lists Response Message with a folder",
        "description" : "Example of a Find Documents List Response Bundle witha folder",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.FindDocumentListsResponseMessage"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-findDocumentReferencesResponse"
        },
        "name" : "Example of a Find Document References Response Message",
        "description" : "Example of a Find Document References Bundle Search Set with a single DocumentReference",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.FindDocumentReferencesResponseMessage"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/FindDocumentReferences"
        },
        "name" : "Example of a FindDocumentReferences Response Bundle",
        "description" : "An example of a searchset Bundle with one DocumentReference as returned by a FindDocumentReferences query",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.FindDocumentReferencesComprehensiveResponseMessage"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-comprehensiveProvideDocumentBundleDocument"
        },
        "name" : "Example Provide Bundle with a FHIR-Document",
        "description" : "An example of a Comprehensive Provide Document Bundle containing a DocumentReference and a FHIR-Document Bundle. This is an example of using a FHIR-Document Bundle rather than a Binary resource to carry the document content.",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.ProvideBundle"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "List"
          }
        ],
        "reference" : {
          "reference" : "List/ex-compSubmissionSetFullUnContained"
        },
        "name" : "Example UnContained Comprehensive Full SubmissionSet",
        "description" : "SubmissionSet in List resource conforming fully to UnContained References Option and Comprehensive Metadata Option. This has all elements fully populated.",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.SubmissionSet"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/FhirStatusVsStatusCode"
        },
        "name" : "FHIR status vs ebRIM Status Type Code",
        "description" : "map between XDS ebRIM Status Type Codes and MHD FHIR DocumentReference.status code.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationDefinition"
          }
        ],
        "reference" : {
          "reference" : "OperationDefinition/generate-metadata"
        },
        "name" : "Generate a DocumentReference from a document",
        "description" : "The $generate-metadata Operation definition. \n\nThis operation is needed as the $generate in FHIR R4 is not properly defined, and thus has incorrect parameters. \nThe MHD $generate-metadata should be replaced when MHD is upgraded to FHIR R5/R6\nThis MHD $generate-metadata is modeled after the expected changes in FHIR R5/R6, and follows the example given in FHIR R4:",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/ihe-referenceId"
        },
        "name" : "Holds values from DocumentEntry.referenceIdList that are not appropriate for .context or .basedOn",
        "description" : "This extension holds values from DocumentEntry.referenceIdList that are not appropriate for .context or .basedOn. This extension can hold any identifier that is related to the DocumentReference. This extension is added for FHIR R5 as DocumentReference does not have a .context.related element, and this extension will not be needed in R6 as there is a DocumentReference.related element there.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.GenerateMetadata.Parameters.In"
        },
        "name" : "IHE MHD GenerateMetadata Parameters In",
        "description" : "The Input Parameters for the $generate-metadata operation\r\n- Input: binary, bundle",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/ihe-intendedRecipient"
        },
        "name" : "Intended recipient of the SubmissionSet",
        "description" : "holds the identity of the organization or person the SubmissionSet is intended. For XDR and eMail (e.g. Direct) this tends to be a Practitioner or Patient with a telecom holding an email, but this is not strictly required.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.List"
        },
        "name" : "MHD common List with designationType",
        "description" : "A profile on the List resource for MHD. Used with both Folder and SubmissionSet.\r\n- MHD adds a codeable Concept to List for use with Folder and SubmissionSet",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.Comprehensive.ProvideBundle"
        },
        "name" : "MHD Comprehensive Provide Document Bundle",
        "description" : "A profile on the Bundle transaction for ITI-65 Provide Document resources with Comprehensive Metadata for MHD.\r\n\r\n- [Comprehensive Metadata](StructureDefinition-IHE.MHD.Comprehensive.ProvideBundle.html): `https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.ProvideBundle`\r\n  - this is otherwise known as XDS-on-FHIR\r\n  - shall be a Transaction Bundle\r\n  - all resources shall be compliant with comprehensive constraints, they may be marked comprehensive\r\n  - shall create a [SubmissionSet type List](StructureDefinition-IHE.MHD.Minimal.SubmissionSet.html) that is either minimal, comprehensive, or unContained\r\n  - may create one or more [DocumentReference](StructureDefinition-IHE.MHD.Minimal.DocumentReference.html) that is either minimal, comprehensive, or unContained\r\n    - with a document as a [Binary](http://hl7.org/fhir/R5/binary.html)\r\n    - or, when implementing the **ITI-65 FHIR Document Publish** option, a [FHIR Document Bundle](http://hl7.org/fhir/R5/bundle.html)\r\n  - may create/update one or more [Folder type List](StructureDefinition-IHE.MHD.Minimal.Folder.html) that is either minimal, comprehensive, or unContained\r\n  - may create/update/read one [Patient](http://hl7.org/fhir/R5/patient.html)",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.Comprehensive.DocumentReference"
        },
        "name" : "MHD DocumentReference Comprehensive",
        "description" : "A profile on the DocumentReference resource for MHD Comprehensive Option with Contained (not UnContained), compatible with XDS-on-FHIR and XCA use.\r\n- MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, \r\n- the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and \r\n- the use defined here is FHIR DocumentReference implementation of the \r\n- ebRIM implementation at [3:4.2.3.2 Document Entry](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.2).\r\n- with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.UnContained.Comprehensive.DocumentReference"
        },
        "name" : "MHD DocumentReference Comprehensive UnContained References Option",
        "description" : "A profile on the DocumentReference resource for MHD with Comprehensive Metadata Option but without a requirement for contained author, authenticator, or sourcePatientInfo. \r\n- MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, \r\n- the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and \r\n- the use defined here is FHIR DocumentReference implementation of the \r\n- ebRIM implementation at [3:4.2.3.2 Document Entry](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.2).\r\n- with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.SimplifiedPublish.DocumentReference"
        },
        "name" : "MHD DocumentReference for Simplified Publish",
        "description" : "A profile on the DocumentReference resource for MHD Simplified Publish constraints. \n- MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, \n- the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and \n- the use defined here is FHIR DocumentReference implementation of the \n- ebRIM implementation at [3:4.2.3.2 Document Entry](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.2).\n- with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)\n\nSimplified Publish\n- Similar to Minimal Metadata constraints\n  - must be status current\n  - must have a patient indicated\n- uses attachment.data to carry the document, rather than attachment.url\n  - so that the Simplified Publish is a simple POST of the DocumentReference\n  - Document Recipient is expected to extract the .data, use .url",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.Minimal.DocumentReference"
        },
        "name" : "MHD DocumentReference Minimal",
        "description" : "A profile on the DocumentReference resource for MHD with minimal metadata constraints. \r\n- MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, \r\n- the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and \r\n- the use defined here is FHIR DocumentReference implementation of the \r\n- ebRIM implementation at [3:4.2.3.2 Document Entry](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.2).\r\n- with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.Patch.Parameters"
        },
        "name" : "MHD DocumentReference Patch Parameters",
        "description" : "A profile on the Parameters resource to update the superseded DocumentReference status.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/DocumentReferenceStats"
        },
        "name" : "MHD DocumentReference status codes",
        "description" : "ValueSet that does not include entered-in-error as that does not map",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.FindDocumentListsResponseMessage"
        },
        "name" : "MHD Find Document Lists Response Message",
        "description" : "A profile on the Find Document Lists Response message for ITI-66",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.FindDocumentReferencesComprehensiveResponseMessage"
        },
        "name" : "MHD Find Document References Comprehensive Response message",
        "description" : "A profile on the Find Document References Comprehensive Response message for ITI-67",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.FindDocumentReferencesResponseMessage"
        },
        "name" : "MHD Find Document References Response message",
        "description" : "A profile on the Find Document References Response message for ITI-67",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.Comprehensive.Folder"
        },
        "name" : "MHD Folder Comprehensive",
        "description" : "A profile on the List resource for MHD Comprehensive Metadata Folder. Note UnContained has no impact on Folder.\r\n- MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, \r\n- the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and \r\n- the use defined here is FHIR List for use as a Folder implementation of the \r\n- ebRIM implementation at [3:4.2.3.4 Folder Attributes](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.4).\r\n- with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/MHDprovideFolderActions"
        },
        "name" : "MHD Folder List Types ValueSet",
        "description" : "A ValueSet of the allowed actions in a ITI-65 Provide Document Bundle for the Folder List type Resources. Where Folders are allowed to be Updated in addition to Created.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.Minimal.Folder"
        },
        "name" : "MHD Folder Minimal",
        "description" : "A profile on the List resource for MHD use as a Folder with minimal metadata constraints. \r\n- MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, \r\n- the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and \r\n- the use defined here is FHIR List for use as a Folder implementation of the \r\n- ebRIM implementation at [3:4.2.3.4 Folder Attributes](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.4).\r\n- with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/MHDlistTypes"
        },
        "name" : "MHD List Types",
        "description" : "To use the List resource for two different use-cases we define a code-system with the types of List needed in MHD",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/MHDlistTypesVS"
        },
        "name" : "MHD List Types ValueSet",
        "description" : "ValueSet of the MHD List Types allowed",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.Minimal.ProvideBundle"
        },
        "name" : "MHD Minimal Provide Document Bundle",
        "description" : "A profile on the Bundle transaction for ITI-65 Provide Document resources with Minimal metadata for MHD.\r\n\r\n- [Minimal Metadata](StructureDefinition-IHE.MHD.Minimal.ProvideBundle.html): `https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.ProvideBundle`\r\n  - shall be a Transaction Bundle\r\n  - all resources shall be compliant with minimal constraints, they may be marked minimal, comprehensive, or unContained\r\n  - shall create a [SubmissionSet type List](StructureDefinition-IHE.MHD.Minimal.SubmissionSet.html) that is either minimal, comprehensive, or unContained\r\n  - may create one or more [DocumentReference](StructureDefinition-IHE.MHD.Minimal.DocumentReference.html) that is either minimal, comprehensive, or unContained\r\n    - with a document as a [Binary](http://hl7.org/fhir/R5/binary.html)\r\n    - or, when implementing the **ITI-65 FHIR Document Publish** option, a [FHIR Document Bundle](http://hl7.org/fhir/R5/bundle.html)\r\n  - when DocumentReference replace is used the UpdateDocumentRefs slice is used to indicate the superseded DocumentReference\r\n  - may create/update one or more [Folder type List](StructureDefinition-IHE.MHD.Minimal.Folder.html) that is either minimal, comprehensive, or unContained\r\n  - may create/update/read one [Patient](http://hl7.org/fhir/R5/patient.html)",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/MHDprovidePatientActions"
        },
        "name" : "MHD Patient Types ValueSet",
        "description" : "A ValueSet of the allowed actions in a ITI-65 Provide Document Bundle for the Patient type Resource. Where Patient would typically be indicated as a GET (read), but might be created or updated depending on policy.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.ProvideDocumentBundleResponse"
        },
        "name" : "MHD Provide Document Bundle Response",
        "description" : "A profile on the Bundle transaction-response for ITI-65 Provide Document Bundle response.\n\n- shall be a transaction response\n- shall have at least 1 entry for each entry in the request, in the same order as received in the request\n  - entry response location must be indicated",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.Comprehensive.SubmissionSet"
        },
        "name" : "MHD SubmissionSet Comprehensive",
        "description" : "A profile on the List resource for MHD Comprehensive SubmissionSet.\r\n- MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, \r\n- the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and \r\n- the use defined here is FHIR List for use as a SubmissionSet implementation of the \r\n- ebRIM implementation at [3:4.2.3.3 SubmissionSet Attributes](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.3).\r\n- with use-cases and constraints found in [3:4.3.1 Submission Metadata Attribute Optionality](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3.1) for \r\n  - MHD Comprehensive Option Document Source\r\n  - aka the XDS Document Source requirements\r\n  - aka the XDR Document Source requirements",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.UnContained.Comprehensive.SubmissionSet"
        },
        "name" : "MHD SubmissionSet Comprehensive UnContained",
        "description" : "A profile on the List resource for MHD UnContained Comprehensive SubmissionSet.\r\n- MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, \r\n- the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and \r\n- the use defined here is FHIR List for use as a SubmissionSet implementation of the \r\n- ebRIM implementation at [3:4.2.3.3 SubmissionSet Attributes](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.3).\r\n- with use-cases and constraints found in [3:4.3.1 Submission Metadata Attribute Optionality](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3.1) for \r\n  - MHD Document Source that has implemented both Comprehensive Metadata Option and UnContained References Option",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.Minimal.SubmissionSet"
        },
        "name" : "MHD SubmissionSet Minimal",
        "description" : "A profile on the List resource for MHD SubmissionSet.\r\n- MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, \r\n- the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and \r\n- the use defined here is FHIR List for use as a SubmissionSet implementation of the \r\n- ebRIM implementation at [3:4.2.3.3 SubmissionSet Attributes](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.3).\r\n- with use-cases and constraints found in [3:4.3.1 Submission Metadata Attribute Optionality](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3.1) for \r\n  - Document Source implementing not implementing Comprehensive Metadata Option\r\n  - Document Source implementing UnContained Option but not Comprehensive Option\r\n  - equivalent to XDR Document Source implementing Metadata-Limited Option requirements\r\n  - aka the default MHD Document Source",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.UnContained.Comprehensive.ProvideBundle"
        },
        "name" : "MHD UnContained Comprehensive Provide Document Bundle",
        "description" : "A profile on the Bundle transaction for ITI-65 Provide Document resources with UnContained allowed but requiring Comprehensive Metadata for MHD.\r\n\r\n- [UnContained Comprehensive Metadata](StructureDefinition-IHE.MHD.UnContained.Comprehensive.ProvideBundle.html): `https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.ProvideBundle` \r\n  - note that Minimal Metadata does not require containment, so UnContained Minimal is the same as Minimal Metadata\r\n  - note that UnContained only applies to DocumentReference and SubmissionSet type Lists; so the following apply\r\n  - shall be a Transaction Bundle\r\n  - all resources shall be compliant with comprehensive unContained constraints, they may be marked comprehensive unContained\r\n  - shall create a [SubmissionSet type List](StructureDefinition-IHE.MHD.Minimal.SubmissionSet.html) that is either minimal, comprehensive, or unContained\r\n  - may create one or more [DocumentReference](StructureDefinition-IHE.MHD.Minimal.DocumentReference.html) that is either minimal, comprehensive, or unContained\r\n    - with a document as a [Binary](http://hl7.org/fhir/R5/binary.html)\r\n    - or, when implementing the **ITI-65 FHIR Document Publish** option, a [FHIR Document Bundle](http://hl7.org/fhir/R5/bundle.html)\r\n  - may create/update one or more [Folder type List](StructureDefinition-IHE.MHD.Minimal.Folder.html) that is either minimal, comprehensive, or unContained\r\n  - may create/update/read one [Patient](http://hl7.org/fhir/R5/patient.html)",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/DataSources"
        },
        "name" : "participant source types for RESTful create",
        "description" : "create agent participant types for user operators that are in REST",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-comprehensiveProvideDocumentBundleComplete"
        },
        "name" : "Provide Document Bundle with complete Comprehensive metadata of one document",
        "description" : "Example of a complete comprehensive Provide Document Bundle for a publication.\r\n- The bundle contains\r\n  - SubmissionSet - identifies one documentReference\r\n  - Folder - identifies one documentReference\r\n  - DocumentReference - One DocumentReference\r\n  - Binary - the document\r\n  - the Patient is contained in the DocumentReference\r\n  - the Patient is also a reference to a PIXm/PDQm retrieved Resource.",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.ProvideBundle"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-unContainedComprehensiveProvideDocumentBundleComplete"
        },
        "name" : "Provide Document Bundle with complete UnContained Comprehensive metadata of one document",
        "description" : "Example of a complete uncontained comprehensive Provide Document Bundle for a publication.\r\n- The bundle contains\r\n  - SubmissionSet - identifies one documentReference\r\n  - Folder - identifies one documentReference\r\n  - DocumentReference - One DocumentReference\r\n  - Binary - the document\r\n  - the Practitioner and Organization are references\r\n  - the Patient is also a reference to a PIXm/PDQm retrieved Resource.",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.ProvideBundle"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-comprehensiveProvideDocumentBundleMultiple"
        },
        "name" : "Provide Document Bundle with Comprehensive metadata of multiple static document(s)",
        "description" : "Example of a comprehensive Provide Document Bundle for a publication.\r\n- The bundle contains\r\n  - SubmissionSet - identifies the documentReference(s)\r\n  - DocumentReference - First DocumentReference\r\n  - Binary - the first document\r\n  - DocumentReference - Second DocumentReference\r\n  - Binary - the second document\r\n  - the Patient is contained in the DocumentReference\r\n  - the Patient is also a reference to a PIXm/PDQm retrieved Resource.",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.ProvideBundle"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-comprehensiveProvideDocumentBundleSimple"
        },
        "name" : "Provide Document Bundle with Comprehensive metadata of one document",
        "description" : "Example of a comprehensive Provide Document Bundle for a publication.\r\n- The bundle contains\r\n  - SubmissionSet - identifies one documentReference\r\n  - DocumentReference - One DocumentReference\r\n  - Binary - the document\r\n  - the Patient is contained in the DocumentReference\r\n  - the Patient is also a reference to a PIXm/PDQm retrieved Resource.",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.ProvideBundle"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-comprehensiveProvideDocumentBundleReplace"
        },
        "name" : "Provide Document Bundle with Comprehensive metadata of one document which replaces another document",
        "description" : "Example of a comprehensive Provide Document Bundle for a publication which replaces another document.\r\n- The bundle contains\r\n  - SubmissionSet - identifies one documentReference\r\n  - DocumentReference - Two DocumentReferences, an update to the old DocumentReference and the new DocumentReferences relates to the old DocumentReference\r\n  - Binary - the document\r\n  - the Patient is contained in the DocumentReference\r\n  - the Patient is also a reference to a PIXm/PDQm retrieved Resource.",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.ProvideBundle"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-minimalProvideDocumentBundleSimple"
        },
        "name" : "Provide Document Bundle with Minimal metadata of one document",
        "description" : "Example of a minimal Provide Document Bundle for a push to an email intended recipient.\r\n- The bundle contains\r\n  - SubmissionSet - identifies to whom this is going and one documentReference\r\n  - DocumentReference - One DocumentReference\r\n  - Binary - the document\r\n  - the Patient, as this is a push to a recipient that does not share a patient directory",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.ProvideBundle"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-minimalProvideDocumentBundleSimpleContained"
        },
        "name" : "Provide Document Bundle with Minimal metadata of one document with sourcePatientInfo",
        "description" : "Example of a minimal Provide Document Bundle for a push to an email intended recipient.\r\n- The bundle contains\r\n  - SubmissionSet - identifies to whom this is going and one documentReference\r\n  - DocumentReference - One DocumentReference\r\n  - Binary - the document\r\n  - the Patient is contained in the DocumentReference. This would be more classic XDR/XDM model. Note there is no mention of the patient in the SubmissionSet in this case (hence minimal metadata), and if multiple documents were sent they would implicitly be the same patient, presumably with the same contained Patient; but given it is a contained Patinet there is no way to computably prove this beyond exact comparison of the contained object.",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.ProvideBundle"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-ProvideDocumentBundle-addToFolder"
        },
        "name" : "Provide Document Bundle with one document to be added to an existing folder",
        "description" : "Example of a comprehensive Provide Document Bundle for a publication and added to an existing folder.\r\n- The bundle contains\r\n  - SubmissionSet - identifies one documentReference\r\n  - Folder - existing Folder to be updated\r\n  - DocumentReference - One DocumentReference\r\n  - Binary - the document\r\n  - the Patient is contained in the DocumentReference\r\n  - the Patient is also a reference to a PIXm/PDQm retrieved Resource.",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.ProvideBundle"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/ihe-sourceId"
        },
        "name" : "Publisher organization identity of the SubmissionSet",
        "description" : "The globally unique, immutable, identifier of the entity that contributed the SubmissionSet. When a broker is involved in sending SubmissionSets from a collection of client systems, it shall use a different sourceId for submissions from each separate system to allow for tracking. The format of the identifier is an OID.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-response-comprehensiveProvideDocumentBundleComplete"
        },
        "name" : "Response to fully populated Provide Document Bundle with one document with sourcePatientInfo",
        "description" : "Response bundle example given ex-comprehensiveProvideDocumentBundleComplete\n- for every entry in order given\n  - successful create of SubmissionSet\n  - successful create of Folder\n  - successful create of DocumentReference - classic XDS static document\n  - successful create of Binary",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.ProvideDocumentBundleResponse"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-response-unContainedComprehensiveProvideDocumentBundleCompt"
        },
        "name" : "Response to fully populated Provide Document Bundle with one document with sourcePatientInfo",
        "description" : "Response bundle example given ex-unContainedComprehensiveProvideDocumentBundleComplete\n- for every entry in order given\n  - successful create of SubmissionSet\n  - successful create of DocumentReference - classic XDS static document\n  - successful create of Binary",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.ProvideDocumentBundleResponse"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-response-minimalProvideDocumentBundleSimple"
        },
        "name" : "Response to Provide Document Bundle with Minimal metadata of one document",
        "description" : "Response bundle example given ex-minimalProvideDocumentBundleSimple\r\n- for every entry in order given\r\n  - successful create of SubmissionSet\r\n  - successful create of DocumentReference\r\n  - successful create of Binary\r\n  - successful create of Patient\r\n\r\nNote that in the case of the Patient, it is likely this successful create is just a fake success, as it was more likely to have been matched to a patient that already existed and THAT id was returned. (Alternative could have been a 303)",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.ProvideDocumentBundleResponse"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-response-minimalProvideDocumentBundleSimpleContained"
        },
        "name" : "Response to Provide Document Bundle with Minimal metadata of one document with sourcePatientInfo",
        "description" : "Response bundle example given ex-minimalProvideDocumentBundleSimpleContained\n- for every entry in order given\n  - successful create of SubmissionSet\n  - successful create of DocumentReference\n  - successful create of Binary",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.ProvideDocumentBundleResponse"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-response-comprehensiveProvideDocumentBundleMultiple"
        },
        "name" : "Response to Provide Document Bundle with multiple documents with sourcePatientInfo",
        "description" : "Response bundle example given ex-comprehensiveProvideDocumentBundleMultiple\n- for every entry in order given\n  - successful create of SubmissionSet\n  - successful create of DocumentReference - classic XDS static document\n  - successful create of Binary",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.ProvideDocumentBundleResponse"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-response-comprehensiveProvideDocumentBundleSimple"
        },
        "name" : "Response to Provide Document Bundle with one document with sourcePatientInfo",
        "description" : "Response bundle example given ex-comprehensiveProvideDocumentBundleSimple\n- for every entry in order given\n  - successful create of SubmissionSet\n  - successful create of DocumentReference - classic XDS static document\n  - successful create of Binary",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.ProvideDocumentBundleResponse"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/RestObjectRoles"
        },
        "name" : "RESTful objects role in the event",
        "description" : "The role that the given Object played in the Audit Event recorded",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "SearchParameter"
          }
        ],
        "reference" : {
          "reference" : "SearchParameter/List-DesignationType"
        },
        "name" : "search on the IHE defined extension for designationType",
        "description" : "This SearchParameter enables finding Lists by the designationType code in a submissionSet or folder.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "SearchParameter"
          }
        ],
        "reference" : {
          "reference" : "SearchParameter/List-SourceId"
        },
        "name" : "search on the IHE defined extension for SourceId",
        "description" : "This SearchParameter enables finding Lists by the SourceId of a submissionSet.",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "List"
          }
        ],
        "reference" : {
          "reference" : "List/ex-minimalSubmissionSet"
        },
        "name" : "SubmissionSet for Minimal metadata",
        "description" : "Example of a minimal submissionSet in List resource.",
        "isExample" : true,
        "profile" : [
          "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.SubmissionSet"
        ]
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:complex-type"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.UniqueIdIdentifier"
        },
        "name" : "uniqueId Identifier",
        "description" : "uniqueId Identifier\r\n\r\n- see [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.9.1-identifier-type)",
        "isExample" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:complex-type"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.MHD.SubmissionSetUniqueIdIdentifier"
        },
        "name" : "uniqueId Identifier for SubmissionSet",
        "description" : "uniqueId Identifier holding a OID",
        "isExample" : false
      }
    ],
    "page" : {
      "sourceUrl" : "toc.html",
      "name" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [
        {
          "sourceUrl" : "index.html",
          "name" : "index.html",
          "title" : "MHD Home",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "1331_actors_and_transactions.html",
          "name" : "1331_actors_and_transactions.html",
          "title" : "1:33.1 Actors and Transactions",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "1332_actor_options.html",
          "name" : "1332_actor_options.html",
          "title" : "1:33.2 Actor Options",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "1333_required_grouping.html",
          "name" : "1333_required_grouping.html",
          "title" : "1:33.3 Required Grouping",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "1334_overview.html",
          "name" : "1334_overview.html",
          "title" : "1:33.4 Overview",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "1335_security_considerations.html",
          "name" : "1335_security_considerations.html",
          "title" : "1:33.5 Security Considerations",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "1336_cross_profile_considerations.html",
          "name" : "1336_cross_profile_considerations.html",
          "title" : "1:33.6 Cross Profile Considerations",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "ITI-65.html",
          "name" : "ITI-65.html",
          "title" : "2:3.65 Provide Document Bundle [ITI-65]",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "ITI-66.html",
          "name" : "ITI-66.html",
          "title" : "2:3.66 Find Document Lists [ITI-66]",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "ITI-67.html",
          "name" : "ITI-67.html",
          "title" : "2:3.67 Find Document References [ITI-67]",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "ITI-68.html",
          "name" : "ITI-68.html",
          "title" : "2:3.68 Retrieve Document [ITI-68]",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "ITI-105.html",
          "name" : "ITI-105.html",
          "title" : "2:3.105 Simplified Publish [ITI-105]",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "ITI-106.html",
          "name" : "ITI-106.html",
          "title" : "2:3.106 Generate Metadata [ITI-106]",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "31_xds.html",
          "name" : "31_xds.html",
          "title" : "3:4.2.4.1 Error Codes",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "32_fhir_maps.html",
          "name" : "32_fhir_maps.html",
          "title" : "3:4.5 FHIR Maps",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "testplan.html",
          "name" : "testplan.html",
          "title" : "Test Plan",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "a_issues.html",
          "name" : "a_issues.html",
          "title" : "Issues",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "download.html",
          "name" : "download.html",
          "title" : "Download and Analysis",
          "generation" : "markdown"
        }
      ]
    },
    "parameter" : [
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "copyrightyear"
        },
        "value" : "2020+"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "releaselabel"
        },
        "value" : "Trial-Implementation"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/resources"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "fsh-generated/resources"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/examples"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "active-tables"
        },
        "value" : "false"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-contact"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-jurisdiction"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-publisher"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-version"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "show-inherited-invariants"
        },
        "value" : "false"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "usage-stats-opt-out"
        },
        "value" : "false"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "autoload-resources"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "shownav"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/capabilities"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/extensions"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/models"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/operations"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/profiles"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/vocabulary"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/testing"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-resource"
        },
        "value" : "input/history"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-pages"
        },
        "value" : "template/config"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-pages"
        },
        "value" : "input/images"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-liquid"
        },
        "value" : "template/liquid"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-liquid"
        },
        "value" : "input/liquid"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-qa"
        },
        "value" : "temp/qa"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-temp"
        },
        "value" : "temp/pages"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-output"
        },
        "value" : "output"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/guide-parameter-code",
          "code" : "path-tx-cache"
        },
        "value" : "input-cache/txcache"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-suppressed-warnings"
        },
        "value" : "input/ignoreWarnings.txt"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "path-history"
        },
        "value" : "https://profiles.ihe.net/ITI/MHD/history.html"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "template-html"
        },
        "value" : "template-page.html"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "template-md"
        },
        "value" : "template-page-md.html"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-context"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-copyright"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-license"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "apply-wg"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "fmm-definition"
        },
        "value" : "http://hl7.org/fhir/versions.html#maturity"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "propagate-status"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "excludelogbinaryformat"
        },
        "value" : "true"
      },
      {
        "code" : {
          "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
          "code" : "tabbed-snapshots"
        },
        "value" : "true"
      }
    ]
  }
}

```
