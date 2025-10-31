# Artifacts Summary - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [Document Consumer (client)](CapabilityStatement-IHE.MHD.DocumentConsumer.md) | IHE ITI Mobile access to Health Documents (MHD) - Document Consumer (client). |
| [Document Recipient](CapabilityStatement-IHE.MHD.DocumentRecipient.md) | IHE ITI Mobile access to Health Documents (MHD) - Document Recipient - with no declared Options or all declared Options. |
| [Document Recipient implementing Comprehensive Metadata Option](CapabilityStatement-IHE.MHD.DocumentRecipient.Comprehensive.md) | IHE ITI Mobile access to Health Documents (MHD) - Document Recipient - with Comprehensive declared Option. |
| [Document Recipient implementing Generate Metadata Option](CapabilityStatement-IHE.MHD.DocumentRecipient.Generate.md) | IHE ITI Mobile access to Health Documents (MHD) - Document Recipient - with Generate Metadata declared Option. |
| [Document Recipient implementing ITI-65 FHIR Documents Publish Option](CapabilityStatement-IHE.MHD.DocumentRecipient.Fdoc.md) | IHE ITI Mobile access to Health Documents (MHD) - Document Recipient - with ITI-65 FHIR Documents Publish declared Option. |
| [Document Recipient implementing Simplified Publish Option](CapabilityStatement-IHE.MHD.DocumentRecipient.Simplified.md) | IHE ITI Mobile access to Health Documents (MHD) - Document Recipient - with Simplified Publish declared Option. |
| [Document Recipient implementing UnContained References Option](CapabilityStatement-IHE.MHD.DocumentRecipient.UnContained.md) | IHE ITI Mobile access to Health Documents (MHD) - Document Recipient - with UnContained declared Option. |
| [Document Responder (server)](CapabilityStatement-IHE.MHD.DocumentResponder.md) | IHE ITI Mobile access to Health Documents (MHD) - Document Responder (server). |
| [Document Source (publisher)](CapabilityStatement-IHE.MHD.DocumentSource.md) | IHE ITI Mobile access to Health Documents (MHD) - Document Source (publisher) - with no declared Options or all declared Options. |
| [Document Source (publisher) implementing Comprehensive Metadata Option](CapabilityStatement-IHE.MHD.DocumentSource.Comprehensive.md) | IHE ITI Mobile access to Health Documents (MHD) - Document Source (publisher) - with Comprehensive Metadata Option. |
| [Document Source (publisher) implementing ITI-65 FHIR Documents Publish Option](CapabilityStatement-IHE.MHD.DocumentSource.Fdoc.md) | IHE ITI Mobile access to Health Documents (MHD) - Document Source (publisher) - with ITI-65 FHIR Documents Publish Option. |
| [Document Source (publisher) implementing UnContained References Option](CapabilityStatement-IHE.MHD.DocumentSource.UnContained.md) | IHE ITI Mobile access to Health Documents (MHD) - Document Source (publisher) - with UnContained Option. |
| [Document Source (publisher) implementing the Generate Metadata Option](CapabilityStatement-IHE.MHD.DocumentSource.Generate.md) | IHE ITI Mobile access to Health Documents (MHD) - Document Source (publisher) - with the Generate Metadata declared Options and may also declare other Options. |
| [Document Source (publisher) implementing the Simplified Publish Option](CapabilityStatement-IHE.MHD.DocumentSource.Simplified.md) | IHE ITI Mobile access to Health Documents (MHD) - Document Source (publisher) - with the Simplified Publication declared Options and may also declare other Options. |

### Behavior: Operation Definitions 

These are custom operations that can be supported by and/or invoked by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Generate a DocumentReference from a document](OperationDefinition-generate-metadata.md) | The $generate-metadata Operation definition.This operation is needed as the $generate in FHIR R4 is not properly defined, and thus has incorrect parameters. The MHD $generate-metadata should be replaced when MHD is upgraded to FHIR R5/R6 This MHD $generate-metadata is modeled after the expected changes in FHIR R5/R6, and follows the example given in FHIR R4: |

### Behavior: Search Parameters 

These define the properties by which a RESTful server can be searched. They can also be used for sorting and including related resources.

| | |
| :--- | :--- |
| [search on the IHE defined extension for SourceId](SearchParameter-List-SourceId.md) | This SearchParameter enables finding Lists by the SourceId of a submissionSet. |
| [search on the IHE defined extension for designationType](SearchParameter-List-DesignationType.md) | This SearchParameter enables finding Lists by the designationType code in a submissionSet or folder. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Audit Event for Find Document Lists Transaction at Document Responder](StructureDefinition-IHE.MHD.FindDocumentLists.Audit.Responder.md) | Defines constraints on the AuditEvent Resource to record when a Find Document Lists Transaction happens, as recorded by the Document Responder.* Build off of the IHE BasicAudit PatientQuery event
* add the ITI-67 as a subtype
* client is Document Consumer
* server is Document Responder
* entity slices for query, and patient are required
* entity slice for transaction is available
 |
| [Audit Event for Find Document Lists Transaction by the Document Consumer](StructureDefinition-IHE.MHD.FindDocumentLists.Audit.Consumer.md) | Defines constraints on the AuditEvent Resource to record when a Find Document Lists Transaction happens, as recorded by the Document Consumer.* Build off of the IHE BasicAudit PatientQuery event
* add the ITI-67 as a subtype
* client is Document Consumer
* server is Document Responder
* entity slices for query, and patient are required
* entity slice for transaction is available
 |
| [Audit Event for Find Document References Transaction at Document Consumer](StructureDefinition-IHE.MHD.FindDocumentReferences.Audit.Consumer.md) | Defines constraints on the AuditEvent Resource to record when a Find Document References Transaction happens, as recorded by the Document Consumer.* Build off of the IHE BasicAudit PatientQuery event
* add the ITI-67 as a subtype
* client is Document Consumer
* server is Document Responder
* entity slices for query, and patient are required
* entity slice for transaction is available
 |
