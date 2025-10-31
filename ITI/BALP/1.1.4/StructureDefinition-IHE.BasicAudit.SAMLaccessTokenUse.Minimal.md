# Basic AuditEvent pattern for when an activity was authorized by an SAML access token Minimal - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Basic AuditEvent pattern for when an activity was authorized by an SAML access token Minimal**

## Resource Profile: Basic AuditEvent pattern for when an activity was authorized by an SAML access token Minimal 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.SAMLaccessTokenUse.Minimal | *Version*:1.1.4 |
| Active as of 2025-10-31 | *Computable Name*:SAMLaccessTokenUseMinimal |

 
A basic AuditEvent profile for when an activity was authorized by an SAML access token. This profile is expected to be used with some other detail that explains the activity. This profile only covers the SAML access token. 
* Given an activity has occurred
* And SAML is used to authorize a transaction
* And the given activity is using the SAML 
* XUA
* SAML requires ID and Issuer, so this profile of AuditEvent will work with any SAML token.
* usually SOAP, but not limited to SOAP
 
* When an AuditEvent is recorded for the activity
* Presumes that the consent and server have been identified in agent elements, best case with certificate identities
* Then that AuditEvent would follow this profile regarding recording the SAML access token details
 
The following table uses a short-hand for the SAML fields and FHIR AuditEvent elements to keep the table compact. It is presumed the reader can understand the SAML field and the FHIR AuditEvent element given. Note the`~`character represents attributes under the SAML`AttributeStatement`. 

| | |
| :--- | :--- |
| ID | agent[user].policy |
| Issuer | agent[user].who.identifier.system |
| Subject.NameID | agent[user].who.identifier.value |
| ~subject:purposeofuse | agent[user].purposeOfUse |

 
note: this profile records minimal information from the SAML access token, which presumes that use of the AuditEvent at a later time will be able to resolve the given information. 

**Usages:**

* Derived from this Profile: [Basic AuditEvent pattern for when an activity was authorized by an SAML access token Comprehensive](StructureDefinition-IHE.BasicAudit.SAMLaccessTokenUse.Comprehensive.md)
* Examples for this Profile: [AuditEvent/ex-auditPoke-SAML-Min](AuditEvent-ex-auditPoke-SAML-Min.md), [AuditEvent/ex-auditPoke-SAML-Min2](AuditEvent-ex-auditPoke-SAML-Min2.md) and [AuditEvent/ex-auditPoke-SAML-QDI-Min](AuditEvent-ex-auditPoke-SAML-QDI-Min.md)
* CapabilityStatements using this Profile: [IHE ATNA Audit Record Repository supporting BALP Content](CapabilityStatement-IHE.BALP.ATNA.AuditRecordRepository.md), [IHE BALP Audit Consumer](CapabilityStatement-IHE.BALP.AuditConsumer.md) and [IHE BALP Audit Creator](CapabilityStatement-IHE.BALP.AuditCreator.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.balp|current/StructureDefinition/IHE.BasicAudit.SAMLaccessTokenUse.Minimal)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.BasicAudit.SAMLaccessTokenUse.Minimal.csv), [Excel](StructureDefinition-IHE.BasicAudit.SAMLaccessTokenUse.Minimal.xlsx), [Schematron](StructureDefinition-IHE.BasicAudit.SAMLaccessTokenUse.Minimal.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.BasicAudit.SAMLaccessTokenUse.Minimal",
  "url" : "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.SAMLaccessTokenUse.Minimal",
  "version" : "1.1.4",
  "name" : "SAMLaccessTokenUseMinimal",
  "title" : "Basic AuditEvent pattern for when an activity was authorized by an SAML access token Minimal",
  "status" : "active",
  "date" : "2025-10-31T12:53:24-05:00",
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
  "description" : "A basic AuditEvent profile for when an activity was authorized by an SAML access token. This profile is expected to be used with some other detail that explains the activity. This profile only covers the SAML access token.\n\n- Given an activity has occurred\n- And SAML is used to authorize a transaction\n- And the given activity is using the SAML\n  - XUA \n  - SAML requires ID and Issuer, so this profile of AuditEvent will work with any SAML token.\n  - usually SOAP, but not limited to SOAP\n- When an AuditEvent is recorded for the activity\n- Presumes that the consent and server have been identified in agent elements, best case with certificate identities\n- Then that AuditEvent would follow this profile regarding recording the SAML access token details\n\nThe following table uses a short-hand for the SAML fields and FHIR AuditEvent elements to keep the table compact. It is presumed the reader can understand the SAML field and the FHIR AuditEvent element given. Note the `~` character represents attributes under the SAML `AttributeStatement`. \n\n| SAML field            | Minimal AuditEvent\n|-----------------------|----------------------|\n| ID                    | agent[user].policy\n| Issuer                | agent[user].who.identifier.system\n| Subject.NameID        | agent[user].who.identifier.value\n| ~subject:purposeofuse | agent[user].purposeOfUse\n\nnote: this profile records minimal information from the SAML access token, which presumes that use of the AuditEvent at a later time will be able to resolve the given information.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AuditEvent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "AuditEvent",
        "path" : "AuditEvent"
      },
      {
        "id" : "AuditEvent.agent",
        "path" : "AuditEvent.agent",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "type"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "AuditEvent.agent:user",
        "path" : "AuditEvent.agent",
        "sliceName" : "user",
        "min" : 1,
        "max" : "*"
      },
      {
        "id" : "AuditEvent.agent:user.type",
        "path" : "AuditEvent.agent.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://profiles.ihe.net/ITI/BALP/CodeSystem/UserAgentTypes",
              "code" : "UserSamlAgent"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.agent:user.who",
        "path" : "AuditEvent.agent.who",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:user.who.identifier.system",
        "path" : "AuditEvent.agent.who.identifier.system",
        "short" : "SAML Issuer",
        "mustSupport" : true
      },
      {
        "id" : "AuditEvent.agent:user.who.identifier.value",
        "path" : "AuditEvent.agent.who.identifier.value",
        "short" : "SAML Subject.NameID",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "AuditEvent.agent:user.altId",
        "path" : "AuditEvent.agent.altId",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:user.requestor",
        "path" : "AuditEvent.agent.requestor",
        "patternBoolean" : true
      },
      {
        "id" : "AuditEvent.agent:user.policy",
        "path" : "AuditEvent.agent.policy",
        "short" : "SAML token ID",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "AuditEvent.agent:user.media",
        "path" : "AuditEvent.agent.media",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:user.network",
        "path" : "AuditEvent.agent.network",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:user.purposeOfUse",
        "path" : "AuditEvent.agent.purposeOfUse",
        "short" : "SAML subject:purposeofuse",
        "mustSupport" : true
      }
    ]
  }
}

```
