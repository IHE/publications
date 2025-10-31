# AuditEvent.agent Assurance Level - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AuditEvent.agent Assurance Level**

## Extension: AuditEvent.agent Assurance Level 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/BALP/StructureDefinition/ihe-assuranceLevel | *Version*:1.1.4 |
| Active as of 2025-10-31 | *Computable Name*:AssuranceLevel |

The assuranceLevel element carries various types of Assurance level. May be an Identity Assurance (IAL), an Authentication Assurance Level (AAL), a Federation Assurance Level (FAL), or other.

In SAML this is [defined to be carried](https://docs.oasis-open.org/security/saml/v2.0/saml-authn-context-2.0-os.pdf) in the `saml:AuthnContextClassRef`, but may be carried elsewhere based on the use-case and profiling of SAML.

The Vocabulary is not defined here. Some sources of vocabulary:

* HL7 v3 [Security Trust Assurance ValueSet](https://terminology.hl7.org/3.0.0/ValueSet-v3-SecurityTrustAssuranceObservationValue.html). These include ISO-7498-2, NIST 800-63-1, and NIST-800-63-2.
* [idmanagement.gov](https://developers.login.gov/saml/#specifying-attributes-and-assurance-levels) published on login.gov 
* this is defined to be carried in the saml:AuthnContextClassRef
 
* OASIS [Authentication Context for SAML](https://docs.oasis-open.org/security/saml/v2.0/saml-authn-context-2.0-os.pdf)
* An example of a customized and purpose defined small set of codes can be found in the HL7 [SMART Health Cards](http://hl7.org/fhir/uv/shc-vaccination/2021Sep/) defines a [valueset](http://hl7.org/fhir/uv/shc-vaccination/ValueSet/identity-assurance-level)

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Basic AuditEvent pattern for when an activity was authorized by an SAML access token Comprehensive](StructureDefinition-IHE.BasicAudit.SAMLaccessTokenUse.Comprehensive.md)
* Examples for this Extension: [AuditEvent/ex-auditPoke-SAML-Comp](AuditEvent-ex-auditPoke-SAML-Comp.md) and [AuditEvent/ex-auditPoke-SAML-QDI-Comp](AuditEvent-ex-auditPoke-SAML-QDI-Comp.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.balp|current/StructureDefinition/ihe-assuranceLevel)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ihe-assuranceLevel.csv), [Excel](StructureDefinition-ihe-assuranceLevel.xlsx), [Schematron](StructureDefinition-ihe-assuranceLevel.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ihe-assuranceLevel",
  "url" : "https://profiles.ihe.net/ITI/BALP/StructureDefinition/ihe-assuranceLevel",
  "version" : "1.1.4",
  "name" : "AssuranceLevel",
  "title" : "AuditEvent.agent Assurance Level",
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
  "description" : "The assuranceLevel element carries various types of Assurance level. May be an Identity Assurance (IAL), an Authentication Assurance Level (AAL), a Federation Assurance Level (FAL), or other. \n\nIn SAML this is [defined to be carried](https://docs.oasis-open.org/security/saml/v2.0/saml-authn-context-2.0-os.pdf) in the `saml:AuthnContextClassRef`, but may be carried elsewhere based on the use-case and profiling of SAML.\n\nThe Vocabulary is not defined here. Some sources of vocabulary:\n- HL7 v3 [Security Trust Assurance ValueSet](https://terminology.hl7.org/3.0.0/ValueSet-v3-SecurityTrustAssuranceObservationValue.html). These include ISO-7498-2, NIST 800-63-1, and NIST-800-63-2.\n- [idmanagement.gov](https://developers.login.gov/saml/#specifying-attributes-and-assurance-levels) published on login.gov\n  - this is defined to be carried in the saml:AuthnContextClassRef\n- OASIS [Authentication Context for SAML](https://docs.oasis-open.org/security/saml/v2.0/saml-authn-context-2.0-os.pdf)\n- An example of a customized and purpose defined small set of codes can be found in the HL7 [SMART Health Cards](http://hl7.org/fhir/uv/shc-vaccination/2021Sep/) defines a [valueset](http://hl7.org/fhir/uv/shc-vaccination/ValueSet/identity-assurance-level)",
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
    },
    {
      "type" : "element",
      "expression" : "Identifier"
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
        "short" : "AuditEvent.agent Assurance Level",
        "definition" : "The assuranceLevel element carries various types of Assurance level. May be an Identity Assurance (IAL), an Authentication Assurance Level (AAL), a Federation Assurance Level (FAL), or other. \n\nIn SAML this is [defined to be carried](https://docs.oasis-open.org/security/saml/v2.0/saml-authn-context-2.0-os.pdf) in the `saml:AuthnContextClassRef`, but may be carried elsewhere based on the use-case and profiling of SAML.\n\nThe Vocabulary is not defined here. Some sources of vocabulary:\n- HL7 v3 [Security Trust Assurance ValueSet](https://terminology.hl7.org/3.0.0/ValueSet-v3-SecurityTrustAssuranceObservationValue.html). These include ISO-7498-2, NIST 800-63-1, and NIST-800-63-2.\n- [idmanagement.gov](https://developers.login.gov/saml/#specifying-attributes-and-assurance-levels) published on login.gov\n  - this is defined to be carried in the saml:AuthnContextClassRef\n- OASIS [Authentication Context for SAML](https://docs.oasis-open.org/security/saml/v2.0/saml-authn-context-2.0-os.pdf)\n- An example of a customized and purpose defined small set of codes can be found in the HL7 [SMART Health Cards](http://hl7.org/fhir/uv/shc-vaccination/2021Sep/) defines a [valueset](http://hl7.org/fhir/uv/shc-vaccination/ValueSet/identity-assurance-level)"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://profiles.ihe.net/ITI/BALP/StructureDefinition/ihe-assuranceLevel"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://terminology.hl7.org/ValueSet/v3-SecurityTrustAssuranceObservationValue"
        }
      }
    ]
  }
}

```
