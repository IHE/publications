# AuditEvent.agent other identifiers - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AuditEvent.agent other identifiers**

## Extension: AuditEvent.agent other identifiers 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/BALP/StructureDefinition/ihe-otherId | *Version*:1.1.4 |
| Active as of 2025-10-31 | *Computable Name*:OtherId |

Carries other identifiers are known for an agent.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Basic AuditEvent pattern for when an activity was authorized by an SAML access token Comprehensive](StructureDefinition-IHE.BasicAudit.SAMLaccessTokenUse.Comprehensive.md)
* Examples for this Extension: [AuditEvent/ex-auditPoke-SAML-Comp](AuditEvent-ex-auditPoke-SAML-Comp.md) and [AuditEvent/ex-auditPoke-SAML-QDI-Comp](AuditEvent-ex-auditPoke-SAML-QDI-Comp.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.balp|current/StructureDefinition/ihe-otherId)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ihe-otherId.csv), [Excel](StructureDefinition-ihe-otherId.xlsx), [Schematron](StructureDefinition-ihe-otherId.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ihe-otherId",
  "url" : "https://profiles.ihe.net/ITI/BALP/StructureDefinition/ihe-otherId",
  "version" : "1.1.4",
  "name" : "OtherId",
  "title" : "AuditEvent.agent other identifiers",
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
  "description" : "Carries other identifiers are known for an agent.",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "AuditEvent.agent"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "AuditEvent.agent other identifiers",
        "definition" : "Carries other identifiers are known for an agent."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://profiles.ihe.net/ITI/BALP/StructureDefinition/ihe-otherId"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "Extension.value[x].type",
        "path" : "Extension.value[x].type",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://profiles.ihe.net/ITI/BALP/ValueSet/OtherIdentifierTypesVS"
        }
      },
      {
        "id" : "Extension.value[x].value",
        "path" : "Extension.value[x].value",
        "min" : 1
      }
    ]
  }
}

```
