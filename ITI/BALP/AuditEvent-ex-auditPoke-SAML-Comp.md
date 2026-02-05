# Audit Example of a basic SAML access token of comprehensive - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Example of a basic SAML access token of comprehensive**

## Example AuditEvent: Audit Example of a basic SAML access token of comprehensive

Profile: [Basic AuditEvent pattern for when an activity was authorized by an SAML access token Comprehensive](StructureDefinition-IHE.BasicAudit.SAMLaccessTokenUse.Comprehensive.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**type**: [DICOM: 110100](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-110100) (Application Activity)

**subtype**: unknown: poke (Boredom poke)

**action**: Read/View/Print

**recorded**: 2021-12-03 09:49:00+0000

**outcome**: Success

> **agent****AuditEvent.agent Assurance Level**:high authentication process level of assurance**AuditEvent.agent other identifiers**: SAML subject-id/JohnDoe**AuditEvent.agent other identifiers**: National provider identifier/1234567@myNPIregistry.example.org**AuditEvent.agent other identifiers**: Provider number/JohnD**type**:information recipient**who**: Identifier:`https://sts.sykehuspartner.no`/05086900124**requestor**: true**policy**: XC4WdYS0W5bjsMGc5Ue6tClD_5U**purposeOfUse**:patient requested

> **agent****type**:healthcare provider**who**: St. Mary of Examples (Identifier: 1234567@myOrganizationRegistry.example.org)**requestor**: false

> **agent****type**:homeCommunityId**who**: Identifier: homeCommunityId/urn:uuid:cadbf8d0-5493-11ec-bf63-0242ac130002**requestor**: false

### Sources

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Site** | **Observer** | **Type** |
| * | server.example.com | [Device](Device-ex-device.md) | [Audit Event Source Type: 4](http://terminology.hl7.org/6.5.0/CodeSystem-security-source-type.html#security-source-type-4)(Application Server) |

> **entity****what**: Identifier: urn:uuid:a4b1d27e-5493-11ec-bf63-0242ac130002**type**:[ResourceType: Consent](http://hl7.org/fhir/R4/codesystem-resource-types.html#resource-types-Consent)(Consent)
> **detail****type**: urn:ihe:iti:xua:2012:acp**value**: urn:uuid:b8aa8eec-5493-11ec-bf63-0242ac130002

> **detail****type**: urn:oasis:names:tc:xacml:2.0:resource:resource-id**value**: urn:uuid:d7391e5a-5493-11ec-bf63-0242ac130002



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "ex-auditPoke-SAML-Comp",
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
                "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationValue",
                "code" : "LOAAP4"
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
            "value" : "JohnDoe"
          }
        },
        {
          "url" : "https://profiles.ihe.net/ITI/BALP/StructureDefinition/ihe-otherId",
          "valueIdentifier" : {
            "type" : {
              "coding" : [
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
                  "code" : "NPI"
                }
              ]
            },
            "value" : "1234567@myNPIregistry.example.org"
          }
        },
        {
          "url" : "https://profiles.ihe.net/ITI/BALP/StructureDefinition/ihe-otherId",
          "valueIdentifier" : {
            "type" : {
              "coding" : [
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
                  "code" : "PRN"
                }
              ]
            },
            "value" : "JohnD"
          }
        }
      ],
      "type" : {
        "coding" : [
          {
            "system" : "https://profiles.ihe.net/ITI/BALP/CodeSystem/UserAgentTypes",
            "code" : "UserSamlAgent"
          },
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
            "code" : "IRCP",
            "display" : "information recipient"
          }
        ]
      },
      "who" : {
        "identifier" : {
          "system" : "https://sts.sykehuspartner.no",
          "value" : "05086900124"
        }
      },
      "requestor" : true,
      "policy" : ["XC4WdYS0W5bjsMGc5Ue6tClD_5U"],
      "purposeOfUse" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
              "code" : "PATRQT"
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
          "value" : "1234567@myOrganizationRegistry.example.org"
        },
        "display" : "St. Mary of Examples"
      },
      "requestor" : false
    },
    {
      "type" : {
        "coding" : [
          {
            "system" : "urn:ihe:iti:xca:2010",
            "code" : "homeCommunityId"
          }
        ]
      },
      "who" : {
        "identifier" : {
          "type" : {
            "coding" : [
              {
                "system" : "urn:ihe:iti:xca:2010",
                "code" : "homeCommunityId"
              }
            ]
          },
          "value" : "urn:uuid:cadbf8d0-5493-11ec-bf63-0242ac130002"
        }
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
          "value" : "urn:uuid:a4b1d27e-5493-11ec-bf63-0242ac130002"
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
          "valueString" : "urn:uuid:b8aa8eec-5493-11ec-bf63-0242ac130002"
        },
        {
          "type" : "urn:oasis:names:tc:xacml:2.0:resource:resource-id",
          "valueString" : "urn:uuid:d7391e5a-5493-11ec-bf63-0242ac130002"
        }
      ]
    }
  ]
}

```