| [Audit Event for Find Document References Transaction at Document Responder](StructureDefinition-IHE.MHD.FindDocumentReferences.Audit.Responder.md) | Defines constraints on the AuditEvent Resource to record when a Find Document References Transaction happens, as recorded by the Document Responder.* Build off of the IHE BasicAudit PatientQuery event
* add the ITI-67 as a subtype
* client is Document Consumer
* server is Document Responder
* entity slices for query, and patient are required
* entity slice for transaction is available
 |
| [Audit Event for Generate Metadata ITI-106 Transaction at Recipient](StructureDefinition-IHE.MHD.GenerateMetadata.Audit.Recipient.md) | Defines constraints on the AuditEvent Resource to record when a Generate Metadata ITI-106 Transaction happens at the Recipient.* Build off of the IHE Basic Audit Patient Create event
* add the ITI-106 as a subtype
* client is the Document Source
* Server is the Document Recipient
* may have user, app, organization agent(s)
* shall have a patient entity
* shall have a documentReference identity entity
 |
| [Audit Event for Generate Metadata ITI-106 Transaction at Source](StructureDefinition-IHE.MHD.GenerateMetadata.Audit.Source.md) | Defines constraints on the AuditEvent Resource to record when a Generate Metadata ITI-106 Transaction happens at the Soure.* Build off of the IHE Basic Audit Create event
* add the ITI-106 as a subtype
* client is the Document Source
* Server is the Document Recipient
* may have user, app, organization agent(s)
* shall have a document uri
* note the Document Source may add a patient if it knows it.
 |
| [Audit Event for Provide Bundle Transaction at Recipient](StructureDefinition-IHE.MHD.ProvideBundle.Audit.Recipient.md) | Defines constraints on the AuditEvent Resource to record when a Provide Bundle Transaction happens at the Recipient.* Import event 
* shall have source of itself 
* shall have a document source agent 
* shall have a document recipient agent 
* may have user, app, organization agent(s) 
* shall have a patient entity 
* shall have a submission set identity entity
 |
| [Audit Event for Provide Bundle Transaction at Source](StructureDefinition-IHE.MHD.ProvideBundle.Audit.Source.md) | Defines constraints on the AuditEvent Resource to record when a Provide Bundle Transaction happens at the Source.* Export event 
* shall have source of itself 
* shall have a document source agent 
* shall have a document recipient agent 
* may have user, app, organization agent(s) 
* shall have a patient entity 
* shall have a submission set identity entity
 |
| [Audit Event for Retrieve Document Transaction at Document Consumer](StructureDefinition-IHE.MHD.RetrieveDocument.Audit.Consumer.md) | Defines constraints on the Document Consumer AuditEvent Resource to record when a Retrieve Document Transaction happens, as recorded by the Document Consumer.* Build off of the IHE BasicAudit PatientRead event
* add the ITI-68 as a subtype
* client is Document Consumer
* server is Document Responder
* entity slices for data, and patient are required
* entity slice for transaction is available
 |
| [Audit Event for Retrieve Document Transaction at the Document Responder](StructureDefinition-IHE.MHD.RetrieveDocument.Audit.Responder.md) | Defines constraints on the Document Responder AuditEvent Resource to record when a Retrieve Document Transaction happens, as recorded by the Document Responder.* Build off of the IHE BasicAudit PatientRead event
* add the ITI-68 as a subtype
* client is Document Consumer
* server is Document Responder
* entity slices for data, and patient are required
* entity slice for transaction is available
 |
| [Audit Event for Simplified Publish ITI-105 Transaction at Recipient](StructureDefinition-IHE.MHD.SimplifiedPublish.Audit.Recipient.md) | Defines constraints on the AuditEvent Resource to record when a Simplified Publish ITI-105 Transaction happens at the Recipient.* Build off of the IHE Basic Audit Patient Create event
* add the ITI-105 as a subtype
* client is the Document Source
* Server is the Document Recipient
* may have user, app, organization agent(s)
* shall have a patient entity
* shall have a documentReference identity entity
 |
| [Audit Event for Simplified Publish ITI-105 Transaction at Source](StructureDefinition-IHE.MHD.SimplifiedPublish.Audit.Source.md) | Defines constraints on the AuditEvent Resource to record when a Simplified Publish ITI-105 Transaction happens at the Soure.* Build off of the IHE Basic Audit Patient Create event
* add the ITI-105 as a subtype
* client is the Document Source
* Server is the Document Recipient
* may have user, app, organization agent(s)
* shall have a patient entity
* shall have a documentReference identity entity
 |
| [Basic AuditEvent for a successful Create not related to a Patient](StructureDefinition-IHE.BasicAudit.MHD5.Create.md) | A basic AuditEvent profile for when a RESTful Create action happens successfully.* Given a Resource Create is requested
* And that resource does not have a Patient subject or is otherwise associated with a Patient 
* when the resource is Patient specific then [PatientCreate](StructureDefinition-IHE.BasicAudit.MHD5.PatientCreate.md) is used
 
* And the request is authorized 
* Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)
 
* When successful 
* Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome
 
* Then the AuditEvent recorded will conform
 |
| [Basic AuditEvent for a successful Create with known Patient subject](StructureDefinition-IHE.BasicAudit.MHD5.PatientCreate.md) | A basic AuditEvent profile for when a RESTful Create action happens successfully, and where there is an identifiable Patient subject associated with the create of the Resource.* Given a Resource Create is requested
* And that resource has a Patient subject or is otherwise associated with a Patient
* And the request is authorized 
* Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)
 
* When successful 
* Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome
 
* Then the AuditEvent recorded will conform
 |
