# Artifacts Summary - Patient Identifier Cross-referencing for mobile (PIXm) v3.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [IHE ITI Patient Identifier Cross-referencing for mobile (PIXm) - Consumer (client)](CapabilityStatement-IHE.PIXm.Consumer.md) | The[Patient Identifier Cross-reference Consumer Actor](volume-1.md#141112-patient-identifier-cross-reference-consumer)CapabililtyStatement expresses the requirements that can be utilized while being compliant.* using FHIR R4
* using json or xml encoding
* [ITI-83](ITI-83.md) the $ihe-pix operation
* should use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)
 |
| [IHE ITI Patient Identifier Cross-referencing for mobile (PIXm) - Manager (server)](CapabilityStatement-IHE.PIXm.Manager.md) | The[Patient Identifier Cross-reference Manager Actor](volume-1.md#141113-patient-identifier-cross-reference-manager)CapabililtyStatement expresses the requirements that shall be provided.* using FHIR R4
* using json and xml encoding
* support for [ITI-83](ITI-83.md) the $ihe-pix operation
* support conditional update for [ITI-104]
* support conditional delete for [ITI-104] if Remove Patient Option is supported
* should use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)
 |
| [IHE ITI Patient Identifier Cross-referencing for mobile (PIXm) - Source (client)](CapabilityStatement-IHE.PIXm.Source.md) | The[Patient Identity Source Actor](volume-1.md#141111-patient-identity-source)CapabililtyStatement expresses the requirements that can be utilized while being compliant.* using FHIR R4
* using json or xml encoding
* using conditional update for [ITI-104](ITI-104.md)
* using conditional delete for [ITI-104](ITI-104.md) if Remove Patient Option is supported
* provide supported Patient profile for crosss-referencing for [ITI-104](ITI-104.md)
* should use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)
 |

### Behavior: Operation Definitions 

These are custom operations that can be supported by and/or invoked by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [IHE PIXm $pix Operation](OperationDefinition-IHE.PIXm.pix.md) | The OperationDefinition defines the In and Output Parameters for the $ihe-pix operation* Input: sourceIdentifier, targetSystem and _format
* Output: targetIdentifier, targetId This operation is used to retrieve identifiers associated with a Patient Resource from the Patient Identifier Cross-reference Manager.
 |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Audit Event for PIXm Query by the Consumer](StructureDefinition-IHE.PIXm.Query.Audit.Consumer.md) | Defines constraints on the AuditEvent (AuditMessage) Resource to record when a PIXm Query Transaction happens, as recorded by the Patient Identifier Cross-reference Consumer.* Build off of the IHE BasicAudit Patient Query event
* add the ITI-83 as a subtype
* client is Patient Identifier Cross-reference Consumer
* server is Patient Identifier Cross-reference Manager
* entity slice for query parameters
* eitity slice for a source patient identifier
* yes both entities likely say the same thing, but one is specifically the patient identifier, and the other is in query parameter format
* source is the client
 |
| [Audit Event for PIXm Query by the Manager](StructureDefinition-IHE.PIXm.Query.Audit.Manager.md) | Defines constraints on the AuditEvent (AuditMessage) Resource to record when a PIXm Query Transaction happens, as recorded by the Patient Identifier Cross-reference Manager.* Build off of the IHE BasicAudit Patient Query event
* add the ITI-83 as a subtype
* client is Patient Identifier Cross-reference Consumer
* server is Patient Identifier Cross-reference Manager
* entity slice for query parameters
* eitity slice for a source patient identifier
* yes both entities likely say the same thing, but one is specifically the patient identifier, and the other is in query parameter format
* source is the server
 |
