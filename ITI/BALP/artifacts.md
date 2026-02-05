# Artifacts Summary - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [IHE ATNA Audit Record Repository supporting BALP Content](CapabilityStatement-IHE.BALP.ATNA.AuditRecordRepository.md) | CapabilityStatement for[ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html)Audit Record Repository Actor with the ATNA ATX:FHIR Feed Option and Retrieve Audit Message Option defined in[RESTful-ATNA Supplement](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_RESTful-ATNA.pdf)that also has support for BALP Content.This Actor is derived off of the ATNA Audit Record Repository actor that is not yet defined fully in an IG. This CapabilityStatement does not represent a formal Actor, but rather a system that has grouped ATNA and BALP. |
| [IHE BALP Audit Consumer](CapabilityStatement-IHE.BALP.AuditConsumer.md) | CapabilityStatement for[Audit Consumer](volume-1.md#152112-audit-consumer)Actor in[BALP](index.md).This CapabilityStatement replicates the requirements that would come from the ATNA**Audit Consumer* actor supporting **ATNA Retrieve Audit Message Option**. |
| [IHE BALP Audit Creator](CapabilityStatement-IHE.BALP.AuditCreator.md) | CapabilityStatement for[Audit Creator](volume-1.md#152111-audit-creator)Actor in[BALP](index.md).This Actor is derived off of the**ATNA Secure Application**or**Secure Node**actor with**ATNA ATX:FHIR Feed Option**using ITI-20. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Audit Event for Privacy Disclosure at Source](StructureDefinition-IHE.BasicAudit.PrivacyDisclosure.Source.md) | Defines constraints on the AuditEvent Resource to record when a Privacy Disclosure happens at the Source.* Export event
* shall have source of itself
* shall have a source agent
* shall have a recipient agent
* may have user, app, organization agent(s) 
* combine with the Security Token pattern
 
* should have the custodian that released the data
* should have the authorizer that represented the patient (may be the patient)
* shall have a patient entity
* shall have the set of data entity(ies)
 |
| [Audit Event for a Privacy Disclosure as recorded by a Recipient](StructureDefinition-IHE.BasicAudit.PrivacyDisclosure.Recipient.md) | Defines constraints on the AuditEvent Resource to record when a Privacy Disclosure is detected at the Recipient of the data.* Import event
* shall have source of itself
* shall have a source agent
* shall have a recipient agent
* may have user, app, organization agent(s) 
* combine with the Security Token pattern
 
* may, if known, have the custodian that released the data
* may, if known, have the authorizer that represented the patient (may be the patient)
* shall have a patient entity
* shall have a set identity entity
 |
| [Basic AuditEvent for a successful Create not related to a Patient](StructureDefinition-IHE.BasicAudit.Create.md) | A basic AuditEvent profile for when a RESTful Create action happens successfully.* Given a Resource Create is requested
* And that resource does not have a Patient subject or is otherwise associated with a Patient 
* when the resource is Patient specific then [PatientCreate](StructureDefinition-IHE.BasicAudit.PatientCreate.md) is used
 
* And the request is authorized 
* Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)
 
* When successful 
* Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome
 
* Then the AuditEvent recorded will conform
 |
| [Basic AuditEvent for a successful Create with known Patient subject](StructureDefinition-IHE.BasicAudit.PatientCreate.md) | A basic AuditEvent profile for when a RESTful Create action happens successfully, and where there is an identifiable Patient subject associated with the create of the Resource.* Given a Resource Create is requested
* And that resource has a [Patient subject](volume-1.md#152416-patient-as-a-subject) or is otherwise associated with a Patient
* And the request is authorized 
* Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)
 
* When successful 
* Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome
 
* Then the AuditEvent recorded will conform
 |
| [Basic AuditEvent for a successful Delete](StructureDefinition-IHE.BasicAudit.Delete.md) | A basic AuditEvent profile for when a RESTful Delete action happens successfully.* Given a Resource Delete is requested
* And that resource has does not have a Patient subject or is otherwise associated with a Patient 
* when the resource is Patient specific then [PatientDelete](StructureDefinition-IHE.BasicAudit.PatientDelete.md) is used
 
* And the request is authorized 
* Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)
 
* When successful 
* Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome
 
* Then the AuditEvent recorded will conform
 |
| [Basic AuditEvent for a successful Delete with Patient](StructureDefinition-IHE.BasicAudit.PatientDelete.md) | A basic AuditEvent profile for when a RESTful Delete action happens successfully, and where there is an identifiable Patient subject associated with the Resource being deleted.* Given a Resource Delete is requested
* And that resource has a [Patient subject](volume-1.md#152416-patient-as-a-subject) or is otherwise associated with a Patient
* And the request is authorized 
* Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)
 
* When successful 
* Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome
 
* Then the AuditEvent recorded will conform
 |
| [Basic AuditEvent for a successful Query](StructureDefinition-IHE.BasicAudit.Query.md) | A basic AuditEvent profile for when a RESTful Query / Search action happens successfully.* Given a RESTful Query is requested
* And the request does not have a Patient subject indicated 
* The requestor logging the event would potentially not know they have requested Patient specific data
* The data objects may not be patient specific kind of objects
* when the request is Patient specific then [PatientQuery](StructureDefinition-IHE.BasicAudit.PatientQuery.md) is used
 
* And the request is authorized 
* Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)
 
