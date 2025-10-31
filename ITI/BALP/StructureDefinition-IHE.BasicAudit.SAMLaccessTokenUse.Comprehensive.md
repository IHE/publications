# Basic AuditEvent pattern for when an activity was authorized by an SAML access token Comprehensive - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Basic AuditEvent pattern for when an activity was authorized by an SAML access token Comprehensive**

## Resource Profile: Basic AuditEvent pattern for when an activity was authorized by an SAML access token Comprehensive 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.SAMLaccessTokenUse.Comprehensive | *Version*:1.1.4 |
| Active as of 2025-10-31 | *Computable Name*:SAMLaccessTokenUseComprehensive |

 
A basic AuditEvent profile for when an activity was authorized by an SAML access token. This profile is expected to be used with some other detail that explains the activity. This profile only covers the SAML access token. 
The following table uses a short-hand for the SAML fields and FHIR AuditEvent elements to keep the table compact. It is presumed the reader can understand the SAML field and the FHIR AuditEvent element given. Note the`~`character represents attributes under the SAML`AttributeStatement`. 
**Builds upon the Minimal** 

| | |
| :--- | :--- |
| ID | agent[user].policy |
| Issuer | agent[user].who.identifier.system |
| Subject.NameID | agent[user].who.identifier.value |
| AuthnContextClassRef | agent[user].extension[assuranceLevel] |
| ~subject:role | agent[user].role |
| ~subject:purposeofuse | agent[user].purposeOfUse |
| ~subject:subject-id | agent[user].extension[otherId][subject-id].value |
| ~subject:npi | agent[user].extension[otherId][npi].value |
| ~subject:provider-identifier | agent[user].extension[otherId][provider-id].value |
| ~subject:organization | agent[userorg].who.display |
| ~subject:organization-id | agent[userorg].who.identifier.value |
| ~homeCommunityId | agent[homeCommunityId].who.identifier.value |
| ~bppc:2007:docid | entity[consent].what.identifier.value |
| ~xua:2012:acp | entity[consent].detail.valueString |
| ~resource:resource-id | entity[consent-patient].what.identifier.value |

 

**Usages:**