| [Audit Event for Patient Identity Feed FHIR by the Manager that Creates a Patient](StructureDefinition-IHE.PIXm.Feed.Create.Audit.Manager.md) | Defines constraints on the AuditEvent Resource to record when a Patient Identity Feed FHIR Transaction happens, as recorded by the Patient Identifier Cross-reference Manager.* This profile applies to the Patient Identity Cross-reference Manager actor in 
* [Add or Revise Patient](ITI-104.md#2310441-add-or-revise-patient)
* [Resolve Duplicate Patient](ITI-104.md#2310442-resolve-duplicate-patient)
 
* Patient Identity Cross-reference Manager knows the requested conditional create is a create, so records this as an create.
* Build off of the IHE BasicAudit PatientCreate event 
* A generic FHIR server might not distinguish an ITI-104
 
* add the ITI-104 as a subtype
* server is Patient Identifier Source
* server is Patient Identifier Cross-reference Manager
* entity slices for patient are required 
* filled with the identifier parameter value from the PUT
* will be an identifier, not a reference
 
* entity slice for the data 
* filled with the body of the PUT
* will be the Patient resource presented
 
* entity slice for transaction is available
 |
| [Audit Event for Patient Identity Feed FHIR by the Manager that Updates a Patient](StructureDefinition-IHE.PIXm.Feed.Update.Audit.Manager.md) | Defines constraints on the AuditEvent Resource to record when a Patient Identity Feed FHIR Transaction happens, as recorded by the Patient Identifier Cross-reference Manager.* This profile applies to the Patient Identity Cross-reference Manager actor in 
* [Add or Revise Patient](ITI-104.md#2310441-add-or-revise-patient)
* [Resolve Duplicate Patient](ITI-104.md#2310442-resolve-duplicate-patient)
 
* Patient Identity Cross-reference Manager knows the requested conditional create is an update, so records this as an update.
* Build off of the IHE BasicAudit PatientUpdate event 
* A generic FHIR server might not distinguish an ITI-104
 
* add the ITI-104 as a subtype
* server is Patient Identifier Source
* server is Patient Identifier Cross-reference Manager
* entity slices for patient are required 
* filled with the identifier parameter value from the PUT
* will be an identifier, not a reference
 
* entity slice for the data 
* filled with the body of the PUT
* will be the Patient resource presented
 
* entity slice for transaction is available
 |
| [Audit Event for Patient Identity Feed by the Manager that Deletes a Patient](StructureDefinition-IHE.PIXm.Feed.Delete.Audit.Manager.md) | Defines constraints on the AuditEvent Resource to record when a Patient Identity Feed Transaction happens, as recorded by the Patient Identity Cross-reference Manager.* This profile applies to the Patient Identity Cross-reference Manager actor in 
* [Remove Patient](ITI-104.md#2310443-remove-patient)
 
* Build off of the IHE BasicAudit PatientDelete event 
* this will result in two .entity elements with the same logical information
 
* add the ITI-104 as a subtype
* client is Patient Identifier Source
* server is Patient Identifier Cross-reference Manager
* entity slices for patient are required 
* filled with the identifier parameter value from the DELETE
* will be an identifier, not a reference
 
* entity slice for the data 
* filled with the path of the DELETE
* will be the Patient resource id presented
 
* entity slice for transaction is available
 |
| [Audit Event for Patient Identity Feed by the Source that Creates or Updates a Patient](StructureDefinition-IHE.PIXm.Feed.Update.Audit.Source.md) | Defines constraints on the AuditEvent Resource to record when a Patient Identity Feed Transaction happens, as recorded by the Patient Identity Source.* This profile applies to the Patient Identity Source actor in 
* [Add or Revise Patient](ITI-104.md#2310441-add-or-revise-patient)
* [Resolve Duplicate Patient](ITI-104.md#2310442-resolve-duplicate-patient)
 
* Patient Identity Source records an Update as using a conditional create, so as to support update if exists else create.
* Build off of the IHE BasicAudit PatientUpdate event
* add the ITI-104 as a subtype
* client is Patient Identifier Source
* server is Patient Identifier Cross-reference Manager
* entity slices for patient are required 
* filled with the identifier parameter value from the PUT
* will be an identifier, not a reference
 
* entity slice for the data 
* filled with the body of the PUT
* will be the Patient resource presented
 
* entity slice for transaction is available
 |
| [Audit Event for Patient Identity Feed by the Source that Deletes a Patient](StructureDefinition-IHE.PIXm.Feed.Delete.Audit.Source.md) | Defines constraints on the AuditEvent Resource to record when a Patient Identity Feed Transaction happens, as recorded by the Patient Identity Source.* This profile applies to the Patient Identity Source actor in 
* [Remove Patient](ITI-104.md#2310443-remove-patient)
 
* Build off of the IHE BasicAudit PatientDelete event 
* this will result in two .entity elements with the same logical information
 
* add the ITI-104 as a subtype
* client is Patient Identifier Source
* server is Patient Identifier Cross-reference Manager
* entity slices for patient are required 
* filled with the identifier parameter value from the DELETE
* will be an identifier, not a reference
 
* entity slice for the data 
* filled with the path of the DELETE
* will be the Patient resource id presented
 
* entity slice for transaction is available
 |
| [IHE PIXm Query Parameters In](StructureDefinition-IHE.PIXm.Query.Parameters.In.md) | The StructureDefinition defines the Input Parameters for the $ihe-pix operation* Input: sourceIdentifier, targetSystem
 |
| [IHE PIXm Query Parameters Out](StructureDefinition-IHE.PIXm.Query.Parameters.Out.md) | The StructureDefinition defines the Output Parameters for the $ihe-pix operation* Output: targetId, targetIdentifier
 |
| [PIXm Patient Profile example for additional Manager constraints](StructureDefinition-IHE.PIXm.Patient.BirthDateRequired.md) | Example Profile StructureDefinition for describing additional Patient resource constraints (requiring birthDate) by the Patient Identifier Cross-reference Manager for performing its cross-referencing function.* requiring name and birthDate 
* mustSupport for identifier, birthDate, name, telecom, gender birthDate, address and managingOrganization
 |
| [PIXm Patient constraints for Feed](StructureDefinition-IHE.PIXm.Patient.md) | Profile for describing elements which have to be accepted by the Patient Identifier Cross-reference Manager for performing its cross-referencing function.* requiring name 
* mustSupport for identifier, name, telecom, gender birthDate, address and managingOrganization
 |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Audit Example of ITI-104 Create at Manager](AuditEvent-ex-auditPixmFeed-create-manager.md) | Audit Event for Patient Identity Feed FHIR Transaction ITI-104 by the Patient Identifier Cross-reference Manager. The Feed resulted in a Create of a Patient given the feed content, as the given parameter did not previously exist. |
| [Audit Example of ITI-104 Delete at Manager](AuditEvent-ex-auditPixmFeed-delete-manager.md) | Audit Event for Patient Identity Feed FHIR Transaction ITI-104 Delete by the Patient Identifier Cross-reference Manager |
| [Audit Example of ITI-104 Delete at Manager](AuditEvent-ex-auditPixmFeedDelete-manager.md) | Audit Event for Patient Identity Feed FHIR Transaction ITI-104 Delete by the Patient Identifier Cross-reference Manager. |
| [Audit Example of ITI-104 Delete at Source](AuditEvent-ex-auditPixmFeed-delete-source.md) | Audit Event for Patient Identity Feed FHIR Transaction ITI-104 Delete by the Patient Identity Source |
| [Audit Example of ITI-104 Delete at Source](AuditEvent-ex-auditPixmFeedDelete-source.md) | Audit Event for Patient Identity Feed FHIR Transaction ITI-104 Delete by the Patient Identity Source |
| [Audit Example of ITI-104 Update at Manager](AuditEvent-ex-auditPixmFeed-update-manager.md) | Audit Event for Patient Identity Feed FHIR Transaction ITI-104 Update by the Patient Identifier Cross-reference Manager |
| [Audit Example of ITI-104 Update at Source](AuditEvent-ex-auditPixmFeed-update-source.md) | Audit Event for Patient Identity Feed FHIR Transaction ITI-104 Update by the Patient Identity Source |
| [Audit Example of ITI-83 at Consumer](AuditEvent-ex-auditPixmQuery-consumer.md) | Audit Event for PIXm Query Transaction ITI-83 by the Patient Identifier Cross-reference Consumer |
| [Audit Example of ITI-83 at Manager](AuditEvent-ex-auditPixmQuery-manager.md) | Audit Event for PIXm Query Transaction ITI-83 by the Patient Identifier Cross-reference Manager |
| [Dummy Device example](Device-ex-device.md) | Dummy Device example for completeness sake. No actual use of this resource other than an example target |
| [Dummy Patient example](Patient-ex-patient.md) | Dummy patient example for completeness sake. No actual use of this resource other than an example target |
| [Example OperationOutcome - sourceIdentifier Patient Identifier not found](OperationOutcome-pixm-response-error-not-found.md) | Example OperationOutcome resulting from a failure find a Patient |
| [PIXm Query Response for source identifier](Parameters-pixm-response-mohralice-red-all.md) | PIXm Query Response for Patient with source identifier in RED domain for Mohr Alice |
| [PIXm Query Response for source identifier and target system specified](Parameters-pixm-response-mohralice-red-to-blue.md) | PIXm Query Response for Patient with source identifier in RED domain and query for BLUE domain for Mohr Alice |
| [PIXm Query with source identifier](Parameters-pixm-request-mohralice-red-all.md) | PIXm Query for Patient with source identifier in RED domain for Mohr Alice |
| [PIXm Query with source identifier and target system](Parameters-pixm-request-mohralice-red-to-blue.md) | PIXm Query for Patient with source identifier in RED domain and query for BLUE domain for Mohr Alice |
| [Patient Alice Mohr](Patient-Patient-MohrAlice.md) | Patient Mohr Alice with all domain identifiers, note: this is just a consolidated identifier example will all identifiers from all the domains equivalent to a golden patient, however a golden patient is not the scope of PIXm, see the IHE PMIR profile |
| [Patient Alice Mohr (Blue)](Patient-Patient-MohrAlice-Blue.md) | Patient Mohr Alice in Blue Domain |
| [Patient Alice Mohr (Green)](Patient-Patient-MohrAlice-Green.md) | Patient Mohr Alice in Green Domain |
| [Patient Alice Mohr (Red)](Patient-Patient-MohrAlice-Red.md) | Patient Mohr Alice in Red Domain |
| [Patient Alissa Mohr (Red)](Patient-Patient-MohrAlissa-Red.md) | Patient Mohr Alisa in Red Domain |
| [Patient Maiden Alice (Red)](Patient-Patient-MaidenAlice-Red.md) | Patient Maiden Alice in Red Domain |
| [Patient Mohr Maiden Resolved by Mohr Alice (Red)](Patient-Patient-MohrMaidenResolvedByMohrMalice-Red.md) | Patient Mohr Maiden (Duplicate) Resolved by Mohr Alice Red Domain |

