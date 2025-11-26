# Artifacts Summary - Patient Demographics Query for Mobile (PDQm) v3.2.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [PDQm Patient Demographics Consumer Actor Implementing Match Operation Option](CapabilityStatement-IHE.PDQm.PatientDemographicsConsumerMatch.md) | The PDQm Patient Demographics Consumer Actor (client) requirements CapabililtyStatement expresses the requirements that can be utilized while being compliant. This capability statement implements the Match Operation Option.* Invoke the $match operation on a FHIR endpoint
* Using FHIR R4
* Input and output parameters conform to the PDQm Profiles
* MAY request json or xml encoding
* SHOULD use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)
 |
| [PDQm Patient Demographics Consumer Actor Implementing Patient Search Option](CapabilityStatement-IHE.PDQm.PatientDemographicsConsumerQuery.md) | The PDQm Patient Demographics Consumer Actor (client) requirements CapabililtyStatement expresses the requirements that can be utilized while being compliant. This capability statement implements the Patient Search Option.* Query against the FHIR endpoint to the Patient Resource endpoint
* Using FHIR R4
* MAY request json or xml encoding
* SHOULD use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)
* [Search Parameters that MAY be used](ITI-78.md#23784121-search-parameters) 
* _id
* active
* family
* given
* identifier
* telecom
* birthdate
* address
* gender
* mothersMaidenName
 
 |
| [PDQm Patient Demographics Supplier Actor](CapabilityStatement-IHE.PDQm.PatientDemographicsSupplier.md) | The PDQm Patient Demographics Supplier Actor (server) requirements CapabililtyStatement expresses the requirements that SHALL be provided.* Query against the FHIR endpoint to the Patient Resource endpoint
* Using FHIR R4
* SHALL support both json or xml encoding
* SHOULD use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)
* [Search Parameters that SHALL be supported](ITI-78.md#23784121-search-parameters) 
* _id
* active
* family
* given
* identifier
* telecom
* birthdate
* address
* gender
* mothersMaidenName
 
* SHALL support the `:exact` modifier on search parameters of type string
* SHALL return Patient Resources conforming to the PDQm Patient Profile
 |
| [PDQm Patient Demographics Supplier Actor Implementing Match Operation Option](CapabilityStatement-IHE.PDQm.PatientDemographicsSupplierMatch.md) | The PDQm Patient Demographics Supplier Actor (server) requirements CapabililtyStatement expresses the requirements that SHALL be provided. This capability statement implements the Match Operation Option.* Query against the FHIR endpoint to the Patient Resource endpoint
* Using FHIR R4
* SHALL support both json or xml encoding
* SHOULD use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)
* [Search Parameters that SHALL be supported](ITI-78.md#23784121-search-parameters) 
* _id
* active
* family
* given
* identifier
* telecom
* birthdate
* address
* gender
* mothersMaidenName
 
* SHALL support the `:exact` modifier on search parameters of type string
* SHALL support the PDQm $match operation
* SHALL return Patient Resources conforming to the PDQm Patient Profile
 |

### Behavior: Operation Definitions 

These are custom operations that can be supported by and/or invoked by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [PDQm $Match](OperationDefinition-PDQmMatch.md) | This operation implements the[Patient Demographics Match [ITI-119]](ITI-119.md)transaction. It is fully compatible with the[$match Operation on Patient](http://hl7.org/fhir/R4/patient-operation-match.html). The only changes are to constrain the input parameters to use the[PDQm Patient Profile for $match Input](StructureDefinition-IHE.PDQm.MatchInputPatient.md)profile and to constring the output parameters to use the[PDQm Patient Profile](StructureDefinition-IHE.PDQm.Patient.md)profile. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Audit Event for PDQm Match at Consumer](StructureDefinition-IHE.PDQm.Match.Audit.Consumer.md) | Defines constraints on the AuditEvent (AuditMessage) Resource for a Patient Demographics Consumer to record when it performs a Patient Demographics Match[ITI-119](./ITI-119.md).* Build off of the IHE BasicAudit Query event
* add the ITI-119 as a subtype
* client is Patient Demographics Consumer
* server is Patient Demographics Supplier
* entity slice for query are REQUIRED
* entity slice for transaction is available
* entity for patient SHOULD be used when one patient is explicitly identified in the query parameters
* source is the client
 |
| [Audit Event for PDQm Match at Supplier](StructureDefinition-IHE.PDQm.Match.Audit.Supplier.md) | Defines constraints on the AuditEvent (AuditMessage) Resource when a Patient Demographics Supplier responds to a Patient Demographics Match[ITI-119](./ITI-119.md).* Build off of the IHE BasicAudit Query event
* add the ITI-119 as a subtype
* client is Patient Demographics Consumer
* server is Patient Demographics Supplier
* entity slice for query are REQUIRED
* entity slice for transaction is available
* entity for patient SHOULD be used when one patient is explicitly identified in the query parameters
* source is the server
 |
| [Audit Event for PDQm Query at Consumer](StructureDefinition-IHE.PDQm.Query.Audit.Consumer.md) | Defines constraints on the AuditEvent (AuditMessage) Resource for a Patient Demographics Consumer to record when it performs a Patient Demographics Query[ITI-78](./ITI-78.md).* Build off of the IHE BasicAudit Query event
* add the ITI-78 as a subtype
* client is Patient Demographics Consumer
* server is Patient Demographics Supplier
* entity slice for query are REQUIRED
* entity slice for transaction is available
* entity for patient SHOULD be used when one patient is explicitly identified in the query parameters
* source is the client
 |
| [Audit Event for PDQm Query at Supplier](StructureDefinition-IHE.PDQm.Query.Audit.Supplier.md) | Defines constraints on the AuditEvent (AuditMessage) Resource when a Patient Demographics Supplier responds to a Patient Demographics Query[ITI-78](./ITI-78.md).* Build off of the IHE BasicAudit Query event
* add the ITI-78 as a subtype
* client is Patient Demographics Consumer
* server is Patient Demographics Supplier
* entity slice for query are REQUIRED
* entity slice for transaction is available
* entity for patient SHOULD be used when one patient is explicitly identified in the query parameters
* source is the server
 |
| [PDQm Match Input Parameters Profile](StructureDefinition-IHE.PDQm.MatchParametersIn.md) | The PDQm Match Input Parameters Profile describes the Parameters Resource that is to be posted to the $match endpoint when invoking ITI-119. This profile is consistent with the expections of the[Patient-match operation in FHIR core](http://hl7.org/fhir/R4/patient-operation-match.html), except the input resource SHALL be an instance of the[PDQm Patient Profile for $match Input](StructureDefinition-IHE.PDQm.MatchInputPatient.md).Note that the only REQUIRED parameter is the Patient Resource. When only the Patient is supplied, it can be POSTed directly to the $match endpoint without being wrapped in a Parameters Resource, as long as it conforms to the[PDQm Patient Profile for $match Input](StructureDefinition-IHE.PDQm.MatchInputPatient.md). |
| [PDQm Match Output Bundle Profile](StructureDefinition-IHE.PDQm.MatchParametersOut.md) | The PDQm Match Output Bundle Profile describes the Bundle that SHALL be returned in response to an ITI-119 transaction. This profile is consistent with the expections of the[Patient-match operation in FHIR core](http://hl7.org/fhir/R4/patient-operation-match.html), except the Patient Resources SHALL be instances of the[PDQm Patient Profile](StructureDefinition-IHE.PDQm.Patient.md).Since the response to the $match Operation contains only one parameter, the Bundle resource is returned directly rather than inside of a Parameters resource. |
| [PDQm Patient Profile](StructureDefinition-IHE.PDQm.Patient.md) | #### OverviewThe PDQm Patient Profile establiashes the following base requirements:* when any element in FHIR Core Patient are known, and when authorized to return the element, then all elements that are core to FHIR Patient SHOULD be returned
* forbids modifier extensions and implicit rules - so that all uses do not need to be concerned with changes to the meaning of the core elements of the Patient resource
* adds the `patient-mothersMaidenName` extension as an extension available to hold the mother's maiden name
#### Use of Business IdentifiersTo facilitate working with and matching resources across specifications and servers,`Patient.identifier`is REQUIRED. Including business identifiers in`Patient.identifier`is important for allowing the Patient resource to maintain identity outside of the context of the FHIR server on which it resides. This would be the case when the resource is copied to another server, saved to a file, migrated to a new FHIR server, etc.`Patient.identifier`is typically populated with an identifier assigned by an assigning authority in the local patient identifier domain. Populating with identifiers issued by jurisdictional authorities, such as the patient's national identifier, drivers license number, jurisdictional healthcare identifier, etc., is also typical when policy allows for those identifiers to be disclosed to the client system.When no existing business identifier exists, the Patient Demographics Supplier might construct one in one of the following ways:**Option 1**: Populate`Patient.identifier.value`with the full URL for the Patient resource as it would be accessed by the client when doing a READ request. In this case, the corresponding value for`Patient.identifier.system`SHALL be`urn:ietf:rfc:3986`.**Option 2**: Populate`Patient.identifier.value`with a[Universally Unique Identifier](https://en.wikipedia.org/wiki/Universally_unique_identifier), including the`urn:uuid:`prefix. In this case, the corresponding value for`Patient.identifier.system`SHALL be`urn:ietf:rfc:3986`. The UUID SHOULD be persisted within the FHIR resource so that subsequent accesses return the same identifier, but it is not REQUIRED in environments where doing so is not possible.#### Handling of Patient.linkWhen multiple Patient Resources are used to represent the same Patient, Patient.link SHALL be used to describe the relationship between the resources.When returning Patient Resources, the Patient Demographics SHALL ensure that:* No more that one Patient Resource referencing a Patient Identity contains `active=true`
* When returning multiple Patient Resources for the same Patient, `Patient.link` SHALL be used to describe the relationship between each Patient Resource
* When one Patient Resource has become subsumed by another, the subsumed Patient SHALL use `Patient.link` to point at the surviving Patinet Resource and `Patient.link.type` SHALL be `replaced-by`.
Patient Demographics Consumers SHOULD be able to traverse Patient.link and use Patient.active to determine if a given Patient is currently active in the system. |
| [PDQm Patient Profile for $match Input](StructureDefinition-IHE.PDQm.MatchInputPatient.md) | The PDQm Patient Profile for $match Input SHALL be provided as input to the ITI-119 transaction.* While it is not REQUIRED that the input to $match be a valid FHIR instance, it is RECOMMENDED to supply as many elements as possible to facilitate matching.
* modifierExtension and implicitRules SHALL not be specified.
* The patient-mothersMaidenName extension is available to hold the mother's maiden name
 |
| [PDQm Query Patient Resource Response message](StructureDefinition-IHE.PDQm.QueryPatientResourceResponseMessage.md) | A profile on the Query Patient Resource Response message for ITI-78 |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Audit Example of ITI-119 at Consumer](AuditEvent-ex-auditPdqmMatch-consumer.md) | Audit Event for PDQm Query Transaction by the Patient Identifier Cross-reference ConsumerWhere the $match operation was executed with the[example request parameters Bundle](Parameters-ex-match-input-patient-only.md). |
| [Audit Example of ITI-119 at Supplier](AuditEvent-ex-auditPdqmMatch-supplier.md) | Audit Event for PDQm Match Transaction by the Patient Identifier Cross-reference SupplierWhere the $match operation was executed with the[example request parameters Bundle](Parameters-ex-match-input-patient-only.md).Note the Supplier may choose to record patient identities found, but is not required to.Given the Supplier chooses to record a patient in the AuditEvent When the search finds multiple Patients, Then the Supplier would create an AuditEvent for each of those Patients.This example shows where ex-patient is returned. This single result does not affect the response returned on the ITI-119 that would include all results. |
| [Audit Example of ITI-78 at Consumer](AuditEvent-ex-auditPdqmQuery-consumer.md) | Audit Event for PDQm Query Transaction by the Patient Identifier Cross-reference Consumerwhere the Query was executed with a GET as follows:```
GET https://server.example.com/fhir/Patient?family=MOHR&amp;given=ALICE&amp;active=true&amp;gender=female
Accept: application/fhir+json; fhirVersion=4.0

```
 |
| [Audit Example of ITI-78 at Supplier](AuditEvent-ex-auditPdqmQuery-supplier.md) | Audit Event for PDQm Query Transaction by the Patient Identifier Cross-reference Supplierwhere the Query was executed with a GET as follows:```
GET https://server.example.com/fhir/Patient?family=MOHR&amp;given=ALICE&amp;active=true&amp;gender=female
Accept: application/fhir+json; fhirVersion=4.0

```
Note the Supplier may choose to record patient identities found, but is not required to.Given the Supplier chooses to record a patient in the AuditEvent When the search finds multiple Patients, Then the Supplier would create an AuditEvent for each of those Patients.This example shows where ex-patient is returned. This single result does not affect the response returned on the ITI-78 that would include all results. |
| [Dummy Device example](Device-ex-device.md) | Dummy Device example for completeness sake. No actual use of this resource other than an example target |
| [Example $match Input Parameters Where Only Patient Is Specified](Parameters-ex-match-input-patient-only.md) | Example of Parameters resource to be supplied for ITI-119 input when only the Patient parameter is specified. |
| [Example $match Input Parameters Where count Is Specified](Parameters-ex-match-input-count.md) | Example of Parameters resource to be supplied for ITI-119 input when count is specified. |
| [Example $match Input Parameters Where onlyCertainmatches Is Specified](Parameters-ex-match-input-onlyCertainMatches.md) | Example of Parameters resource to be supplied for ITI-119 input when onlyCertainMatches is specified. |
| [Example $match Output Bundle - 1 Patient](Bundle-ex-match-output.md) | Example of Bundle resource to be returned for ITI-119 output. This is a simple case where only one patient is returned. |
| [Example $match Output Bundle - 1 Patient and 1 Warning](Bundle-ex-match-output-warning.md) | Example of Bundle resource to be returned for ITI-119 output. 1 patient is returned alongside a warning. |
| [Example $match Output Bundle - 2 Patients](Bundle-ex-match-output-multiple.md) | Example of Bundle resource to be returned for ITI-119 output. 2 Patients are found in the search result. |
| [Example $match Output Bundle - Error](Bundle-ex-match-output-error.md) | Example of Bundle resource to be returned for ITI-119 output. No Patients are found in the search result. |
| [Example $match Output Bundle - No Patients Found](Bundle-ex-match-output-empty.md) | Example of Bundle resource to be returned for ITI-119 output. No Patients are found in the search result. |
| [Example OperationOutcome - $match Failure](OperationOutcome-ex-match-failure.md) | Example OperationOutcome resulting from a failure to invoke $match |
| [Example OperationOutcome - $match Warning](OperationOutcome-ex-match-warning.md) | Example OperationOutcome containing a warning to be returned for $match |
| [Example PDQm Patient](Patient-ex-patient.md) | Example Patient instance of the PDQm Patient profile. |
| [Example PDQm Patient with Mothers Maiden Name Extension](Patient-ex-patient-mothers-maiden-name.md) | Example Patient instance of the PDQm Patient profile where the Patient has the mother's maiden name specified. |
| [Example Patient input for PDQm $match](Patient-ex-match-input-patient.md) | Example of a Patient resource to be used as input for $match |
| [Example of a Query Patient Resource Response message](Bundle-ex-QueryPatientResourceResponseMessage.md) | Example of a Query Patient Resource Response message with a single Patient |