| [Basic AuditEvent for a successful Query](StructureDefinition-IHE.BasicAudit.MHD5.Query.md) | A basic AuditEvent profile for when a RESTful Query / Search action happens successfully.* Given a RESTful Query is requested
* And the request does not have a Patient subject indicated 
* The requestor logging the event would potentially not know they have requested Patient specific data
* The data objects may not be patient specific kind of objects
* when the request is Patient specific then [PatientQuery](StructureDefinition-IHE.BasicAudit.MHD5.PatientQuery.md) is used
 
* And the request is authorized 
* Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)
 
* When successful 
* Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome
* Note success may result in zero or more results. The number of results and the content of the results are not recorded.
 
* And the results are not Patient specific 
* when the results are Patient specific then [PatientQuery](StructureDefinition-IHE.BasicAudit.MHD5.PatientQuery.md) are used
 
* Then the AuditEvent recorded will conform 
* The raw search request is base64 encoded and placed in the .entity[query].query element. The base64 encoding of the raw search request enables preserving exactly what was requested, including possibly malicious patterns. This enables detection of malicious or malformed requests.
* The cleaned search may be recorded (not base64) in the .entity[query].description. The cleaned search request would have removed parameters that were not understood/supported. The cleaned search request in the .description element enables more efficient processing.
 
Note: the pattern defined in DICOM and IHE have the client is identified as the Source Role ID, and the server is identified as the Destination Role ID. This represents the query parameters are flowing from the client to the server. This may not be so obvious, as the data actually flows the opposite direction. This pattern is established and thus followed here. |
| [Basic AuditEvent for a successful Query with Patient](StructureDefinition-IHE.BasicAudit.MHD5.PatientQuery.md) | A basic AuditEvent profile for when a RESTful Query action happens successfully, and where there is an identifiable Patient subject associated with the read Resource(s).* Given a RESTful Query is requested
* And the request is for a Patient subject indicated 
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
| [Basic AuditEvent for a successful Read](StructureDefinition-IHE.BasicAudit.MHD5.Read.md) | A basic AuditEvent profile for when a RESTful Read action happens successfully.* Given a Resource Read is requested
* And that resource does not have a Patient subject or is otherwise associated with a Patient 
* when the resource is Patient specific then [PatientRead](StructureDefinition-IHE.BasicAudit.MHD5.PatientRead.md) is used
 
* And the request is authorized 
* Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)
 
* When successful 
* Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome
 
* Then the AuditEvent recorded will conform
 |
| [Basic AuditEvent for a successful Read with a Patient](StructureDefinition-IHE.BasicAudit.MHD5.PatientRead.md) | A basic AuditEvent profile for when a RESTful Read action happens successfully, and where there is an identifiable Patient subject associated with the read Resource.* Given a Resource Read is requested
* And that resource has a Patient subject or is otherwise associated with a Patient
* And the request is authorized 
* Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)
 
* When successful 
* Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome
 
* Then the AuditEvent recorded will conform
 |
| [IHE MHD GenerateMetadata Parameters In](StructureDefinition-IHE.MHD.GenerateMetadata.Parameters.In.md) | The Input Parameters for the $generate-metadata operation* Input: binary, bundle
 |
| [MHD Comprehensive Provide Document Bundle](StructureDefinition-IHE.MHD.Comprehensive.ProvideBundle.md) | A profile on the Bundle transaction for ITI-65 Provide Document resources with Comprehensive Metadata for MHD.* [Comprehensive Metadata](StructureDefinition-IHE.MHD.Comprehensive.ProvideBundle.md): `https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.ProvideBundle` 
* this is otherwise known as XDS-on-FHIR 
* shall be a Transaction Bundle 
* all resources shall be compliant with comprehensive constraints, they may be marked comprehensive 
* shall create a [SubmissionSet type List](StructureDefinition-IHE.MHD.Minimal.SubmissionSet.md) that is either minimal, comprehensive, or unContained 
* may create one or more [DocumentReference](StructureDefinition-IHE.MHD.Minimal.DocumentReference.md) that is either minimal, comprehensive, or unContained 
* with a document as a [Binary](http://hl7.org/fhir/R5/binary.html) 
* or, when implementing the **ITI-65 FHIR Document Publish** option, a [FHIR Document Bundle](http://hl7.org/fhir/R5/bundle.html) 
 
* may create/update one or more [Folder type List](StructureDefinition-IHE.MHD.Minimal.Folder.md) that is either minimal, comprehensive, or unContained 
* may create/update/read one [Patient](http://hl7.org/fhir/R5/patient.html)
 
 |
| [MHD DocumentReference Comprehensive](StructureDefinition-IHE.MHD.Comprehensive.DocumentReference.md) | A profile on the DocumentReference resource for MHD Comprehensive Option with Contained (not UnContained), compatible with XDS-on-FHIR and XCA use.* MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, 
* the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and 
* the use defined here is FHIR DocumentReference implementation of the 
* ebRIM implementation at [3:4.2.3.2 Document Entry](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.2). 
* with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)
 |
| [MHD DocumentReference Comprehensive UnContained References Option](StructureDefinition-IHE.MHD.UnContained.Comprehensive.DocumentReference.md) | A profile on the DocumentReference resource for MHD with Comprehensive Metadata Option but without a requirement for contained author, authenticator, or sourcePatientInfo.* MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, 
* the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and 
* the use defined here is FHIR DocumentReference implementation of the 
* ebRIM implementation at [3:4.2.3.2 Document Entry](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.2). 
* with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)
 |
| [MHD DocumentReference Minimal](StructureDefinition-IHE.MHD.Minimal.DocumentReference.md) | A profile on the DocumentReference resource for MHD with minimal metadata constraints.* MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, 
* the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and 
* the use defined here is FHIR DocumentReference implementation of the 
* ebRIM implementation at [3:4.2.3.2 Document Entry](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.2). 
* with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)
 |
