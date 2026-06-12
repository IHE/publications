# Audit Event for De-Identification at Source - De-Identification Handbook v2.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Event for De-Identification at Source**

## Resource Profile: Audit Event for De-Identification at Source 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/DeId/StructureDefinition/IHE.BasicAudit.DeIdentification.Source | *Version*:2.0.0-comment |
| Active as of 2026-06-12 | *Computable Name*:AuditPrivacyDeIdentificationSource |

 
Defines constraints on the AuditEvent Resource to record when a De-Identification happens at the Source. Note that a De-Identification event often impacts many different patients, so many AuditEvent resources need to be created so that each Patient is individually represented. This prevents leakage of other patients' that were also De-Identified at the same time. 
* Export event
* subtype of deidentify or pseudonymize
* shall have source of itself
* shall have a source agent
* should have a recipient agent(s) if known
* may have user, app, organization agent(s) 
* combine with the Security Token pattern
 
* should have the custodian that released the data
* should have the authorizer that represented the patient (may be the patient)
* shall have a patient entity
* may have the consent that authorized the de-identification
* may have the authorizing client token (saml, jwt, etc)
* may have the set of data entity(ies)
 

**Usages:**

* Examples for this Profile: [AuditEvent/ex-auditDeIdentification-source](AuditEvent-ex-auditDeIdentification-source.md) and [AuditEvent/ex-auditReIdentification-source](AuditEvent-ex-auditReIdentification-source.md)
* CapabilityStatements using this Profile: [IHE DeId Audit Creator](CapabilityStatement-IHE.DeId.AuditCreator.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.iti.deid|current/StructureDefinition/StructureDefinition-IHE.BasicAudit.DeIdentification.Source.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.BasicAudit.DeIdentification.Source.csv), [Excel](StructureDefinition-IHE.BasicAudit.DeIdentification.Source.xlsx), [Schematron](StructureDefinition-IHE.BasicAudit.DeIdentification.Source.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.BasicAudit.DeIdentification.Source",
  "url" : "https://profiles.ihe.net/ITI/DeId/StructureDefinition/IHE.BasicAudit.DeIdentification.Source",
  "version" : "2.0.0-comment",
  "name" : "AuditPrivacyDeIdentificationSource",
  "title" : "Audit Event for De-Identification at Source",
  "status" : "active",
  "date" : "2026-06-12T10:52:17-05:00",
  "publisher" : "IHE IT Infrastructure Technical Committee",
  "contact" : [{
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ihe.net/ihe_domains/it_infrastructure/"
    }]
  },
  {
    "telecom" : [{
      "system" : "email",
      "value" : "iti@ihe.net"
    }]
  },
  {
    "name" : "IHE IT Infrastructure Technical Committee",
    "telecom" : [{
      "system" : "email",
      "value" : "iti@ihe.net"
    }]
  }],
  "description" : "Defines constraints on the AuditEvent Resource to record when a De-Identification happens at the Source.\nNote that a De-Identification event often impacts many different patients, so many AuditEvent resources need to be created so that each Patient is individually represented. \nThis prevents leakage of other patients' that were also De-Identified at the same time.\n\n- Export event\n- subtype of deidentify or pseudonymize\n- shall have source of itself\n- shall have a source agent\n- should have a recipient agent(s) if known\n- may have user, app, organization agent(s)\n  - combine with the Security Token pattern\n- should have the custodian that released the data\n- should have the authorizer that represented the patient (may be the patient)\n- shall have a patient entity\n- may have the consent that authorized the de-identification\n- may have the authorizing client token (saml, jwt, etc)\n- may have the set of data entity(ies)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AuditEvent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AuditEvent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AuditEvent",
      "path" : "AuditEvent"
    },
    {
      "id" : "AuditEvent.modifierExtension",
      "path" : "AuditEvent.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "AuditEvent.type",
      "path" : "AuditEvent.type",
      "patternCoding" : {
        "system" : "http://dicom.nema.org/resources/ontology/DCM",
        "code" : "110106"
      }
    },
    {
      "id" : "AuditEvent.subtype",
      "path" : "AuditEvent.subtype",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this"
        }],
        "description" : "needs to at least be a deidentify event",
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "AuditEvent.subtype:deidentify",
      "path" : "AuditEvent.subtype",
      "sliceName" : "deidentify",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://profiles.ihe.net/ITI/DeId/ValueSet/IHE.BasicAudit.DeIdentification.Subtype"
      }
    },
    {
      "id" : "AuditEvent.action",
      "path" : "AuditEvent.action",
      "patternCode" : "R"
    },
    {
      "id" : "AuditEvent.outcome",
      "path" : "AuditEvent.outcome",
      "min" : 1
    },
    {
      "id" : "AuditEvent.outcomeDesc",
      "path" : "AuditEvent.outcomeDesc",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.purposeOfEvent",
      "path" : "AuditEvent.purposeOfEvent",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent",
      "path" : "AuditEvent.agent",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type"
        }],
        "description" : "source, recipient, and possibly the user who participated",
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "AuditEvent.agent:source",
      "path" : "AuditEvent.agent",
      "sliceName" : "source",
      "min" : 1,
      "max" : "1",
      "constraint" : [{
        "key" : "val-audit-source",
        "severity" : "error",
        "human" : "The Audit Source is this agent too.",
        "expression" : "$this.who = %resource.source.observer",
        "source" : "https://profiles.ihe.net/ITI/DeId/StructureDefinition/IHE.BasicAudit.DeIdentification.Source"
      }]
    },
    {
      "id" : "AuditEvent.agent:source.type",
      "path" : "AuditEvent.agent.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://dicom.nema.org/resources/ontology/DCM",
          "code" : "110153"
        }]
      }
    },
    {
      "id" : "AuditEvent.agent:source.who",
      "path" : "AuditEvent.agent.who",
      "min" : 1
    },
    {
      "id" : "AuditEvent.agent:source.network",
      "path" : "AuditEvent.agent.network",
      "min" : 1
    },
    {
      "id" : "AuditEvent.agent:recipient",
      "path" : "AuditEvent.agent",
      "sliceName" : "recipient",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "AuditEvent.agent:recipient.type",
      "path" : "AuditEvent.agent.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://dicom.nema.org/resources/ontology/DCM",
          "code" : "110152"
        }]
      }
    },
    {
      "id" : "AuditEvent.agent:recipient.who",
      "path" : "AuditEvent.agent.who",
      "min" : 1
    },
    {
      "id" : "AuditEvent.agent:recipient.network",
      "path" : "AuditEvent.agent.network",
      "min" : 1
    },
    {
      "id" : "AuditEvent.agent:custodian",
      "path" : "AuditEvent.agent",
      "sliceName" : "custodian",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "AuditEvent.agent:custodian.type",
      "path" : "AuditEvent.agent.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "159541003"
        }]
      }
    },
    {
      "id" : "AuditEvent.agent:custodian.who",
      "path" : "AuditEvent.agent.who",
      "min" : 1
    },
    {
      "id" : "AuditEvent.agent:authorizer",
      "path" : "AuditEvent.agent",
      "sliceName" : "authorizer",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "AuditEvent.agent:authorizer.type",
      "path" : "AuditEvent.agent.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "429577009"
        }]
      }
    },
    {
      "id" : "AuditEvent.agent:authorizer.who",
      "path" : "AuditEvent.agent.who",
      "min" : 1
    },
    {
      "id" : "AuditEvent.entity",
      "path" : "AuditEvent.entity",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type"
        }],
        "description" : "patient and some data involved",
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "AuditEvent.entity:patient",
      "path" : "AuditEvent.entity",
      "sliceName" : "patient",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "AuditEvent.entity:patient.what",
      "path" : "AuditEvent.entity.what",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "AuditEvent.entity:patient.type",
      "path" : "AuditEvent.entity.type",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/audit-entity-type",
        "code" : "1"
      }
    },
    {
      "id" : "AuditEvent.entity:patient.role",
      "path" : "AuditEvent.entity.role",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/object-role",
        "code" : "1"
      }
    },
    {
      "id" : "AuditEvent.entity:deid",
      "path" : "AuditEvent.entity",
      "sliceName" : "deid",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "AuditEvent.entity:deid.what",
      "path" : "AuditEvent.entity.what",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity:deid.type",
      "path" : "AuditEvent.entity.type",
      "min" : 1,
      "patternCoding" : {
        "system" : "https://profiles.ihe.net/ITI/DeId/CodeSystem/DeIdentificationEntityType",
        "code" : "DeId-algorithm"
      }
    },
    {
      "id" : "AuditEvent.entity:consent",
      "path" : "AuditEvent.entity",
      "sliceName" : "consent",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "AuditEvent.entity:consent.what",
      "path" : "AuditEvent.entity.what",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity:consent.type",
      "path" : "AuditEvent.entity.type",
      "min" : 1,
      "patternCoding" : {
        "system" : "http://hl7.org/fhir/resource-types",
        "code" : "Consent"
      }
    }]
  }
}

```
