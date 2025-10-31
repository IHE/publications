# Audit Event for Find Document References Transaction at Document Consumer - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Event for Find Document References Transaction at Document Consumer**

## Resource Profile: Audit Event for Find Document References Transaction at Document Consumer 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.FindDocumentReferences.Audit.Consumer | *Version*:5.0.0-comment |
| Active as of 2025-10-31 | *Computable Name*:AuditFindDocumentReferencesConsumer |

 
Defines constraints on the AuditEvent Resource to record when a Find Document References Transaction happens, as recorded by the Document Consumer. 
* Build off of the IHE BasicAudit PatientQuery event
* add the ITI-67 as a subtype
* client is Document Consumer
* server is Document Responder
* entity slices for query, and patient are required
* entity slice for transaction is available
 

**Usages:**

* Examples for this Profile: [AuditEvent/ex-auditFindDocumentReferences-consumer](AuditEvent-ex-auditFindDocumentReferences-consumer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.MHD.FindDocumentReferences.Audit.Consumer)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.FindDocumentReferences.Audit.Consumer.csv), [Excel](StructureDefinition-IHE.MHD.FindDocumentReferences.Audit.Consumer.xlsx), [Schematron](StructureDefinition-IHE.MHD.FindDocumentReferences.Audit.Consumer.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.FindDocumentReferences.Audit.Consumer",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.FindDocumentReferences.Audit.Consumer",
  "version" : "5.0.0-comment",
  "name" : "AuditFindDocumentReferencesConsumer",
  "title" : "Audit Event for Find Document References Transaction at Document Consumer",
  "status" : "active",
  "date" : "2025-10-31T11:44:01-05:00",
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
  "description" : "Defines constraints on the AuditEvent Resource to record when a Find Document References Transaction happens, as recorded by the Document Consumer.\n- Build off of the IHE BasicAudit PatientQuery event\n- add the ITI-67 as a subtype\n- client is Document Consumer\n- server is Document Responder\n- entity slices for query, and patient are required\n- entity slice for transaction is available",
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
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
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
  "baseDefinition" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.BasicAudit.MHD5.PatientQuery",
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
        "id" : "AuditEvent.category",
        "path" : "AuditEvent.category",
        "min" : 2
      },
      {
        "id" : "AuditEvent.category:iti67",
        "path" : "AuditEvent.category",
        "sliceName" : "iti67",
        "min" : 1,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "urn:ihe:event-type-code",
              "code" : "ITI-67",
              "display" : "Find Document References"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.agent:client",
        "path" : "AuditEvent.agent",
        "sliceName" : "client",
        "short" : "Document Consumer",
        "constraint" : [
          {
            "key" : "val-audit-source",
            "severity" : "error",
            "human" : "The Audit Source is this agent too.",
            "expression" : "$this.who = %resource.source.observer",
            "source" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.FindDocumentReferences.Audit.Consumer"
          }
        ]
      },
      {
        "id" : "AuditEvent.agent:server",
        "path" : "AuditEvent.agent",
        "sliceName" : "server",
        "short" : "Document Responder"
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