| [MHD DocumentReference Patch Parameters](StructureDefinition-IHE.MHD.Patch.Parameters.md) | A profile on the Parameters resource to update the superseded DocumentReference status. |
| [MHD DocumentReference for Simplified Publish](StructureDefinition-IHE.MHD.SimplifiedPublish.DocumentReference.md) | A profile on the DocumentReference resource for MHD Simplified Publish constraints.* MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model,
* the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and
* the use defined here is FHIR DocumentReference implementation of the
* ebRIM implementation at [3:4.2.3.2 Document Entry](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.2).
* with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)
Simplified Publish* Similar to Minimal Metadata constraints 
* must be status current
* must have a patient indicated
 
* uses attachment.data to carry the document, rather than attachment.url 
* so that the Simplified Publish is a simple POST of the DocumentReference
* Document Recipient is expected to extract the .data, use .url
 
 |
| [MHD Find Document Lists Response Message](StructureDefinition-IHE.MHD.FindDocumentListsResponseMessage.md) | A profile on the Find Document Lists Response message for ITI-66 |
| [MHD Find Document References Comprehensive Response message](StructureDefinition-IHE.MHD.FindDocumentReferencesComprehensiveResponseMessage.md) | A profile on the Find Document References Comprehensive Response message for ITI-67 |
| [MHD Find Document References Response message](StructureDefinition-IHE.MHD.FindDocumentReferencesResponseMessage.md) | A profile on the Find Document References Response message for ITI-67 |
| [MHD Folder Comprehensive](StructureDefinition-IHE.MHD.Comprehensive.Folder.md) | A profile on the List resource for MHD Comprehensive Metadata Folder. Note UnContained has no impact on Folder.* MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, 
* the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and 
* the use defined here is FHIR List for use as a Folder implementation of the 
* ebRIM implementation at [3:4.2.3.4 Folder Attributes](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.4). 
* with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)
 |
| [MHD Folder Minimal](StructureDefinition-IHE.MHD.Minimal.Folder.md) | A profile on the List resource for MHD use as a Folder with minimal metadata constraints.* MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, 
* the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and 
* the use defined here is FHIR List for use as a Folder implementation of the 
* ebRIM implementation at [3:4.2.3.4 Folder Attributes](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.4). 
* with use-cases and constraints found in [3:4.3 Additional Document Sharing Requirements](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3)
 |