* When successful 
* Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome
* Note success may result in zero or more results. The number of results and the content of the results are not recorded.
 
* And the results are not Patient specific 
* when the results are Patient specific then [PatientQuery](StructureDefinition-IHE.BasicAudit.PatientQuery.md) are used
 
* Then the AuditEvent recorded will conform 
* The raw search request is base64 encoded and placed in the .entity[query].query element. The base64 encoding of the raw search request enables preserving exactly what was requested, including possibly malicious patterns. This enables detection of malicious or malformed requests.
* The cleaned search may be recorded (not base64) in the .entity[query].description. The cleaned search request would have removed parameters that were not understood/supported. The cleaned search request in the .description element enables more efficient processing.
 
Note: the pattern defined in DICOM and IHE have the client is identified as the Source Role ID, and the server is identified as the Destination Role ID. This represents the query parameters are flowing from the client to the server. This may not be so obvious, as the data actually flows the opposite direction. This pattern is established and thus followed here. |
| [Basic AuditEvent for a successful Query with Patient](StructureDefinition-IHE.BasicAudit.PatientQuery.md) | A basic AuditEvent profile for when a RESTful Query action happens successfully, and where there is an identifiable Patient subject associated with the read Resource(s).* Given a RESTful Query is requested
* And the request is for a [Patient subject](volume-1.md#152416-patient-as-a-subject) indicated 
* The requestor includes a Patient id or identifier as a query parameter
* The requestor security context is limited to a given Patient identity
 
* And the request is authorized 
* Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)
 
* When successful 
* Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome
* Note success may result in zero or more results. The number of results and the content of the results are not recorded.
 
* Then the AuditEvent recorded will conform 
* The raw search request is base64 encoded and placed in the .entity[query].query element. The base64 encoding of the raw search request enables preserving exactly what was requested, including possibly malicious patterns. This enables detection of malicious or malformed requests.
* The cleaned search may be recorded (not base64) in the .entity[query].description. The cleaned search request would have removed parameters that were not understood/supported. The cleaned search request in the .description element enables more efficient processing.
 
* And When multiple patient results are returned, one AuditEvent is created for every Patient identified in the resulting search set. Note this is true when the search set bundle includes any number of resources that collectively reference multiple Patients. This includes one Resource with multiple subject values, or many Resources with single subject values that are different.
Note: the pattern defined in DICOM and IHE have that the client is identified as the Source Role ID, and the server is identified as the Destination Role ID. This may not be so obvious, as the data actually flows the opposite direction. This pattern is established and thus followed here. |
| [Basic AuditEvent for a successful Read](StructureDefinition-IHE.BasicAudit.Read.md) | A basic AuditEvent profile for when a RESTful Read action happens successfully.* Given a Resource Read is requested
* And that resource does not have a Patient subject or is otherwise associated with a Patient 
* when the resource is Patient specific then [PatientRead](StructureDefinition-IHE.BasicAudit.PatientRead.md) is used
 
* And the request is authorized 
* Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)
 
* When successful 
* Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome
 
* Then the AuditEvent recorded will conform
 |
| [Basic AuditEvent for a successful Read with a Patient](StructureDefinition-IHE.BasicAudit.PatientRead.md) | A basic AuditEvent profile for when a RESTful Read action happens successfully, and where there is an identifiable Patient subject associated with the read Resource.* Given a Resource Read is requested
* And that resource has a [Patient subject](volume-1.md#152416-patient-as-a-subject) or is otherwise associated with a Patient
* And the request is authorized 
* Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)
 
* When successful 
* Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome
 
* Then the AuditEvent recorded will conform
 |
| [Basic AuditEvent for a successful Update](StructureDefinition-IHE.BasicAudit.Update.md) | A basic AuditEvent profile for when a RESTful Update action happens successfully.* Given a Resource Update is requested
* And that resource does not have a Patient subject or is otherwise associated with a Patient 
* when the resource is Patient specific then [PatientUpdate](StructureDefinition-IHE.BasicAudit.PatientUpdate.md) is used
 
* And the request is authorized 
* Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)
 
* When successful 
* Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome
 
* Then the AuditEvent recorded will conform
* And where the server supports FHIR Versioning the AuditEvent should use the version specific id
 |
| [Basic AuditEvent for a successful Update with a Patient subject](StructureDefinition-IHE.BasicAudit.PatientUpdate.md) | A basic AuditEvent profile for when a RESTful Update action happens successfully, and where there is an identifiable Patient subject associated with the Update of the Resource.* Given a Resource Update is requested
* And that resource has a [Patient subject](volume-1.md#152416-patient-as-a-subject) or is otherwise associated with a Patient
* And the request is authorized 
* Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)
 
* When successful 
* Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome
 
* Then the AuditEvent recorded will conform
* And where the server supports FHIR Versioning the AuditEvent should use the version specific id
 |
| [Basic AuditEvent pattern for oAuth Opaque](StructureDefinition-IHE.BasicAudit.OAUTHaccessTokenUse.Minimal.md) | Used when access to the oAuth token, but want to log minimal details.* oUser slice holds only the JWT ID
 |
