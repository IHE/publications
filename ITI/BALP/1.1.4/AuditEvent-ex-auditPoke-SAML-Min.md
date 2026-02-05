# Audit Example of a basic SAML access token of minimal - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Audit Example of a basic SAML access token of minimal**

## Example AuditEvent: Audit Example of a basic SAML access token of minimal

Profile: [Basic AuditEvent pattern for when an activity was authorized by an SAML access token Minimal](StructureDefinition-IHE.BasicAudit.SAMLaccessTokenUse.Minimal.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**type**: [DICOM: 110100](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-110100) (Application Activity)

**subtype**: unknown: poke (Boredom poke)

**action**: Read/View/Print

**recorded**: 2021-12-03 09:49:00+0000

**outcome**: Success

### Agents

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Type** | **Who** | **Requestor** | **Policy** |
| * | information recipient | Identifier:`https://sts.sykehuspartner.no`/05086900124 | true | XC4WdYS0W5bjsMGc5Ue6tClD_5U |

### Sources

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Site** | **Observer** | **Type** |
| * | server.example.com | [Device](Device-ex-device.md) | [Audit Event Source Type: 4](http://terminology.hl7.org/6.5.0/CodeSystem-security-source-type.html#security-source-type-4)(Application Server) |



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "ex-auditPoke-SAML-Min",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.SAMLaccessTokenUse.Minimal"
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
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
            "code" : "IRCP"
          },
          {
            "system" : "https://profiles.ihe.net/ITI/BALP/CodeSystem/UserAgentTypes",
            "code" : "UserSamlAgent"
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
      "policy" : ["XC4WdYS0W5bjsMGc5Ue6tClD_5U"]
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
  }
}

```
