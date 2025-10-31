# Basic AuditEvent pattern for when an activity was authorized by an IUA access token - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Basic AuditEvent pattern for when an activity was authorized by an IUA access token**

## Resource Profile: Basic AuditEvent pattern for when an activity was authorized by an IUA access token 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.OAUTHaccessTokenUse.Comprehensive | *Version*:1.1.4 |
| Active as of 2025-10-31 | *Computable Name*:OAUTHaccessTokenUseComprehensive |

 
A basic AuditEvent profile for when an activity was authorized by an IUA access token. This profile is expected to be used with some other detail that explains the activity. This profile only covers the IUA access token. 
* Given an activity has occured
* And OAuth is used to authorize (both app and user)
* And the given activity is using http with authorization: bearer mechanism 
* IUA - [3.72 Incorporate Access Token [ITI-72]](https://profiles.ihe.net/ITI/IUA/index.html#372-incorporate-access-token-iti-72)
* Bulk Data Access - [11. Presenting an Access Token to FHIR API](https://hl7.org/fhir/uv/bulkdata/authorization/index.html#presenting-an-access-token-to-fhir-api)
* SMART-app-launch - [7.1.5 Step 4: App accesses clinical data via FHIR API](http://hl7.org/fhir/smart-app-launch/index.html#step-4-app-accesses-clinical-data-via-fhir-api)
* [HL7 Security for Scalable Registration, Authentication, and Authorization (aka UDAP)](http://hl7.org/fhir/us/udap-security/history.html) when it gets published
 
* When an AuditEvent is recorded for the activity
* Then that AuditEvent would follow this profile regarding recording the IUA access token details
* note: this profile records minimal information from the IUA access token, which presumes that use of the AuditEvent at a later time will be able to resolve the given information.
* client slice holds the application details 
* This is likely replicated in other slices, but is consistently identified as the Application slice for ease of tracking all events caused by this client
* place the client_id into .who.identifier.value (system is not needed, but avaialble if you have a system)
* any network identification detail should be placed in .network (may be a IP address, or hostname)
 
* oUser slice holds the user details 
* user id is recorded in the .who.identifier
* user id is also recorded in .name to be more easy searched
* if roles or purposeOfUse are known record them here
* the JWT ID is recorded in .policy. Expecting that during audit anaysis this ID can be looked up and dereferenced
 
 

**Usages:**

* Examples for this Profile: [AuditEvent/ex-auditBasicReadOServer](AuditEvent-ex-auditBasicReadOServer.md)
* CapabilityStatements using this Profile: [IHE ATNA Audit Record Repository supporting BALP Content](CapabilityStatement-IHE.BALP.ATNA.AuditRecordRepository.md), [IHE BALP Audit Consumer](CapabilityStatement-IHE.BALP.AuditConsumer.md) and [IHE BALP Audit Creator](CapabilityStatement-IHE.BALP.AuditCreator.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.balp|current/StructureDefinition/IHE.BasicAudit.OAUTHaccessTokenUse.Comprehensive)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.BasicAudit.OAUTHaccessTokenUse.Comprehensive.csv), [Excel](StructureDefinition-IHE.BasicAudit.OAUTHaccessTokenUse.Comprehensive.xlsx), [Schematron](StructureDefinition-IHE.BasicAudit.OAUTHaccessTokenUse.Comprehensive.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.BasicAudit.OAUTHaccessTokenUse.Comprehensive",
  "url" : "https://profiles.ihe.net/ITI/BALP/StructureDefinition/IHE.BasicAudit.OAUTHaccessTokenUse.Comprehensive",
  "version" : "1.1.4",
  "name" : "OAUTHaccessTokenUseComprehensive",
  "title" : "Basic AuditEvent pattern for when an activity was authorized by an IUA access token",
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
  "description" : "A basic AuditEvent profile for when an activity was authorized by an IUA access token. This profile is expected to be used with some other detail that explains the activity. This profile only covers the IUA access token.\n\n- Given an activity has occured\n- And OAuth is used to authorize (both app and user)\n- And the given activity is using http with authorization: bearer mechanism \n  - IUA - [3.72 Incorporate Access Token \\[ITI-72\\]](https://profiles.ihe.net/ITI/IUA/index.html#372-incorporate-access-token-iti-72)\n  - Bulk Data Access - [11. Presenting an Access Token to FHIR API](https://hl7.org/fhir/uv/bulkdata/authorization/index.html#presenting-an-access-token-to-fhir-api)\n  - SMART-app-launch - [7.1.5 Step 4: App accesses clinical data via FHIR API](http://hl7.org/fhir/smart-app-launch/index.html#step-4-app-accesses-clinical-data-via-fhir-api)\n  - [HL7 Security for Scalable Registration, Authentication, and Authorization (aka UDAP) ](http://hl7.org/fhir/us/udap-security/history.html) when it gets published \n- When an AuditEvent is recorded for the activity\n- Then that AuditEvent would follow this profile regarding recording the IUA access token details\n- note: this profile records minimal information from the IUA access token, which presumes that use of the AuditEvent at a later time will be able to resolve the given information.\n- client slice holds the application details\n  - This is likely replicated in other slices, but is consistently identified as the Application slice for ease of tracking all events caused by this client\n  - place the client_id into .who.identifier.value (system is not needed, but avaialble if you have a system)\n  - any network identification detail should be placed in .network (may be a IP address, or hostname)\n- oUser slice holds the user details\n  - user id is recorded in the .who.identifier\n  - user id is also recorded in .name to be more easy searched\n  - if roles or purposeOfUse are known record them here\n  - the JWT ID is recorded in .policy. Expecting that during audit anaysis this ID can be looked up and dereferenced",
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
        "id" : "AuditEvent.agent:oClient",
        "path" : "AuditEvent.agent",
        "sliceName" : "oClient",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.agent:oClient.type",
        "path" : "AuditEvent.agent.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://dicom.nema.org/resources/ontology/DCM",
              "code" : "110150"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.agent:oClient.who",
        "path" : "AuditEvent.agent.who",
        "short" : "client identifier",
        "comment" : "May be an Device Resource, but more likely an identifier given the App identified in the OAuth token",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:oClient.who.identifier",
        "path" : "AuditEvent.agent.who.identifier",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:oClient.who.identifier.value",
        "path" : "AuditEvent.agent.who.identifier.value",
        "short" : "Token client ID (client_id)",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:oClient.media",
        "path" : "AuditEvent.agent.media",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:oClient.network",
        "path" : "AuditEvent.agent.network",
        "short" : "The client as known by TCP connection information",
        "mustSupport" : true
      },
      {
        "id" : "AuditEvent.agent:oUser",
        "path" : "AuditEvent.agent",
        "sliceName" : "oUser",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.agent:oUser.type",
        "path" : "AuditEvent.agent.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code" : "IRCP"
            }
          ]
        }
      },
      {
        "id" : "AuditEvent.agent:oUser.role",
        "path" : "AuditEvent.agent.role",
        "comment" : "if the OAuth token includes any roles, they are recorded here",
        "mustSupport" : true
      },
      {
        "id" : "AuditEvent.agent:oUser.who",
        "path" : "AuditEvent.agent.who",
        "short" : "May be a Resource, but likely just an identifier from the OAuth token",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:oUser.who.identifier",
        "path" : "AuditEvent.agent.who.identifier",
        "min" : 1
      },
      {
        "id" : "AuditEvent.agent:oUser.who.identifier.system",
        "path" : "AuditEvent.agent.who.identifier.system",
        "short" : "Token Issuer (TOKEN_ISSUER)",
        "mustSupport" : true
      },
      {
        "id" : "AuditEvent.agent:oUser.who.identifier.value",
        "path" : "AuditEvent.agent.who.identifier.value",
        "short" : "User ID (USER_ID)",
        "mustSupport" : true
      },
      {
        "id" : "AuditEvent.agent:oUser.who.display",
        "path" : "AuditEvent.agent.who.display",
        "short" : "User Name (USER_NAME)",
        "mustSupport" : true
      },
      {
        "id" : "AuditEvent.agent:oUser.name",
        "path" : "AuditEvent.agent.name",
        "short" : "User Name (USER_NAME)",
        "comment" : "This is more searchable than .who.display",
        "mustSupport" : true
      },
      {
        "id" : "AuditEvent.agent:oUser.requestor",
        "path" : "AuditEvent.agent.requestor",
        "patternBoolean" : true
      },
      {
        "id" : "AuditEvent.agent:oUser.policy",
        "path" : "AuditEvent.agent.policy",
        "short" : "jti (JWT ID)",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "AuditEvent.agent:oUser.media",
        "path" : "AuditEvent.agent.media",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:oUser.network",
        "path" : "AuditEvent.agent.network",
        "max" : "0"
      },
      {
        "id" : "AuditEvent.agent:oUser.purposeOfUse",
        "path" : "AuditEvent.agent.purposeOfUse",
        "comment" : "if the OAuth token includes a PurposeOfUse it is recorded here",
        "mustSupport" : true
      }
    ]
  }
}

```