| [MHD Minimal Provide Document Bundle](StructureDefinition-IHE.MHD.Minimal.ProvideBundle.md) | A profile on the Bundle transaction for ITI-65 Provide Document resources with Minimal metadata for MHD.* [Minimal Metadata](StructureDefinition-IHE.MHD.Minimal.ProvideBundle.md): `https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.ProvideBundle` 
* shall be a Transaction Bundle 
* all resources shall be compliant with minimal constraints, they may be marked minimal, comprehensive, or unContained 
* shall create a [SubmissionSet type List](StructureDefinition-IHE.MHD.Minimal.SubmissionSet.md) that is either minimal, comprehensive, or unContained 
* may create one or more [DocumentReference](StructureDefinition-IHE.MHD.Minimal.DocumentReference.md) that is either minimal, comprehensive, or unContained 
* with a document as a [Binary](http://hl7.org/fhir/R5/binary.html) 
* or, when implementing the **ITI-65 FHIR Document Publish** option, a [FHIR Document Bundle](http://hl7.org/fhir/R5/bundle.html) 
 
* when DocumentReference replace is used the UpdateDocumentRefs slice is used to indicate the superseded DocumentReference 
* may create/update one or more [Folder type List](StructureDefinition-IHE.MHD.Minimal.Folder.md) that is either minimal, comprehensive, or unContained 
* may create/update/read one [Patient](http://hl7.org/fhir/R5/patient.html)
 
 |
| [MHD Provide Document Bundle Response](StructureDefinition-IHE.MHD.ProvideDocumentBundleResponse.md) | A profile on the Bundle transaction-response for ITI-65 Provide Document Bundle response.* shall be a transaction response
* shall have at least 1 entry for each entry in the request, in the same order as received in the request 
* entry response location must be indicated
 
 |
| [MHD SubmissionSet Comprehensive](StructureDefinition-IHE.MHD.Comprehensive.SubmissionSet.md) | A profile on the List resource for MHD Comprehensive SubmissionSet.* MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, 
* the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and 
* the use defined here is FHIR List for use as a SubmissionSet implementation of the 
* ebRIM implementation at [3:4.2.3.3 SubmissionSet Attributes](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.3). 
* with use-cases and constraints found in [3:4.3.1 Submission Metadata Attribute Optionality](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3.1) for 
* MHD Comprehensive Option Document Source 
* aka the XDS Document Source requirements 
* aka the XDR Document Source requirements
 
 |
| [MHD SubmissionSet Comprehensive UnContained](StructureDefinition-IHE.MHD.UnContained.Comprehensive.SubmissionSet.md) | A profile on the List resource for MHD UnContained Comprehensive SubmissionSet.* MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, 
* the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and 
* the use defined here is FHIR List for use as a SubmissionSet implementation of the 
* ebRIM implementation at [3:4.2.3.3 SubmissionSet Attributes](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.3). 
* with use-cases and constraints found in [3:4.3.1 Submission Metadata Attribute Optionality](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3.1) for 
* MHD Document Source that has implemented both Comprehensive Metadata Option and UnContained References Option
 
 |
| [MHD SubmissionSet Minimal](StructureDefinition-IHE.MHD.Minimal.SubmissionSet.md) | A profile on the List resource for MHD SubmissionSet.* MHD is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, 
* the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and 
* the use defined here is FHIR List for use as a SubmissionSet implementation of the 
* ebRIM implementation at [3:4.2.3.3 SubmissionSet Attributes](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.3). 
* with use-cases and constraints found in [3:4.3.1 Submission Metadata Attribute Optionality](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3.1) for 
* Document Source implementing not implementing Comprehensive Metadata Option 
* Document Source implementing UnContained Option but not Comprehensive Option 
* equivalent to XDR Document Source implementing Metadata-Limited Option requirements 
* aka the default MHD Document Source
 
 |
| [MHD UnContained Comprehensive Provide Document Bundle](StructureDefinition-IHE.MHD.UnContained.Comprehensive.ProvideBundle.md) | A profile on the Bundle transaction for ITI-65 Provide Document resources with UnContained allowed but requiring Comprehensive Metadata for MHD.* [UnContained Comprehensive Metadata](StructureDefinition-IHE.MHD.UnContained.Comprehensive.ProvideBundle.md): `https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.ProvideBundle` 
* note that Minimal Metadata does not require containment, so UnContained Minimal is the same as Minimal Metadata 
* note that UnContained only applies to DocumentReference and SubmissionSet type Lists; so the following apply 
* shall be a Transaction Bundle 
* all resources shall be compliant with comprehensive unContained constraints, they may be marked comprehensive unContained 
* shall create a [SubmissionSet type List](StructureDefinition-IHE.MHD.Minimal.SubmissionSet.md) that is either minimal, comprehensive, or unContained 
* may create one or more [DocumentReference](StructureDefinition-IHE.MHD.Minimal.DocumentReference.md) that is either minimal, comprehensive, or unContained 
* with a document as a [Binary](http://hl7.org/fhir/R5/binary.html) 
* or, when implementing the **ITI-65 FHIR Document Publish** option, a [FHIR Document Bundle](http://hl7.org/fhir/R5/bundle.html) 
 
* may create/update one or more [Folder type List](StructureDefinition-IHE.MHD.Minimal.Folder.md) that is either minimal, comprehensive, or unContained 
* may create/update/read one [Patient](http://hl7.org/fhir/R5/patient.html)
 
 |
| [MHD common List with designationType](StructureDefinition-IHE.MHD.List.md) | A profile on the List resource for MHD. Used with both Folder and SubmissionSet.* MHD adds a codeable Concept to List for use with Folder and SubmissionSet
 |

### Structures: Data Type Profiles 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [entryUUID Identifier](StructureDefinition-IHE.MHD.EntryUUID.Identifier.md) | entryUUID Identifier holding a UUID |
| [uniqueId Identifier](StructureDefinition-IHE.MHD.UniqueIdIdentifier.md) | uniqueId Identifier* see [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.9.1-identifier-type)
 |
| [uniqueId Identifier for SubmissionSet](StructureDefinition-IHE.MHD.SubmissionSetUniqueIdIdentifier.md) | uniqueId Identifier holding a OID |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Author organization of the SubmissionSet](StructureDefinition-ihe-authorOrg.md) | When the author of the SubmissionSet is an Organization, this extension shall be used. |
| [Clinical code of the List](StructureDefinition-ihe-designationType.md) | Expresses contentType of submissionSet or the codeList of a Folder. Usually expressed in LOINC or SNOMED. |
| [Holds values from DocumentEntry.referenceIdList that are not appropriate for .context or .basedOn](StructureDefinition-ihe-referenceId.md) | This extension holds values from DocumentEntry.referenceIdList that are not appropriate for .context or .basedOn. This extension can hold any identifier that is related to the DocumentReference. This extension is added for FHIR R5 as DocumentReference does not have a .context.related element, and this extension will not be needed in R6 as there is a DocumentReference.related element there. |
| [Intended recipient of the SubmissionSet](StructureDefinition-ihe-intendedRecipient.md) | holds the identity of the organization or person the SubmissionSet is intended. For XDR and eMail (e.g. Direct) this tends to be a Practitioner or Patient with a telecom holding an email, but this is not strictly required. |
| [Publisher organization identity of the SubmissionSet](StructureDefinition-ihe-sourceId.md) | The globally unique, immutable, identifier of the entity that contributed the SubmissionSet. When a broker is involved in sending SubmissionSets from a collection of client systems, it shall use a different sourceId for submissions from each separate system to allow for tracking. The format of the identifier is an OID. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Entity Types used by IHE BasicAudit](ValueSet-BasicAuditEntityTypesVS.md) | For use with AuditEvent.entity.type. This includes codes defined in the BasicAudit. |
| [MHD DocumentReference status codes](ValueSet-DocumentReferenceStats.md) | ValueSet that does not include entered-in-error as that does not map |
| [MHD Folder List Types ValueSet](ValueSet-MHDprovideFolderActions.md) | A ValueSet of the allowed actions in a ITI-65 Provide Document Bundle for the Folder List type Resources. Where Folders are allowed to be Updated in addition to Created. |
| [MHD List Types ValueSet](ValueSet-MHDlistTypesVS.md) | ValueSet of the MHD List Types allowed |
| [MHD Patient Types ValueSet](ValueSet-MHDprovidePatientActions.md) | A ValueSet of the allowed actions in a ITI-65 Provide Document Bundle for the Patient type Resource. Where Patient would typically be indicated as a GET (read), but might be created or updated depending on policy. |
| [RESTful objects role in the event](ValueSet-RestObjectRoles.md) | The role that the given Object played in the Audit Event recorded |
| [all Reads](ValueSet-AllReadVS.md) | ValueSet of the restful-interaction reads |
| [all Searches](ValueSet-AllSearchVS.md) | ValueSet of the restful-interaction searches |
| [participant source types for RESTful create](ValueSet-DataSources.md) | create agent participant types for user operators that are in REST |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Entity Types that are defined in IHE BasicAudit](CodeSystem-BasicAuditEntityType.md) | These are new codes used in BasicAudit IG, where AuditEvent.entity is used to hold a specific kind of data that is not covered by the existing valueSet. |
| [MHD List Types](CodeSystem-MHDlistTypes.md) | To use the List resource for two different use-cases we define a code-system with the types of List needed in MHD |

### Terminology: Concept Maps 

These define transformations to convert between codes by systems conforming with this implementation guide.

| | |
| :--- | :--- |
| [AssociationType vs RelatesTo](ConceptMap-AssociationTypeVsRelatesTo.md) | map between XDS Association Types and MHD FHIR DocumentReference relatesTo code. |
| [FHIR status vs ebRIM Status Type Code](ConceptMap-FhirStatusVsStatusCode.md) | map between XDS ebRIM Status Type Codes and MHD FHIR DocumentReference.status code. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Audit Example of ITI-105 at recipient](AuditEvent-ex-auditSimplifiedPublish-recipient.md) | Audit Example for a Simplified Publish Transaction as recorded at the recipient |
| [Audit Example of ITI-105 at source](AuditEvent-ex-auditSimplifiedPublish-source.md) | Audit Example for a Simplified Publish Transaction from source perspective |
| [Audit Example of ITI-106 at recipient](AuditEvent-ex-auditGenerateMetadata-recipient.md) | Audit Example for a Generate Metadata Transaction as recorded at the recipient |
| [Audit Example of ITI-106 at source](AuditEvent-ex-auditGenerateMetadata-source.md) | Audit Example for a Generate Metadata Transaction from source perspective |
| [Audit Example of ITI-65 at recipient](AuditEvent-ex-auditProvideBundle-recipient.md) | Audit Example for a Provide Bundle Transaction as recorded at the recipient |
| [Audit Example of ITI-65 at source](AuditEvent-ex-auditProvideBundle-source.md) | Audit Example for a Provide Bundle Transaction from source perspective |
| [Audit Example of ITI-66 at Consumer](AuditEvent-ex-auditFindDocumentLists-consumer.md) | Audit Example for a Find Document Lists Transaction as recorded at the consumer |
| [Audit Example of ITI-66 at responder](AuditEvent-ex-auditFindDocumentLists-responder.md) | Audit Example for a Find Document Lists Transaction from responder perspective |
| [Audit Example of ITI-67 at Consumer](AuditEvent-ex-auditFindDocumentReferences-consumer.md) | Audit Example for a Find Document References Transaction as recorded at the consumer |
| [Audit Example of ITI-67 at responder](AuditEvent-ex-auditFindDocumentReferences-responder.md) | Audit Example for a Find Document References Transaction from responder perspective |
| [Audit Example of ITI-67 using POST recorded at responder](AuditEvent-ex-auditFindDocumentReferences-post-responder.md) | Audit Example for a Find Document References Transaction using POST search as recorded at the responder perspective |
| [Audit Example of ITI-68 at consumer](AuditEvent-ex-auditRetrieveDocument-consumer.md) | Audit Example for a Retrieve Document Transaction as recorded at the consumer |
| [Audit Example of ITI-68 at responder](AuditEvent-ex-auditRetrieveDocument-responder.md) | Audit Example for a Retrieve Document Transaction from responder perspective |
| [DocumentReference for Comprehensive fully filled metadata](DocumentReference-ex-DocumentReferenceComprehensive.md) | Example of a Comprehensive DocumentReference resource. This is fully filled for all mandatory elements and all optional elements. |
| [DocumentReference for Comprehensive fully filled metadata for a Deferred Creation](DocumentReference-ex-DocumentReferenceComprehensiveDelayedAssembly.md) | Example of a Comprehensive DocumentReference resource.* This is fully filled for all mandatory elements and all optional elements. 
* This specifies a Delayed Document Assembly Document. 
* Thus the hash is the fixed value da39a3ee5e6b4b0d3255bfef95601890afd80709 
* and the size is explicitly zero 
* and when a Document Consumer retrieves the URL, then the document will be assembled and returned to it 
* and the DocumentReference would be updated with the resulting hash and size thus becoming a static entry
 
 |
| [DocumentReference for Comprehensive fully filled metadata for a On-Demand document](DocumentReference-ex-DocumentReferenceComprehensiveOnDemand.md) | Example of a Comprehensive DocumentReference resource.* This is fully filled for all mandatory elements. 
* This specifies a On-Demand Document. 
* Thus the hash is not provided 
* and the size is not provided 
* and when a Document Consumer retrieves the URL, then a new document will be created and returned to it 
* and a linked snapshot DocumentReference would be created with the resulting hash and size thus becoming a static entry
 
 |
| [DocumentReference for Comprehensive fully filled metadata for a document in a Binary](DocumentReference-ex-DocumentReferenceComprehensiveWithBinary.md) | Example of a Comprehensive DocumentReference resource.* This is fully filled for all mandatory elements. 
* This specifies a Document in a Binary.
 |
| [DocumentReference for Comprehensive metadata beeing replaced](Parameters-ex-patchParameters.md) | Example of a comprehensive DocumentReference resource beeing replaced |
| [DocumentReference for Comprehensive minimally filled metadata](DocumentReference-ex-DocumentReferenceUnContainedFully.md) | Example of a UnContained References Option with Comprehensive DocumentReference resource. This is fully filled for all mandatory elements and optional elements. |
| [DocumentReference for Comprehensive minimally metadata](DocumentReference-ex-DocumentReferenceUnContained.md) | Example of a Comprehensive DocumentReference resource. This is minimally filled for all mandatory elements. |
| [DocumentReference for Minimal metadata](DocumentReference-ex-DocumentReferenceMinimal.md) | Example of a minimal DocumentReference resource. This is very unlikely to be acceptable anywhere, but it is the minimum required. |
| [DocumentReference for Minimal metadata with an encounter](DocumentReference-ex-DocumentReferenceMinimalEncounter.md) | Example of a minimal DocumentReference resource. This has minimal metadata plus an encounter and custodian. |
| [DocumentReference for Simplified Publish with an encounter](DocumentReference-ex-DocumentReferenceSimplifiedPublish.md) | Example of a Simplified Publish DocumentReference resource. This has minimal metadata plus an encounter and custodian. |
| [Dummy Binary document that says: Hello World](Binary-ex-binary.md) | For Bundling Example binary that* holds "Hello World"
* size 11
* hash 0a4d55a8d778e5022fab701977c5d840bbc486d0
* base64 of the hash MGE0ZDU1YThkNzc4ZTUwMjJmYWI3MDE5NzdjNWQ4NDBiYmM0ODZkMA==
 |
| [Dummy Bundle with DocumentReference + Binary](Bundle-ex-dummyBundleDocAndBinary.md) | Dummy Bundle with a DocumentReferenece and Binary* with 1 documentReference 
* with 1 document Binary
 |
| [Dummy Device example](Device-ex-device.md) | Dummy Device example for completeness sake. No actual use of this resource other than an example target |
| [Dummy DocumentReference 2 example](DocumentReference-ex-documentreference2.md) | Dummy DocumentReference 2 example for completeness sake. No actual use of this resource other than an example target |
| [Dummy DocumentReference example](DocumentReference-ex-documentreference.md) | Dummy DocumentReference example for completeness sake. No actual use of this resource other than an example target |
| [Dummy Encounter example](Encounter-ex-encounter.md) | Dummy Encounter example for completness sake. No actual use of this resource other than an example target |
| [Dummy List example](List-ex-list.md) | Dummy List example for completeness sake. No actual use of this resource other than an example target |
| [Dummy Organization example](Organization-ex-organization.md) | Dummy Organization example for completeness sake. No actual use of this resource other than an example target |
| [Dummy Patient example](Patient-ex-patient.md) | Dummy patient example for completeness sake. No actual use of this resource other than an example target |
| [Dummy Practitioner example](Practitioner-ex-practitioner.md) | Dummy Practitioner example for completeness sake. No actual use of this resource other than an example target |
| [Example Comprehensive Email SubmissionSet](List-ex-compEmailPackage.md) | SubmissionSet in List resource conforming Comprehensive metadata with an intendedRecipient |
| [Example Comprehensive Folder](List-ex-compFolder.md) | Folder in List resource conforming only to Comprehensive metadata |
| [Example Comprehensive Full SubmissionSet](List-ex-compSubmissionSetFull.md) | SubmissionSet in List resource conforming fully to Comprehensive metadata. This has all elements fully populated. |
| [Example Comprehensive SubmissionSet](List-ex-compSubmissionSetList.md) | SubmissionSet in List resource conforming minimally to Comprehensive metadata |
| [Example Minimal Folder](List-ex-minimalFolder.md) | Folder in List resource conforming only to Minimal metadata |
| [Example Provide Bundle with a FHIR-Document](Bundle-ex-comprehensiveProvideDocumentBundleDocument.md) | An example of a Comprehensive Provide Document Bundle containing a DocumentReference and a FHIR-Document Bundle. This is an example of using a FHIR-Document Bundle rather than a Binary resource to carry the document content. |
| [Example UnContained Comprehensive Full SubmissionSet](List-ex-compSubmissionSetFullUnContained.md) | SubmissionSet in List resource conforming fully to UnContained References Option and Comprehensive Metadata Option. This has all elements fully populated. |
| [Example document that says: Hello World](Binary-ex-b-binary.md) | Example binary that holds just Hello World* size 11 
* hash 0a4d55a8d778e5022fab701977c5d840bbc486d0 
* base64 of the hash MGE0ZDU1YThkNzc4ZTUwMjJmYWI3MDE5NzdjNWQ4NDBiYmM0ODZkMA==
 |
| [Example of a FHIR-Document Bundle](Bundle-ex-fhir-document-bundle.md) | An example of a FHIR-Document Bundle |
| [Example of a Find Document Lists Response Message with a folder](Bundle-ex-findDocumentListsResponse.md) | Example of a Find Documents List Response Bundle witha folder |
| [Example of a Find Document References Response Message](Bundle-ex-findDocumentReferencesResponse.md) | Example of a Find Document References Bundle Search Set with a single DocumentReference |
| [Example of a FindDocumentReferences Response Bundle](Bundle-FindDocumentReferences.md) | An example of a searchset Bundle with one DocumentReference as returned by a FindDocumentReferences query |
| [Provide Document Bundle with Comprehensive metadata of multiple static document(s)](Bundle-ex-comprehensiveProvideDocumentBundleMultiple.md) | Example of a comprehensive Provide Document Bundle for a publication.* The bundle contains 
* SubmissionSet - identifies the documentReference(s) 
* DocumentReference - First DocumentReference 
* Binary - the first document 
* DocumentReference - Second DocumentReference 
* Binary - the second document 
* the Patient is contained in the DocumentReference 
* the Patient is also a reference to a PIXm/PDQm retrieved Resource.
 
 |
| [Provide Document Bundle with Comprehensive metadata of one document](Bundle-ex-comprehensiveProvideDocumentBundleSimple.md) | Example of a comprehensive Provide Document Bundle for a publication.* The bundle contains 
* SubmissionSet - identifies one documentReference 
* DocumentReference - One DocumentReference 
* Binary - the document 
* the Patient is contained in the DocumentReference 
* the Patient is also a reference to a PIXm/PDQm retrieved Resource.
 
 |
| [Provide Document Bundle with Comprehensive metadata of one document which replaces another document](Bundle-ex-comprehensiveProvideDocumentBundleReplace.md) | Example of a comprehensive Provide Document Bundle for a publication which replaces another document.* The bundle contains 
* SubmissionSet - identifies one documentReference 
* DocumentReference - Two DocumentReferences, an update to the old DocumentReference and the new DocumentReferences relates to the old DocumentReference 
* Binary - the document 
* the Patient is contained in the DocumentReference 
* the Patient is also a reference to a PIXm/PDQm retrieved Resource.
 
 |
| [Provide Document Bundle with Minimal metadata of one document](Bundle-ex-minimalProvideDocumentBundleSimple.md) | Example of a minimal Provide Document Bundle for a push to an email intended recipient.* The bundle contains 
* SubmissionSet - identifies to whom this is going and one documentReference 
* DocumentReference - One DocumentReference 
* Binary - the document 
* the Patient, as this is a push to a recipient that does not share a patient directory
 
 |
| [Provide Document Bundle with Minimal metadata of one document with sourcePatientInfo](Bundle-ex-minimalProvideDocumentBundleSimpleContained.md) | Example of a minimal Provide Document Bundle for a push to an email intended recipient.* The bundle contains 
* SubmissionSet - identifies to whom this is going and one documentReference 
* DocumentReference - One DocumentReference 
* Binary - the document 
* the Patient is contained in the DocumentReference. This would be more classic XDR/XDM model. Note there is no mention of the patient in the SubmissionSet in this case (hence minimal metadata), and if multiple documents were sent they would implicitly be the same patient, presumably with the same contained Patient; but given it is a contained Patinet there is no way to computably prove this beyond exact comparison of the contained object.
 
 |
| [Provide Document Bundle with complete Comprehensive metadata of one document](Bundle-ex-comprehensiveProvideDocumentBundleComplete.md) | Example of a complete comprehensive Provide Document Bundle for a publication.* The bundle contains 
* SubmissionSet - identifies one documentReference 
* Folder - identifies one documentReference 
* DocumentReference - One DocumentReference 
* Binary - the document 
* the Patient is contained in the DocumentReference 
* the Patient is also a reference to a PIXm/PDQm retrieved Resource.
 
 |
| [Provide Document Bundle with complete UnContained Comprehensive metadata of one document](Bundle-ex-unContainedComprehensiveProvideDocumentBundleComplete.md) | Example of a complete uncontained comprehensive Provide Document Bundle for a publication.* The bundle contains 
* SubmissionSet - identifies one documentReference 
* Folder - identifies one documentReference 
* DocumentReference - One DocumentReference 
* Binary - the document 
* the Practitioner and Organization are references 
* the Patient is also a reference to a PIXm/PDQm retrieved Resource.
 
 |
| [Provide Document Bundle with one document to be added to an existing folder](Bundle-ex-ProvideDocumentBundle-addToFolder.md) | Example of a comprehensive Provide Document Bundle for a publication and added to an existing folder.* The bundle contains 
* SubmissionSet - identifies one documentReference 
* Folder - existing Folder to be updated 
* DocumentReference - One DocumentReference 
* Binary - the document 
* the Patient is contained in the DocumentReference 
* the Patient is also a reference to a PIXm/PDQm retrieved Resource.
 
 |
| [Response to Provide Document Bundle with Minimal metadata of one document](Bundle-ex-response-minimalProvideDocumentBundleSimple.md) | Response bundle example given ex-minimalProvideDocumentBundleSimple* for every entry in order given 
* successful create of SubmissionSet 
* successful create of DocumentReference 
* successful create of Binary 
* successful create of Patient Note that in the case of the Patient, it is likely this successful create is just a fake success, as it was more likely to have been matched to a patient that already existed and THAT id was returned. (Alternative could have been a 303)
 
 |
| [Response to Provide Document Bundle with Minimal metadata of one document with sourcePatientInfo](Bundle-ex-response-minimalProvideDocumentBundleSimpleContained.md) | Response bundle example given ex-minimalProvideDocumentBundleSimpleContained* for every entry in order given 
* successful create of SubmissionSet
* successful create of DocumentReference
* successful create of Binary
 
 |
| [Response to Provide Document Bundle with multiple documents with sourcePatientInfo](Bundle-ex-response-comprehensiveProvideDocumentBundleMultiple.md) | Response bundle example given ex-comprehensiveProvideDocumentBundleMultiple* for every entry in order given 
* successful create of SubmissionSet
* successful create of DocumentReference - classic XDS static document
* successful create of Binary
 
 |
| [Response to Provide Document Bundle with one document with sourcePatientInfo](Bundle-ex-response-comprehensiveProvideDocumentBundleSimple.md) | Response bundle example given ex-comprehensiveProvideDocumentBundleSimple* for every entry in order given 
* successful create of SubmissionSet
* successful create of DocumentReference - classic XDS static document
* successful create of Binary
 
 |
| [Response to fully populated Provide Document Bundle with one document with sourcePatientInfo](Bundle-ex-response-comprehensiveProvideDocumentBundleComplete.md) | Response bundle example given ex-comprehensiveProvideDocumentBundleComplete* for every entry in order given 
* successful create of SubmissionSet
* successful create of Folder
* successful create of DocumentReference - classic XDS static document
* successful create of Binary
 
 |
| [Response to fully populated Provide Document Bundle with one document with sourcePatientInfo](Bundle-ex-response-unContainedComprehensiveProvideDocumentBundleCompt.md) | Response bundle example given ex-unContainedComprehensiveProvideDocumentBundleComplete* for every entry in order given 
* successful create of SubmissionSet
* successful create of DocumentReference - classic XDS static document
* successful create of Binary
 
 |
| [SubmissionSet for Minimal metadata](List-ex-minimalSubmissionSet.md) | Example of a minimal submissionSet in List resource. |
| [ex-input-binary](Parameters-ex-input-binary.md) | example Parameters with a binary. Note that the Binary is not a CDA or FHIR document, but is provided for example purposes. |
| [ex-input-doc-bundle](Parameters-ex-input-doc-bundle.md) | example Parameters with a Document Bundle |

