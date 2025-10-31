# Audit Example of a basic SAML access token of comprehensive from QDI sample - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Example of a basic SAML access token of comprehensive from QDI sample**

## Example AuditEvent: Audit Example of a basic SAML access token of comprehensive from QDI sample

Profile: [Basic AuditEvent pattern for when an activity was authorized by an SAML access token Comprehensive](StructureDefinition-IHE.BasicAudit.SAMLaccessTokenUse.Comprehensive.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**type**: [DICOM: 110100](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-110100) (Application Activity)

**subtype**: unknown: poke (Boredom poke)

**action**: Read/View/Print

**recorded**: 2021-12-03 09:49:00+0000

**outcome**: Success

> **agent****AuditEvent.agent Assurance Level**:X509**AuditEvent.agent other identifiers**: SAML subject-id/Karl S Skagerberg**type**:information recipient**role**:Public health officier**who**: Identifier:`ldap:///CN%3DSAML%20User%2COU%3DHarris%2CO%3DHITS%2CL%3DMelbourne%2CST%3DFL%2CC%3DUS`/UID=kskagerb**requestor**: true**policy**: _d87f8adf-711a-4545-bf77-ff8517b498e4**purposeOfUse**:Uses and disclosures for public health activities.

> **agent****type**:healthcare provider**who**: connectred5.fedsconnect.org (Identifier: urn:oid:2.16.840.1.113883.3.333)**requestor**: false

### Sources

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Site** | **Observer** | **Type** |
| * | server.example.com | [Device](Device-ex-device.md) | [Audit Event Source Type: 4](http://terminology.hl7.org/6.5.0/CodeSystem-security-source-type.html#security-source-type-4)(Application Server) |

> **entity****what**: Identifier: urn:oid:1.2.3.4.123456789**type**:[ResourceType: Consent](http://hl7.org/fhir/R4/codesystem-resource-types.html#resource-types-Consent)(Consent)
> **detail****type**: urn:ihe:iti:xua:2012:acp**value**: urn:oid:1.2.3.4

> **detail****type**: urn:oasis:names:tc:xacml:2.0:resource:resource-id**value**: 500000000^^^&2.16.840.1.113883.3.333&ISO



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "ex-auditPoke-SAML-QDI-Comp",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.SAMLaccessTokenUse.Comprehensive"
    ],
    "security" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST"
      }
    ]
  },
  "type" : {
    "system" : "http://dicom.nema.org/resources/ontology/DCM",
    "code" : "110100",
    "display" : "Application Activity"
  },
  "subtype" : [
    {
      "system" : "urn:ietf:rfc:1438",
      "code" : "poke",
      "display" : "Boredom poke"
    }
  ],
  "action" : "R",
  "recorded" : "2021-12-03T09:49:00.000Z",
  "outcome" : "0",
  "agent" : [
    {
      "extension" : [
        {
          "url" : "https://profiles.ihe.net/ITI/BALP/StructureDefinition/ihe-assuranceLevel",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "urn:oasis:names:tc:SAML:2.0:ac:classes",
                "code" : "X509"
              }
            ]
          }
        },
        {
          "url" : "https://profiles.ihe.net/ITI/BALP/StructureDefinition/ihe-otherId",
          "valueIdentifier" : {
            "type" : {
              "coding" : [
                {
                  "system" : "https://profiles.ihe.net/ITI/BALP/CodeSystem/OtherIdentifierTypes",
                  "code" : "SAML-subject-id"
                }
              ]
            },
            "value" : "Karl S Skagerberg"
          }
        }
      ],
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
            "code" : "IRCP",
            "display" : "information recipient"
          },
          {
            "system" : "https://profiles.ihe.net/ITI/BALP/CodeSystem/UserAgentTypes",
            "code" : "UserSamlAgent"
          }
        ]
      },
      "role" : [
        {
          "coding" : [
            {
              "system" : "urn:oid:2.16.840.1.113883.6.96",
              "code" : "307969004",
              "display" : "Public health officier"
            }
          ]
        }
      ],
      "who" : {
        "identifier" : {
          "system" : "ldap:///CN%3DSAML%20User%2COU%3DHarris%2CO%3DHITS%2CL%3DMelbourne%2CST%3DFL%2CC%3DUS",
          "value" : "UID=kskagerb"
        }
      },
      "requestor" : true,
      "policy" : ["_d87f8adf-711a-4545-bf77-ff8517b498e4"],
      "purposeOfUse" : [
        {
          "coding" : [
            {
              "system" : "urn:oid:2.16.840.1.113883.3.18.7.1",
              "code" : "PUBLICHEALTH",
              "display" : "Uses and disclosures for public health activities."
            }
          ]
        }
      ]
    },
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
            "code" : "PROV",
            "display" : "healthcare provider"
          }
        ]
      },
      "who" : {
        "identifier" : {
          "value" : "urn:oid:2.16.840.1.113883.3.333"
        },
        "display" : "connectred5.fedsconnect.org"
      },
      "requestor" : false
    }
  ],
  "source" : {
    "site" : "server.example.com",
    "observer" : {
      "reference" : "Device/ex-device"
    },
    "type" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/security-source-type",
        "code" : "4",
        "display" : "Application Server"
      }
    ]
  },
  "entity" : [
    {
      "what" : {
        "identifier" : {
          "value" : "urn:oid:1.2.3.4.123456789"
        }
      },
      "type" : {
        "system" : "http://hl7.org/fhir/resource-types",
        "code" : "Consent",
        "display" : "Consent"
      },
      "detail" : [
        {
          "type" : "urn:ihe:iti:xua:2012:acp",
          "valueString" : "urn:oid:1.2.3.4"
        },
        {
          "type" : "urn:oasis:names:tc:xacml:2.0:resource:resource-id",
          "valueString" : "500000000^^^&2.16.840.1.113883.3.333&ISO"
        }
      ]
    }
  ]
}

```
