# Audit Event for Find Document References Transaction at Document Responder - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Event for Find Document References Transaction at Document Responder**

## Resource Profile: Audit Event for Find Document References Transaction at Document Responder 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.FindDocumentReferences.Audit.Responder | *Version*:4.2.3 |
| Active as of 2025-10-31 | *Computable Name*:AuditFindDocumentReferencesResponder |

 
Defines constraints on the AuditEvent Resource to record when a Find Document References Transaction happens, as recorded by the Document Responder. 
* Build off of the IHE BasicAudit PatientQuery event
* add the ITI-67 as a subtype
* client is Document Consumer
* server is Document Responder
* entity slices for query, and patient are required
* entity slice for transaction is available
 

**Usages:**

* Examples for this Profile: [AuditEvent/ex-auditFindDocumentReferences-post-responder](AuditEvent-ex-auditFindDocumentReferences-post-responder.md) and [AuditEvent/ex-auditFindDocumentReferences-responder](AuditEvent-ex-auditFindDocumentReferences-responder.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.MHD.FindDocumentReferences.Audit.Responder)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.FindDocumentReferences.Audit.Responder.csv), [Excel](StructureDefinition-IHE.MHD.FindDocumentReferences.Audit.Responder.xlsx), [Schematron](StructureDefinition-IHE.MHD.FindDocumentReferences.Audit.Responder.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.FindDocumentReferences.Audit.Responder",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.FindDocumentReferences.Audit.Responder",
  "version" : "4.2.3",
  "name" : "AuditFindDocumentReferencesResponder",
  "title" : "Audit Event for Find Document References Transaction at Document Responder",
  "status" : "active",
  "date" : "2025-10-31T14:32:55-05:00",
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
  "description" : "Defines constraints on the AuditEvent Resource to record when a Find Document References Transaction happens, as recorded by the Document Responder.\n- Build off of the IHE BasicAudit PatientQuery event\n- add the ITI-67 as a subtype\n- client is Document Consumer\n- server is Document Responder\n- entity slices for query, and patient are required\n- entity slice for transaction is available",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "dicom",
      "uri" : "http://nema.org/dicom",
      "name" : "DICOM Tag Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "w3c.prov",
      "uri" : "http://www.w3.org/ns/prov",
      "name" : "W3C PROV"
    },
    {
      "identity" : "fhirprovenance",
      "uri" : "http://hl7.org/fhir/provenance",
      "name" : "FHIR Provenance Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AuditEvent",
  "baseDefinition" : "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.PatientQuery",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "AuditEvent",
        "path" : "AuditEvent"
      },
      {
        "id" : "AuditEvent.modifierExtension",
        "path" : "AuditEvent.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.subtype",
        "path" : "AuditEvent.subtype",
        "min" : 2
      },
      {
        "id" : "AuditEvent.subtype:iti67",
        "path" : "AuditEvent.subtype",
        "sliceName" : "iti67",
        "min" : 1,
        "max" : "1",
        "patternCoding" : {
          "system" : "urn:ihe:event-type-code",
          "code" : "ITI-67",
          "display" : "Find Document References"
        }
      },
      {
        "id" : "AuditEvent.agent:client",
        "path" : "AuditEvent.agent",
        "sliceName" : "client",
        "short" : "Document Consumer"
      },
      {
        "id" : "AuditEvent.agent:server",
        "path" : "AuditEvent.agent",
        "sliceName" : "server",
        "short" : "Document Responder",
        "constraint" : [
          {
            "key" : "val-audit-source",
            "severity" : "error",
            "human" : "The Audit Source is this agent too.",
            "expression" : "$this.who = %resource.source.observer",
            "source" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.FindDocumentReferences.Audit.Responder"
          }
        ]
      },
      {
        "id" : "AuditEvent.entity:query",
        "path" : "AuditEvent.entity",
        "sliceName" : "query",
        "short" : "Search Parameters"
      },
      {
        "id" : "AuditEvent.entity:patient",
        "path" : "AuditEvent.entity",
        "sliceName" : "patient",
        "short" : "Patient"
      }
    ]
  }
}

```