| [Basic AuditEvent pattern for oAuth Opaque](StructureDefinition-IHE.BasicAudit.OAUTHaccessTokenUse.Opaque.md) | Used when:* only have an opaque oAuth token (e.g. clients).
* have access to the oAuth token, but want to log minimal details.
* oUser slice holds fragment of the opaque oAuth token 
* record only the last 32 characters of the oAuth token to limit risk or replay
* presume 32 characters is enough to coorelate AuditEvent log entries
 
 |
| [Basic AuditEvent pattern for when an Authorization permit is decided](StructureDefinition-IHE.BasicAudit.AuthZconsent.md) | An AduitEvent recording a permit authorization decision by a Consent Decision Service,* Given an Authorization Decision resulted in a permit
* And based on a Consent resource (C1)
* And filed by a patient (P1),
* And in response to a request by an organization (Org1)
* And for the purpose of treatment (TREAT).
* And the given request is authorized
* When an AuditEvent is recorded for the activity
* Then that AuditEvent would follow this profile regarding recording the authorization decision 
* Security Alert
* Authorization Decison by Consent
* Execute action
* date/time recorded
* outcome 
* success when Permit
* failure when Deny
* outcomeDesc would explain why a deny
 
* recorded by the authorization server
* Agents 
* client app
* user 
* user requested purposeOfUse
 
* user organization
* authorization service
 
* Entity 
* patient subject
* consent on file for that patient
* the token id (JWT ID) issued (if one is issued) should be recorded
* other data may be recorded that was used in the decision
 
 
 |
| [Basic AuditEvent pattern for when an activity was authorized by an IUA access token](StructureDefinition-IHE.BasicAudit.OAUTHaccessTokenUse.Comprehensive.md) | A basic AuditEvent profile for when an activity was authorized by an IUA access token. This profile is expected to be used with some other detail that explains the activity. This profile only covers the IUA access token.* Given an activity has occured
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
 
 |
| [Basic AuditEvent pattern for when an activity was authorized by an SAML access token Comprehensive](StructureDefinition-IHE.BasicAudit.SAMLaccessTokenUse.Comprehensive.md) | A basic AuditEvent profile for when an activity was authorized by an SAML access token. This profile is expected to be used with some other detail that explains the activity. This profile only covers the SAML access token.The following table uses a short-hand for the SAML fields and FHIR AuditEvent elements to keep the table compact. It is presumed the reader can understand the SAML field and the FHIR AuditEvent element given. Note the`~`character represents attributes under the SAML`AttributeStatement`.**Builds upon the Minimal**
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
 |
| [Basic AuditEvent pattern for when an activity was authorized by an SAML access token Minimal](StructureDefinition-IHE.BasicAudit.SAMLaccessTokenUse.Minimal.md) | A basic AuditEvent profile for when an activity was authorized by an SAML access token. This profile is expected to be used with some other detail that explains the activity. This profile only covers the SAML access token.* Given an activity has occurred
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
note: this profile records minimal information from the SAML access token, which presumes that use of the AuditEvent at a later time will be able to resolve the given information. |
| [IHE IUA ITI-71 AuditEvent for a successful Get Access Token](StructureDefinition-IHE.IUA.71.md) | Defines constraints on the AuditEvent Resource to record when a ITI-71 - Get Access Token succeedsThis AuditEvent is recorded by Authorization Client and/or Authorization Server that are grouped with ATNA Secure Node or Secure Application.* User Authenticated event
* ITI-71 subtype
* 2 or 3 agents 
* client -
* auth-server
* user user
 