* Examples for this Profile: [AuditEvent/ex-auditPoke-SAML-Comp](AuditEvent-ex-auditPoke-SAML-Comp.md) and [AuditEvent/ex-auditPoke-SAML-QDI-Comp](AuditEvent-ex-auditPoke-SAML-QDI-Comp.md)
* CapabilityStatements using this Profile: [IHE ATNA Audit Record Repository supporting BALP Content](CapabilityStatement-IHE.BALP.ATNA.AuditRecordRepository.md), [IHE BALP Audit Consumer](CapabilityStatement-IHE.BALP.AuditConsumer.md) and [IHE BALP Audit Creator](CapabilityStatement-IHE.BALP.AuditCreator.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.balp|current/StructureDefinition/IHE.BasicAudit.SAMLaccessTokenUse.Comprehensive)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.BasicAudit.SAMLaccessTokenUse.Comprehensive.csv), [Excel](StructureDefinition-IHE.BasicAudit.SAMLaccessTokenUse.Comprehensive.xlsx), [Schematron](StructureDefinition-IHE.BasicAudit.SAMLaccessTokenUse.Comprehensive.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.BasicAudit.SAMLaccessTokenUse.Comprehensive",
  "url" : "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.SAMLaccessTokenUse.Comprehensive",
  "version" : "1.1.4",
  "name" : "SAMLaccessTokenUseComprehensive",
  "title" : "Basic AuditEvent pattern for when an activity was authorized by an SAML access token Comprehensive",
  "status" : "active",
  "date" : "2025-10-31T12:57:41-05:00",
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
  "description" : "A basic AuditEvent profile for when an activity was authorized by an SAML access token. This profile is expected to be used with some other detail that explains the activity. This profile only covers the SAML access token. \n\nThe following table uses a short-hand for the SAML fields and FHIR AuditEvent elements to keep the table compact. It is presumed the reader can understand the SAML field and the FHIR AuditEvent element given. Note the `~` character represents attributes under the SAML `AttributeStatement`. \n\n**Builds upon the Minimal**\n\n| SAML field                   | Comprehensive AuditEvent\n|------------------------------|-----------------------------------|\n| ID                           | agent[user].policy\n| Issuer                       | agent[user].who.identifier.system\n| Subject.NameID               | agent[user].who.identifier.value\n| AuthnContextClassRef         | agent[user].extension[assuranceLevel]\n| ~subject:role                | agent[user].role\n| ~subject:purposeofuse        | agent[user].purposeOfUse\n| ~subject:subject-id          | agent[user].extension[otherId][subject-id].value\n| ~subject:npi                 | agent[user].extension[otherId][npi].value\n| ~subject:provider-identifier | agent[user].extension[otherId][provider-id].value\n| ~subject:organization        | agent[userorg].who.display\n| ~subject:organization-id     | agent[userorg].who.identifier.value\n| ~homeCommunityId             | agent[homeCommunityId].who.identifier.value \n| ~bppc:2007:docid             | entity[consent].what.identifier.value \n| ~xua:2012:acp                | entity[consent].detail.valueString \n| ~resource:resource-id        | entity[consent-patient].what.identifier.value",
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
  "baseDefinition" : "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.SAMLaccessTokenUse.Minimal",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "AuditEvent",
        "path" : "AuditEvent"
      },
      {
        "id" : "AuditEvent.agent:user",
        "path" : "AuditEvent.agent",
        "sliceName" : "user"
      },
      {
        "id" : "AuditEvent.agent:user.extension",
        "path" : "AuditEvent.agent.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            },
            {
              "type" : "value",
              "path" : "value.ofType(Identifier).type"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "AuditEvent.agent:user.extension:assuranceLevel",
        "path" : "AuditEvent.agent.extension",
        "sliceName" : "assuranceLevel",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://profiles.ihe.net/ITI/BALP/StructureDefinition/ihe-assuranceLevel"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "AuditEvent.agent:user.extension:otherId",
        "path" : "AuditEvent.agent.extension",
        "sliceName" : "otherId",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://profiles.ihe.net/ITI/BALP/StructureDefinition/ihe-otherId"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "AuditEvent.agent:user.extension:otherId/subject-id",
        "path" : "AuditEvent.agent.extension",
        "sliceName" : "otherId/subject-id",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "AuditEvent.agent:user.extension:otherId/subject-id.value[x].type",
        "path" : "AuditEvent.agent.extension.value[x].type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://profiles.ihe.net/ITI/BALP/CodeSystem/OtherIdentifierTypes",
              "code" : "SAML-subject-id"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.agent:user.extension:otherId/subject-id.value[x].value",
        "path" : "AuditEvent.agent.extension.value[x].value",
        "short" : "SAML Attribute subject-id"
      },
      {
        "id" : "AuditEvent.agent:user.extension:otherId/npi",
        "path" : "AuditEvent.agent.extension",
        "sliceName" : "otherId/npi",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "AuditEvent.agent:user.extension:otherId/npi.value[x].type",
        "path" : "AuditEvent.agent.extension.value[x].type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
              "code" : "NPI"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.agent:user.extension:otherId/npi.value[x].value",
        "path" : "AuditEvent.agent.extension.value[x].value",
        "short" : "SAML Attribute npi"
      },
      {
        "id" : "AuditEvent.agent:user.extension:otherId/provider-id",
        "path" : "AuditEvent.agent.extension",
        "sliceName" : "otherId/provider-id",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "AuditEvent.agent:user.extension:otherId/provider-id.value[x].type",
        "path" : "AuditEvent.agent.extension.value[x].type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
              "code" : "PRN"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.agent:user.extension:otherId/provider-id.value[x].value",
        "path" : "AuditEvent.agent.extension.value[x].value",
        "short" : "SAML Attribute provider-identifier"
      },
      {
        "id" : "AuditEvent.agent:user.role",
        "path" : "AuditEvent.agent.role",
        "short" : "SAML subject:role(s)",
        "mustSupport" : true
      },
      {
        "id" : "AuditEvent.agent:userorg",
        "path" : "AuditEvent.agent",
        "sliceName" : "userorg",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "AuditEvent.agent:userorg.type",
        "path" : "AuditEvent.agent.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
              "code" : "PROV"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.agent:userorg.role",
        "path" : "AuditEvent.agent.role",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:userorg.who.identifier.value",
        "path" : "AuditEvent.agent.who.identifier.value",
        "short" : "SAML Attribute urn:oasis:names:tc:xspa:1.0:subject:organization-id",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:userorg.who.display",
        "path" : "AuditEvent.agent.who.display",
        "short" : "SAML Attribute urn:oasis:names:tc:xspa:1.0:subject:organization",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:userorg.altId",
        "path" : "AuditEvent.agent.altId",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:userorg.name",
        "path" : "AuditEvent.agent.name",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:userorg.requestor",
        "path" : "AuditEvent.agent.requestor",
        "patternBoolean" : false
      },
      {
        "id" : "AuditEvent.agent:userorg.location",
        "path" : "AuditEvent.agent.location",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:userorg.policy",
        "path" : "AuditEvent.agent.policy",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:userorg.media",
        "path" : "AuditEvent.agent.media",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:userorg.network",
        "path" : "AuditEvent.agent.network",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:userorg.purposeOfUse",
        "path" : "AuditEvent.agent.purposeOfUse",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:homeCommunityId",
        "path" : "AuditEvent.agent",
        "sliceName" : "homeCommunityId",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "AuditEvent.agent:homeCommunityId.type",
        "path" : "AuditEvent.agent.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "urn:ihe:iti:xca:2010",
              "code" : "homeCommunityId"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.agent:homeCommunityId.role",
        "path" : "AuditEvent.agent.role",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:homeCommunityId.who.identifier",
        "path" : "AuditEvent.agent.who.identifier",
        "short" : "homeCommunityId",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:homeCommunityId.altId",
        "path" : "AuditEvent.agent.altId",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:homeCommunityId.name",
        "path" : "AuditEvent.agent.name",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:homeCommunityId.requestor",
        "path" : "AuditEvent.agent.requestor",
        "patternBoolean" : false
      },
      {
        "id" : "AuditEvent.agent:homeCommunityId.location",
        "path" : "AuditEvent.agent.location",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:homeCommunityId.policy",
        "path" : "AuditEvent.agent.policy",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:homeCommunityId.media",
        "path" : "AuditEvent.agent.media",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:homeCommunityId.network",
        "path" : "AuditEvent.agent.network",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:homeCommunityId.purposeOfUse",
        "path" : "AuditEvent.agent.purposeOfUse",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.entity",
        "path" : "AuditEvent.entity",
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
        "id" : "AuditEvent.entity:consent",
        "path" : "AuditEvent.entity",
        "sliceName" : "consent",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "AuditEvent.entity:consent.what.identifier",
        "path" : "AuditEvent.entity.what.identifier",
        "short" : "BPPC Patient Privacy Policy Acknowledgement Document unique id",
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
      },
      {
        "id" : "AuditEvent.entity:consent.detail",
        "path" : "AuditEvent.entity.detail",
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
        "id" : "AuditEvent.entity:consent.detail:acp",
        "path" : "AuditEvent.entity.detail",
        "sliceName" : "acp",
        "short" : "Home Community ID where the Consent is.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.entity:consent.detail:acp.type",
        "path" : "AuditEvent.entity.detail.type",
        "patternString" : "urn:ihe:iti:xua:2012:acp"
      },
      {
        "id" : "AuditEvent.entity:consent.detail:acp.value[x]",
        "path" : "AuditEvent.entity.detail.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "AuditEvent.entity:consent.detail:patient-id",
        "path" : "AuditEvent.entity.detail",
        "sliceName" : "patient-id",
        "short" : "The Patient Identity where the Consent is.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.entity:consent.detail:patient-id.type",
        "path" : "AuditEvent.entity.detail.type",
        "patternString" : "urn:oasis:names:tc:xacml:2.0:resource:resource-id"
      },
      {
        "id" : "AuditEvent.entity:consent.detail:patient-id.value[x]",
        "path" : "AuditEvent.entity.detail.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