* 1 entity 
* the access token request
 
 |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AuditEvent.agent Assurance Level](StructureDefinition-ihe-assuranceLevel.md) | The assuranceLevel element carries various types of Assurance level. May be an Identity Assurance (IAL), an Authentication Assurance Level (AAL), a Federation Assurance Level (FAL), or other.In SAML this is[defined to be carried](https://docs.oasis-open.org/security/saml/v2.0/saml-authn-context-2.0-os.pdf)in the`saml:AuthnContextClassRef`, but may be carried elsewhere based on the use-case and profiling of SAML.The Vocabulary is not defined here. Some sources of vocabulary:* HL7 v3 [Security Trust Assurance ValueSet](https://terminology.hl7.org/3.0.0/ValueSet-v3-SecurityTrustAssuranceObservationValue.html). These include ISO-7498-2, NIST 800-63-1, and NIST-800-63-2.
* [idmanagement.gov](https://developers.login.gov/saml/#specifying-attributes-and-assurance-levels) published on login.gov 
* this is defined to be carried in the saml:AuthnContextClassRef
 
* OASIS [Authentication Context for SAML](https://docs.oasis-open.org/security/saml/v2.0/saml-authn-context-2.0-os.pdf)
* An example of a customized and purpose defined small set of codes can be found in the HL7 [SMART Health Cards](http://hl7.org/fhir/uv/shc-vaccination/2021Sep/) defines a [valueset](http://hl7.org/fhir/uv/shc-vaccination/ValueSet/identity-assurance-level)
 |
| [AuditEvent.agent other identifiers](StructureDefinition-ihe-otherId.md) | Carries other identifiers are known for an agent. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Agent types holding User-Agent](ValueSet-UserAgentTypesVS.md) | AuditEvent.agent.type values holding OAuth/SAML identified user. Note that user is not just users, but representes the higest agent responsible for triggering the activity being recorded in the AuditEvent.Often this agent also has a type coding that is more specific to the transaction and the direction of the transaction.* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#IRCP // use for query/retrieve
* http://terminology.hl7.org/CodeSystem/v3-RoleClass#AGNT // use for push/create/update
* http://terminology.hl7.org/CodeSystem/v3-RoleClass#PAT // use when the user is the patient
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#AUT "Author" // used with create/update
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#INF "Informant" // used with export
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST "Custodian" // used with export
 |
| [Authorization subType events valueset](ValueSet-AuthZsubTypeVS.md) | ValueSet of the Authorization AuditEvent types |
| [Entity Types used by IHE BasicAudit](ValueSet-BasicAuditEntityTypesVS.md) | For use with AuditEvent.entity.type. This includes codes defined in the BasicAudit. |
| [Other Id Types ValueSet](ValueSet-OtherIdentifierTypesVS.md) | ValueSet of the Other Id Types allowed |
| [RESTful objects role in the event](ValueSet-RestObjectRoles.md) | The role that the given Object played in the Audit Event recorded |
| [all Reads](ValueSet-AllReadVS.md) | ValueSet of the restful-interaction reads |
| [all Searches](ValueSet-AllSearchVS.md) | ValueSet of the restful-interaction searches |
| [all Updates](ValueSet-AllUpdateVS.md) | ValueSet of the restful-interaction updates |
| [participant source types for RESTful create](ValueSet-DataSources.md) | create agent participant types for user operators that are in REST |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Authorization subType events](CodeSystem-AuthZsubType.md) | These AuditEvent subTypes are related to Authorization Decisions. These are more specific types of Security Alert. |
| [Entity Types that are defined in IHE BasicAudit](CodeSystem-BasicAuditEntityType.md) | These are new codes used in BasicAudit IG, where AuditEvent.entity is used to hold a specific kind of data that is not covered by the existing valueSet. |
| [OtherId Identifier Types](CodeSystem-OtherIdentifierTypes.md) | OtherId Types beyond those in the FHIR core |
| [The code used to identifiy a User Agent](CodeSystem-UserAgentTypes.md) | Code used to identify the User Agent. Defined codes for SAML vs OAuth to enable differentiation of .policy as the token ID |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Audit Example of Privacy Disclosure at recipient](AuditEvent-ex-auditPrivacyDisclosure-recipient.md) | Audit Example for a Privacy Disclosure as recorded at the recipient |
| [Audit Example of Privacy Disclosure at recipient](AuditEvent-ex-auditPrivacyDisclosure-recipient-minCodes.md) | Audit Example for a Privacy Disclosure as recorded at the recipient |
| [Audit Example of Privacy Disclosure at source](AuditEvent-ex-auditPrivacyDisclosure-source.md) | Audit Example for a Privacy Disclosure from source perspective |
| [Audit Example of Privacy Disclosure at source](AuditEvent-ex-auditPrivacyDisclosure-source2.md) | Audit Example for a Privacy Disclosure from source perspective |
| [Audit Example of Privacy Disclosure of a patient specific MeasureReport](AuditEvent-ex-auditPrivacyDisclosure-measurereport.md) | Audit Example for a Privacy Disclosure from source perspective of a MeasureReport |
| [Audit Example of a basic Authorization Deny access](AuditEvent-ex-auditAuthZconsent-deny.md) | Example AuditEvent showing an authorization decision resulting in deny. |
| [Audit Example of a basic Authorization Permit access](AuditEvent-ex-auditAuthZconsent.md) | Example AuditEvent showing an authorization decision. |
| [Audit Example of a basic SAML access token of comprehensive](AuditEvent-ex-auditPoke-SAML-Comp.md) | Example AuditEvent showing just the comprehensive SAML access token. The event being recorded is a theoretical**poke**(not intended to represent anything useful).Comprehensive is different than Minimal in that it presumes that when the AuditEvent is used, the appropriate use of the AuditEvent does not have access to the SAML Idenity Provider (IDP), or that the IDP may have forgotten about the issued ID.**Builds upon the Minimal**
| | |
| :--- | :--- |
| Subject.NameID | 05086900124 |
| Issuer | https://sts.sykehuspartner.no |
| ID | XC4WdYS0W5bjsMGc5Ue6tClD_5U |
| purposeOfUse | http://terminology.hl7.org/CodeSystem/v3-ActReason#PATRQT |
| assurance | authenticated AAL 4 |
| ~subject:subject-id | JohnDoe |
| ~subject:npi | 1234567@myNPIregistry.example.org |
| ~subject:provider-identifier | JohnD |
| ~subject:organization | St. Mary of Examples |
| ~subject:organization-id | 1234567@myOrganizationRegistry.example.org |
| ~bppc:2007:docid | urn:uuid:a4b1d27e-5493-11ec-bf63-0242ac130002 |
| ~xua:2012:acp | urn:uuid:b8aa8eec-5493-11ec-bf63-0242ac130002 |
| ~homeCommunityId | urn:uuid:cadbf8d0-5493-11ec-bf63-0242ac130002 |
| ~resource:resource-id | urn:uuid:d7391e5a-5493-11ec-bf63-0242ac130002 |
 |
| [Audit Example of a basic SAML access token of comprehensive from QDI sample](AuditEvent-ex-auditPoke-SAML-QDI-Comp.md) | Example AuditEvent showing QDI sample with just the comprehensive SAML access token. The event being recorded is a theoretical**poke**(not intended to represent anything useful).
| | |
| :--- | :--- |
| Subject.NameID | UID=kskagerb |
| Issuer | CN=John Miller,OU=Harris,O=HITS,L=Melbourne,ST=FL,C=US |
| ID | _d87f8adf-711a-4545-bf77-ff8517b498e4 |
| subject-id | Karl S Skagerberg |
| subject:organization | connectred5.fedsconnect.org |
| subject:organization-id | urn:oid:2.16.840.1.113883.3.333 |
| homeCommunityId | urn:oid:2.16.840.1.113883.3.333 |
| subject:role | 2.16.840.1.113883.6.96#307969004 |
| purposofuse | 2.16.840.1.113883.3.18.7.1#PUBLICHEALTH |
| resource-id | 500000000^^^&2.16.840.1.113883.3.333&ISO |
| AuthzDecisionStatement | nesting |
| .AccessConsentPolicy | urn:oid:1.2.3.4 |
| .InstanceAccessConsentPolicy | urn:oid:1.2.3.4.123456789 |
| AuthnContextClassRef | urn:oasis:names:tc:SAML:2.0:ac:classes:X509 |
 |
| [Audit Example of a basic SAML access token of minimal](AuditEvent-ex-auditPoke-SAML-Min.md) | Example AuditEvent showing just the minimal SAML access token. The event being recorded is a theoretical**poke**(not intended to represent anything useful).Minimal only records the SAML assertion id, issuer, and subject. Minimal may record roles and purposeOfUse if known. Minimal presumes you have access to the SAML Identity Provider (IDP) to reverse lookup given this information.
| | |
| :--- | :--- |
| Subject.NameID | 05086900124 |
| Issuer | https://sts.sykehuspartner.no |
| ID | XC4WdYS0W5bjsMGc5Ue6tClD_5U |
 |
| [Audit Example of a basic SAML access token of minimal from QDI sample](AuditEvent-ex-auditPoke-SAML-QDI-Min.md) | Example AuditEvent showing QDI sample with just the minimal SAML access token. The event being recorded is a theoretical**poke**(not intended to represent anything useful).Minimal only records the SAML assertion id, issuer, and subject. Minimal may record roles and purposeOfUse if known. Minimal presumes you have access to the SAML Identity Provider (IDP) to reverse lookup given this information.
| | |
| :--- | :--- |
| Subject.NameID | UID=kskagerb |
| Issuer | CN=John Miller,OU=Harris,O=HITS,L=Melbourne,ST=FL,C=US |
| ID | _d87f8adf-711a-4545-bf77-ff8517b498e4 |
| subject-id | Karl S Skagerberg |
| subject:organization | connectred5.fedsconnect.org |
| subject:organization-id | urn:oid:2.16.840.1.113883.3.333 |
| homeCommunityId | urn:oid:2.16.840.1.113883.3.333 |
| subject:role | 2.16.840.1.113883.6.96#307969004 |
| purposofuse | 2.16.840.1.113883.3.18.7.1#PUBLICHEALTH |
| resource-id | 500000000^^^&2.16.840.1.113883.3.333&ISO |
| AuthzDecisionStatement | nesting |
| .AccessConsentPolicy | urn:oid:1.2.3.4 |
| .InstanceAccessConsentPolicy | urn:oid:1.2.3.4.123456789 |
| AuthnContextClassRef | urn:oasis:names:tc:SAML:2.0:ac:classes:X509 |
 |
| [Audit Example of a basic SAML access token of minimal with multiple PurposeOfUse](AuditEvent-ex-auditPoke-SAML-Min2.md) | Example AuditEvent showing just the minimal SAML access token. The event being recorded is a theoretical**poke**(not intended to represent anything useful).Minimal only records the SAML assertion id, issuer, and subject. Minimal may record roles and purposeOfUse if known. Minimal presumes you have access to the SAML Identity Provider (IDP) to reverse lookup given this information.
| | |
| :--- | :--- |
| Subject.NameID | "JoeL" |
| Issuer | "https://carequality.org" |
| ID | "_5a6b51b7-cd3e-4629-aac8-9846cbc3cf84" |
| ~purposeOfUse | http://terminology.hl7.org/CodeSystem/v3-ActReason, TREAT |
| ~purposeOfUse | http://terminology.hl7.org/CodeSystem/v3-ActReason, ETREAT |
| ~purposeOfUse | http://terminology.hl7.org/CodeSystem/v3-ActReason, HPAYMT |
| ~purposeOfUse | http://terminology.hl7.org/CodeSystem/v3-ActReason, HOPERAT |
 |
| [Client - Audit Example of a basic patient identifiable Create by the author](AuditEvent-ex-auditBasicCreateClient.md) | Audit Example for a RESTful Create of a resource with a patient subject created by the author* recorded by the client with [server](AuditEvent-ex-auditBasicCreateServer.md)
* server is FHIR application server defined by ex-device
* client is an app on myMachine on myMachine
* user is the author John Smith
* patient is ex-patient
* created resource is ex-list
 |
| [Client - Audit Example of a basic patient identifiable Create of a Job with no user](AuditEvent-ex-auditBasicCreateNoUserJob.md) | Audit Example for a RESTful Create of a Job (document) resource with a patient subject with no user. This might be a B2B exchange where the OAuth token just identifies the requesting organization.* recorded by the client - ex-device
* server is FHIR application server defined by ex-device
* client is an app on myMachine on myMachine
* patient is ex-patient
* created job is ex-documentreference
 |
| [Client - Audit Example of a basic patient identifiable Create of a Report with no user](AuditEvent-ex-auditBasicCreateNoUserReport.md) | Audit Example for a RESTful Create of a Report (document) resource with a patient subject with no user. This might be a B2B exchange where the OAuth token just identifies the requesting organization.* recorded by the client - ex-device
* server is FHIR application server defined by ex-device
* client is an app on myMachine on myMachine
* patient is ex-patient
* created resource is ex-documentreference
 |
| [Client - Audit Example of a basic patient identifiable Create with no user](AuditEvent-ex-auditBasicCreateNoUser.md) | Audit Example for a RESTful Create of a resource with a patient subject with no user. This might be a B2B exchange where the OAuth token just identifies the requesting organization.* recorded by the client - ex-device
* server is FHIR application server defined by ex-device
* client is an app on myMachine on myMachine
* patient is ex-patient
* created resource is ex-list
 |
| [Client - Audit Example of a basic patient identifiable Delete](AuditEvent-ex-auditBasicDelete2.md) | Audit Example for a RESTful Delete of a resource with a patient subject* recorded by the client
* client is an app on myMachine
* user is an Custodian Charley Miller
* patient is identified as ex-patient
* deleted object is ex-list
 |
| [Client - Audit Example of a basic patient identifiable Delete at Client](AuditEvent-ex-auditBasicDeleteClient.md) | Audit Example for a RESTful Delete of a resource with a patient subject* recorded by the client peer [server](AuditEvent-ex-auditBasicDeleteServer.md)
* client is an app on myMachine
* user is the Author John Smith
* patient is identified as ex-patient
* deleted object is ex-list
 |
| [Client - Audit Example of a basic patient identifiable Delete of a Job with no user](AuditEvent-ex-auditBasicDeleteNoUserJob.md) | Audit Example for a RESTful Delete of a Job (document) resource with a patient subject with no user. This might be a B2B exchange where the OAuth token just identifies the requesting organization.* recorded by the client
* client is an app on myMachine
* user is NOT specified.
* patient is identified as ex-patient
* deleted Job is ex-documentreference
 |
| [Client - Audit Example of a basic patient identifiable Delete of a Report with no user](AuditEvent-ex-auditBasicDeleteNoUserReport.md) | Audit Example for a RESTful Delete of a Report (document) resource with a patient subject with no user. This might be a B2B exchange where the OAuth token just identifies the requesting organization.* recorded by the client
* client is an app on myMachine
* user is NOT specified.
* patient is identified as ex-patient
* deleted Report is ex-documentreference
 |
| [Client - Audit Example of a basic patient identifiable Delete with no user](AuditEvent-ex-auditBasicDeleteNoUser.md) | Audit Example for a RESTful Delete of a resource with a patient subject with no user. This might be a B2B exchange where the OAuth token just identifies the requesting organization.* recorded by the client
* client is an app on myMachine
* user is NOT specified.
* patient is identified as ex-patient
* deleted object is ex-list
 |
| [Client - Audit Example of a basic patient identifiable Query (GET)](AuditEvent-ex-auditBasicQueryGetClient.md) | Audit Example for a RESTful Query using GET with a patient subject, recorded by the Client* recorded by the client 
* see same event as recorded by the [server](AuditEvent-ex-auditBasicQueryGetServer.md)
 
* server is FHIR application server defined by ex-device
* client is a computer at myMachine.example.org
* user is John Smith
* query is for an Observation for given patient
* patient is specified
* X-Request-Id is specified
 |
| [Client - Audit Example of a basic patient identifiable read](AuditEvent-ex-auditBasicReadClient.md) | Audit Example for a RESTful read of a resource with a patient subject* recorded by the client peer [server](AuditEvent-ex-auditBasicReadServer.md)
* server is FHIR application server defined by ex-device
* client is an app on myMachine on myMachine
* user is John Smith
* patient is ex-patient
* read resource is ex-list
* x-request-id is 76d148b6-586d-11ec-bf63-0242ac130002
 |
| [Dummy Consent example](Consent-ex-consent.md) | Dummy Consent example for completeness sake. No actual use of this resource other than an example target |
| [Dummy Device authorization service example](Device-ex-authz.md) | Dummy Device authorization service example for completeness sake. No actual use of this resource other than an example target |
| [Dummy Device example](Device-ex-device.md) | Dummy Device example for completeness sake. No actual use of this resource other than an example target |
| [Dummy DocumentReference 2 example](DocumentReference-ex-documentreference2.md) | Dummy DocumentReference 2 example for completeness sake. No actual use of this resource other than an example target |
| [Dummy DocumentReference example](DocumentReference-ex-documentreference.md) | Dummy DocumentReference example for completeness sake. No actual use of this resource other than an example target |
| [Dummy List example](List-ex-list.md) | Dummy List example for completeness sake. No actual use of this resource other than an example target |
| [Dummy MeasureReport example](MeasureReport-ex-measurereport.md) | Dummy MeasureReport example for completeness sake. No actual use of this resource other than an example target that is NOT patient specific. |
| [Dummy Organization example](Organization-ex-organization.md) | Dummy Organization example for completeness sake. No actual use of this resource other than an example target |
| [Dummy Patient example](Patient-ex-patient.md) | Dummy patient example for completeness sake. No actual use of this resource other than an example target |
| [Dummy Practitioner example](Practitioner-ex-practitioner.md) | Dummy Practitioner example for completeness sake. No actual use of this resource other than an example target |
| [Example document that says: Hello World](Binary-ex-b-binary.md) | Dummy Binary that just says Hello World |
| [SAML example from CareQuality](DocumentReference-Dr-SAML-QDI.md) | Example of a SAML assertion as seen in CareQuality. |
| [Server - Audit Example of a basic Create](AuditEvent-ex-auditBasicCreateNoPatient.md) | Audit Example for a RESTful Create of a resource with No patient subject. This example is a summary measure report.* recorded by the client
* server is FHIR application server defined by ex-device
* client is an app on myMachine on myMachine
* user is John Smith
* created resource is ex-measurereport
 |
| [Server - Audit Example of a basic Query (GET)](AuditEvent-ex-auditBasicQueryGetNoPatient.md) | Audit Example for a RESTful Query using GET with NO patient subject, recorded by the Server.* recorded by the server
* server is FHIR application server defined by ex-device
* client is a computer at myMachine.example.org
* user is John Smith
* query is for a MeasureReport
* X-Request-Id is specified
 |
| [Server - Audit Example of a basic Update of a measure report](AuditEvent-ex-auditBasicUpdateNoPatient.md) | Audit Example for a RESTful Update of a Measure Report resource. This might be a B2B exchange where the OAuth token just identifies the requesting organization.* recorded by the server
* server is FHIR application server defined by ex-device defined by ex-device
* client is an app on myMachine on myMachine
* user is John Smith
* created resource is ex-measurereport
 |
| [Server - Audit Example of a basic object Delete at server](AuditEvent-ex-auditBasicDeleteNoPatient.md) | Audit Example for a RESTful Delete of a resource that is NOT patient specific* recorded by the server
* client is an app on myMachine
* user is the Author John Smith
* deleted object is ex-measurereport that is a summary FEMA COVID report draft
 |
| [Server - Audit Example of a basic patient identifiable Create](AuditEvent-ex-auditBasicCreateServer.md) | Audit Example for a RESTful Create of a resource with a patient subject* recorded by the server with [client](AuditEvent-ex-auditBasicCreateClient.md)
* server is FHIR application server defined by ex-device
* client is an app on myMachine on myMachine
* user is John Smith
* patient is ex-patient
* created resource is ex-list
 |
| [Server - Audit Example of a basic patient identifiable Create by a custodian](AuditEvent-ex-auditBasicCreate2.md) | Audit Example for a RESTful Create of a resource with a patient subject by a custodian* recorded by the server
* server is FHIR application server defined by ex-device
* client is an app on myMachine on myMachine
* user is an Custodian Charley Miller
* patient is ex-patient
* created resource is ex-list
 |
| [Server - Audit Example of a basic patient identifiable Create by an informant](AuditEvent-ex-auditBasicCreate1.md) | Audit Example for a RESTful Create of a resource with a patient subject by an informant* recorded by the server
* server is FHIR application server defined by ex-device
* client is an app on myMachine on myMachine
* user is an Informant Betty Jones
* patient is ex-patient
* created resource is ex-list
 |
| [Server - Audit Example of a basic patient identifiable Delete at server](AuditEvent-ex-auditBasicDeleteServer.md) | Audit Example for a RESTful Delete of a resource with a patient subject* recorded by the server peer [client](AuditEvent-ex-auditBasicDeleteClient.md)
* client is an app on myMachine
* user is the Author John Smith
* patient is identified as ex-patient
* deleted object is ex-list
 |
| [Server - Audit Example of a basic patient identifiable Delete by Informant](AuditEvent-ex-auditBasicDeleteInformant.md) | Audit Example for a RESTful Delete of a resource with a patient subject* recorded by the server
* server is FHIR application server defined by ex-device
* client is an app on myMachine on myMachine
* user is an Informant Betty Jones
* patient is identified as ex-patient
* deleted object is ex-list
 |
| [Server - Audit Example of a basic patient identifiable Query (GET)](AuditEvent-ex-auditBasicQueryGetServer.md) | Audit Example for a RESTful Query using GET with a patient subject, recorded by the Server* recorded by the server 
* see same event as recorded by the [client](AuditEvent-ex-auditBasicQueryGetClient.md)
 
* server is FHIR application server defined by ex-device
* client is a computer at myMachine.example.org
* user is John Smith
* query is for an Observation for given patient
* patient is specified
* X-Request-Id is specified
 |
| [Server - Audit Example of a basic patient identifiable Query (POST)](AuditEvent-ex-auditBasicQueryPost.md) | Audit Example for a RESTful Query using POST with a patient subject, recorded by the server* recorded by the server
* server is FHIR application server defined by ex-device
* client is a computer at myMachine.example.org
* user is John Smith
* query is for an Observation for given patient
* patient is specified
 |
| [Server - Audit Example of a basic patient identifiable Update by the custodian](AuditEvent-ex-auditBasicUpdate2.md) | Audit Example for a RESTful Update of a resource with a patient subject, updated by the custodian.* recorded by the server
* server is FHIR application server defined by ex-device defined by ex-device
* client is an app on myMachine on myMachine
* user is an Custodian Charley Miller
* patient is ex-patient
* created resource is ex-list
 |
| [Server - Audit Example of a basic patient identifiable Update by the informant](AuditEvent-ex-auditBasicUpdate1.md) | Audit Example for a RESTful Update by the informant of a resource with a patient subject* recorded by the server
* server is FHIR application server defined by ex-device defined by ex-device
* client is an app on myMachine on myMachine
* user is an Informant Betty Jones
* patient is ex-patient
* created resource is ex-list
 |
| [Server - Audit Example of a basic patient identifiable Update of a Job with no user](AuditEvent-ex-auditBasicUpdateNoUserJob.md) | Audit Example for a RESTful Update of a Job (document) resource with a patient subject with no user. This might be a B2B exchange where the OAuth token just identifies the requesting organization.* recorded by the server
* server is FHIR application server defined by ex-device defined by ex-device
* client is an app on myMachine on myMachine
* patient is ex-patient
* created Job is ex-documentreference
 |
| [Server - Audit Example of a basic patient identifiable Update of a Report with no user](AuditEvent-ex-auditBasicUpdateNoUserReport.md) | Audit Example for a RESTful Update of a Report (document) resource with a patient subject with no user. This might be a B2B exchange where the OAuth token just identifies the requesting organization.* recorded by the server
* server is FHIR application server defined by ex-device defined by ex-device
* client is an app on myMachine on myMachine
* patient is ex-patient
* created report is ex-documentreference
 |
| [Server - Audit Example of a basic patient identifiable Update using Patch](AuditEvent-ex-auditBasicPatch.md) | Audit Example for a RESTful Update using Patch of a resource with a patient subject* recorded by the server
* server is FHIR application server defined by ex-device
* client is an app on myMachine on myMachine
* user is John Smith
* patient is ex-patient
* created resource is ex-list
 |
| [Server - Audit Example of a basic patient identifiable Update with no user](AuditEvent-ex-auditBasicUpdateNoUser.md) | Audit Example for a RESTful Update of a resource with a patient subject with no user. This might be a B2B exchange where the OAuth token just identifies the requesting organization.* recorded by the server
* server is FHIR application server defined by ex-device defined by ex-device
* client is myMachine
* patient is ex-patient
* created resource is ex-list
 |
| [Server - Audit Example of a basic patient identifiable read](AuditEvent-ex-auditBasicReadNoPatient.md) | Audit Example for a RESTful read of a resource with no patient subject* recorded by the server
* server is FHIR application server defined by ex-device
* client is an app on myMachine on myMachine
* user is John Smith
* read resource is ex-measurereport
 |
| [Server - Audit Example of a basic patient identifiable read](AuditEvent-ex-auditBasicReadServer.md) | Audit Example for a RESTful read of a resource with a patient subject* recorded by the server peer [client](AuditEvent-ex-auditBasicReadClient.md)
* server is FHIR application server defined by ex-device
* client is an app on myMachine on myMachine
* user is John Smith
* patient is ex-patient
* read resource is ex-list
* x-request-id is 76d148b6-586d-11ec-bf63-0242ac130002
 |
| [Server - Audit Example of a basic patient identifiable read with no user](AuditEvent-ex-auditBasicReadNoUser.md) | Audit Example for a RESTful read of a resource with a patient subject with no user. This might be a B2B exchange where the OAuth token just identifies the requesting organization.* recorded by the server
* server is FHIR application server defined by ex-device
* client is an app on myMachine on myMachine
* user is John Smith
* patient is ex-patient
* read resource is ex-list
* x-request-id is c07cf648-f068-4dd9-9411-8e69ca07d525
 |
| [oAuth Client - Audit Example of a basic patient identifiable read](AuditEvent-ex-auditBasicReadOClient.md) | Audit Example for a oAuth authorized RESTful read of a resource with a patient subject* This example is otherwise the same as [client](AuditEvent-ex-auditBasicReadClient.md)
* client logs using the OAUTHaccessTokenUseOpaque profile as it doesn't have access to the details
 |
| [oAuth Server - Audit Example of a basic patient identifiable read](AuditEvent-ex-auditBasicReadOServer.md) | Audit Example for a oAuth authorized RESTful read of a resource with a patient subject* This example is otherwise the same as [server](AuditEvent-ex-auditBasicReadServer.md)
* server has access to the oAuth token details so uses IUAaccessOAUTHaccessTokenUseComprehensiveTokenUse profile
* TODO. Sushi has issues that prevent me from including all the agent entries, so this just has the agent entries for the oAuth profile and not the Read profile 
* should also be a Destination and Source agent
 
 |
| [oAuth Server Minimal - Audit Example of a basic patient identifiable read](AuditEvent-ex-auditBasicReadOServerMin.md) | Audit Example for minimally recorded oAuth authorized RESTful read of a resource with a patient subject* This example is otherwise the same as [server](AuditEvent-ex-auditBasicReadServer.md)
* server has access to the oAuth token details but policy requests minimal recorded so uses IUAaccessOAUTHaccessTokenUseMinimalTokenUse profile
* TODO. Sushi has issues that prevent me from including all the agent entries, so this just has the agent entries for the oAuth profile and not the Read profile 
* should also be a Destination and Source agent
 
 |

