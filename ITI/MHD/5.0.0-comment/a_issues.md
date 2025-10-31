# Issues - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* **Issues**

## Issues

### Significant changes in MHD Version 5.0.0

* Conversion to FHIR R5
* Clear STU-NOTE at the top of index.html to indicate this release relative to current FHIR R4
* Added tables to Volume 3 as the new mapping rendering from IgPublisher is less table based, and the table can hold both R4 and R5 mapping so that the changes are more clear.
* No change to Folders and SubmissionSet mapping 
* could possibly use List.source rather than extension (sourceOrg), but .source is 0..1 – see https://jira.hl7.org/browse/FHIR-53061
 
* AuditEvent – did not convert BALP, rather imported the profiles and renamed 
* Did not use FHIR R5 AuditEvent.patient, keeping the profiling closer to the FHIR R4 use to keep scope limited
* Did not put most specific code into AuditEvent.code, keeping it in AuditEvent.category to keep scope limited
 
* removed some examples that were only sourced in json, which is harder to align across FHIR releases
* converted the FHIR Document json to FSH, as it is easier to transition to R5 there.
* FHIR R5 DocumentReference search does include the `creation` parameter that was missing in R4

### Significant changes in MHD Version 4.2.2

Version 4.2.2

* Quality improvements
* List-SourceId bad cast to Token by @JohnMoehrke in https://github.com/IHE/ITI.MHD/pull/217
* fix possible identifier value invariant bug by @JohnMoehrke in https://github.com/IHE/ITI.MHD/pull/215
* Update documentReference.fsh by @JohnMoehrke in https://github.com/IHE/ITI.MHD/pull/218
* IG Builder warnings ignored by @JohnMoehrke in https://github.com/IHE/ITI.MHD/pull/219
* build cleaning by @JohnMoehrke in https://github.com/IHE/ITI.MHD/pull/225
* mapping had an extra column due to a second string by @JohnMoehrke in https://github.com/IHE/ITI.MHD/pull/228
* reference to PCC section should use sIPS extract by @JohnMoehrke in https://github.com/IHE/ITI.MHD/pull/224
* open the slicing on audit entity by @JohnMoehrke in https://github.com/IHE/ITI.MHD/pull/221
* Profiling of Bundle with PATCH #222 by @oliveregger in https://github.com/IHE/ITI.MHD/pull/227
* Updates to testplan to align with Gazelle and identify improvements to the tests

### Significant changes in MHD Version 4.2.1

Version 4.2.1

* quality improvements
* downloads and analysis page
* add context to extensions
* CP-ITI-1254 Date range clarity,
* capabilityStatement improvements.

### Significant changes in MHD Version 4.2.0

Version 4.2.0

* changed to AuditEvent profiling leveraging [Basic Audit Log Patterns (BALP) Release 1.1.0](https://profiles.ihe.net/ITI/BALP/index.html) 
* changes to RESTful type, and query subtype
 
* Added new features 
* Add an [Generate Metadata](1332_actor_options.md#13325-generate-metadata-option) that adds the [ITI-106](ITI-106.md) operation that allows for one structured/coded document to be published. 
* Is the use of Operation preferrable to the Simplified Publish?
 
* Add an [Simplified Publish](1332_actor_options.md#13324-simplified-publish-option) option that allows for one DocumentReference with the document in the .data element to be published, expecting the Document Recipient to create the SubmissionSet derived off of the DocumentReference and Community mapping policy.
* Add an [ITI-65 FHIR Documents Publish](1332_actor_options.md#13326-iti-65-fhir-documents-publish-option) option with support in ITI-65 to include a FHIR Document Bundle as an alternative to Binary. This makes less the burden on the Document Source to seralize the content into an appropriate Binary format, as that requirement is moved to the Document Recipient. There are use-cases where the Document Recipient will use the FHIR Document Bundle directly, and there are requirements on the Document Recipient to seralize the FHIR Document Bundle when grouped with non-FHIR Actors like XDS/XDR/XDM. 
* This is added as an option at this time to keep base compatibility with existing MHD. This may become normal functionality of ITI-65 eventually
 
* Each of these new options may survive or may be removed. Please voice your interest, and sign up for IHE-Connectathon to test these options. Based on interest these Options may survive or be removed.
 
* better clarity on types of Identifier
* a method has been added to support DocumentReference replace that is used by the Document Source to mark the old/replaced DocumentReference instance as superseded.

#### Other changes

* added clarity on when ITI-65 would/should/could include a Patient resource, vs relying on Patient services like PIXm/PDQm/PMIR.
* added a search parameter for searching against DocumentReference.content.attachment.creation
* eliminated mandate for entryUUID in ITI-65 from the StructureDefinitions, it was already relaxed in the ITI-65 narrative.
* allow .custodian element
* allow .context.encounter element and indicate how it can be handled with legacy Document Sharing (e.g. XDS)
* add clarification that search results do NOT need to be and may NOT be conformant to the MHD structureDefinition profiles. They will be in an enclosed environment, but the ITI-66 and ITI-67 transactions do not require that the results are compliant, simply that they meet the search parameters given.
* added clarity on the benefits of using CXi datatype in DocumentEntry.referenceIdList to distinguish various kinds of identifiers.
* moved status mapping table closer to where it is referenced
* link testplan better to test tools
* cleanup of various quality concerns illuminated by newer IG builder and validator.

### Significant changes in MHD Version 4.0.1

* Due to "breaking" changes, this version of MHD is Version 4.0.1
* Canonical URLs are different, using '.' rather than '_' as the underbar is not allowed in Canonical URLs.
* DocumentManifest has been replaced by List. Thus both SubmissionSet and Folder are supported with List Resource.
* To support use of List a few extensions have been added, and a few query parameters have been defined for those extensions.
* A full set of conformance resources and examples are included.
* Defined AuditEvent using profiling and examples.
* Hyperlinked to https://profiles.ihe.net publication of ITI specifications.

Please review the open issues and provide your response to the questions and statements.

## Issues

IHE welcomes [New Issues](https://github.com/IHE/ITI.MHD/issues/new/choose) from the GitHub community. For those without GitHub access, issues may be submitted to the [Public Comment form](https://www.ihe.net/resources/public_comment/).

As issues are submitted they will be managed on the [MHD GitHub Issues](https://github.com/IHE/ITI.MHD/issues), where discussion and workarounds may be found. These issues, when critical, will be processed using the normal [IHE Change Proposal](https://wiki.ihe.net/index.php/Category:CPs) management and balloting. It is important to note that as soon as a Change Proposal is approved, it carries the same weight as a published Implementation Guide (i.e., it is testable at an [IHE Connectathon](https://www.ihe.net/participate/connectathon/) from the time it is approved, even if it will not be integrated until several months later).

### Open Issues

These issues were known as part of the publication, and IHE invites comments. Comments can be submitted to [iticomments@googlegroups.com](mailto:iticomments@googlegroups.com) or may be submitted as comments to the specific GitHUB issue identified for that Open-Issue.

* [MHD_063](https://github.com/IHE/ITI.MHD/issues/158): Should MHD defined CapabilityStatement requirements so that a client can determine that the server supports MHD and which MHD server actor? Today we do require servers to support metadata endpoint returning their CapabilityStatment, but do not require it to contain anything specifically. We could first require that the CapabilityStatment.implementationGuide be populated with MHD canonical IG URL. We could additionally require specific .transaction values for DocumentRecipient, and .rest.resource.supportedProfile for DocumentResponder. Might we need an extension in .transaction to be more specific for Document Recipient? Should a DocumentRecipient need to publish that it is capable of receiving a create/update on these .rest resources (which we only defined thru the transaction, not individually REST)? Might we add an extension on CapabilityStatement.implementationGuide to hold the actor name and options?
* [MHD_061](https://github.com/IHE/ITI.MHD/issues/157): The new IUA supplement includes guidance on use of OAuth scopes when grouped with MHD. That text updates MHD, but be maintained in MHD until IUA goes Final Text. see https://profiles.ihe.net/ITI/IUA/index.html#33-mhd-profile
* [MHD_055](https://github.com/IHE/ITI.MHD/issues/156): List.source does not allow for Organization which is needed for SubmissionSet.author. So created an extension (SourceOrg) to hold the SubmissionSet sourceId as a Reference(Organization). This could be reverted if the submitted CR changes R5 https://jira.hl7.org/browse/FHIR-30154 
* in FHIR R5 .source was updated with other types, but is still 0..1. See https://jira.hl7.org/browse/FHIR-53061
 
* [MHD_058](https://github.com/IHE/ITI.MHD/issues/91): The profile requires that the document submitted is encoded in a FHIR Binary. Is there interest in also allowing a Bundle of type Document? This would be useful when publishing FHIR-Documents. The FHIR-Document would still need to be seralized into a Bundle of type Document, but that Bundle would not need to be further encoded into a Binary (e.g. base64 encoding). Note that the mime-type in this case would be forced to be the same mime-type as the ITI-65 Bundle, where a Document Source wants to encode ITI-65 in a mime-type that is different than the document, the Binary methodology would need to be used. 
* note that retrieve (ITI-68) does allow the Document Client to ask for the document content in various mime types, thus allowing support for preferred mime type encoding if the Document Responder has the ability to return the content in a encoding other than the DocumentReference indicates.
 
* [MHD_065](https://github.com/IHE/ITI.MHD/issues/155): Is it needed to have a mapping between XDS RegistryError and FHIR OperationOutcome at the element level, and also addressing OperationOutcome.issue.code vocabulary could be mapped to the XDS error vocabulary between XDS https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.4.1 and FHIR OperationOutcome?
* [MHD_066](https://github.com/IHE/ITI.MHD/issues/154): Note that On-Demand may become supported in FHIR R5 https://jira.hl7.org/browse/FHIR-22501
* [MHD_067](https://github.com/IHE/ITI.MHD/issues/109): Potential use of $docref operation from HL7 Implementation Guide. This operation is currently in US-Core, and is being added/moved to IPA. It is unclear how MHD would be able to use just this operation without being fully dependant upon all of IPA.
* [MHD_068](https://github.com/IHE/ITI.MHD/issues/197): Document Source "replace" methodology to better support FHIR backends like MHDS.

### Closed Issues

These issues have been decided and documented in the publication.

* Resolved in 4.0 (first IG build)
* MHD_062: Should the structureDefinition profiles forbid modifier extensions? It seems we have no reason for modifierExtensions, and modifierExtensions are allowed to radically change the meaning of the resource. – with no objection this is likely to be added as a constraint. 
* marked all profiles in this IG as forbiddng modifierExtensions
 
* MHD_053: Note that there is an emerging issue that FHIR has not addressed and that is how distributed systems behave, and how Patient links affect recorded data. Thus, it is difficult to determine today that the response Bundle content all will be pointing at the exact same Patient, although they should all be referring to the same human. 
* Not clear there is anything that can be done with this. Also not sure anything should be done with this. It is up to the server to assure, to the best of the servers ability, that the results are about the same patient. And it is equally true that the client must presume this to be the case. This is the way it is done in XCA. In MHDS and XDS this is driven to be true thru unified patient identity that is centrally managed (XDS Affinity Domain, PMIR golden identity).
 
* MHD_057: On-Demand and Delayed-Assembly are mostly addressed in MHD to the extent that an API can define. The available solution is that a Document Consumer can tell stable from On-Demand or Delayed-Assembly through the hash and size elements. The solution for publication of On-Demand or Delayed-Assembly is that the Document Source can place any URL into the DocumentReference.content.attachment.url, and thus that URL might be to a service that dynamically creates the content. Given that MHD does not include a persistance mechanism, there is no mandate for retrieve processing for On-Demand or Delayed-Assembly; however the behaviour provided by XDS would be exposed in MHD.
* CP-ITI-1116: Dissonance between FHIR concept of Transaction, and XDS Provide and Register transaction. This is partially addressed in CP-ITI-1095 regarding PartialFolderContentNotProcessed. In that a Document Responder is allowed to fail the full transaction according to FHIR transaction rules but is also allowed to soft warn. The soft warn would most likely be needed when implementing XDS-on-FHIR, as the XDS actors will have returned warnings. Thus, the Document Recipient must be allowed to return these soft warnings. In this case the MHD Document Recipient can’t undo the XDS transaction, so it must be allowed to return success with warnings. 
* The partial processing is a defined behaviour in MHD, so this is not seen as a failure that should cause the whole transaction fail.
 
* MHD_064: Should ITI-65 be an Operation rather than a Transaction? This might make MHD_063 easier? 
* Not moving to Operaiton, Given that Bundle Transaction is acceptable, and there is no interest presented to move to an Operation.
 
* MHD_051: More of the [ITI-18] queries could be utilized with the addition of the identifier FHIR parameter, however this would then present combinations of query parameters at the MHD (FHIR) API that are not simple transforms to [ITI-18] queries. For example, a Document Consumer provides both identifier query parameter, and another query parameter. At this time, MHD is focused on the most likely queries that a ‘mobile’ client would need, and these are satisfied with FindDocuments, FindFolders, and FindSubmissionSets alone. Trial Implementation experience should be provided to IHE ITI Technical Committee in view of the need for other query parameters. Additional query parameters are allowed by MHD, they are simply not required of servers to do anything other than ignore the additional query parameters.
* MHD_039: How important are Folders? We could support Document Source  Document Recipient ability to create and update Folders. To support Document Consumer  Document Responder support of folders would require adding another Transaction for Find Folders, or some other method that the Document Consumer obtains knowledge of the Folder (such as through _include). Are folders really important today, or have they been replaced by the ReferenceIdList?
* MHD_044: There is more detail in an XDS error on Provide and Register Document Set-b that is not obvious how to translate into the FHIR response [ITI-65]. Suggestions welcome.
* MHD_059: Note that Comprehensive constraints leave intendedRecipient as optional, where in XDR intendedRecipient is R2. This distinction was not considered sufficient to add the complexity to the profiles, and recognizes that in a PUSH use-case (XDR) where an intendedRecipent is known that it will be populated and that thus the distinction of R2 vs O is a non-issue.
* MHD_052: Need an element in List to hold contentCodeList element from XDS. Previous versions of MHD put this into the .code element. However, the .code element is 0..1, and intended to identify the kind of List. See GF#19822 requested for R5.
* MHD_056: the canonical urls have changed from '**' to '.'. The definition in FHIR for an "id" does not allow '**', but does allow '.'. The id value is the unique part of the defining canonical URL.
* Resolved in MHD Revision 3.0
* MHD_054: Request to add the identifier query parameter to DocumentReference and DocumentManifest.
* MHD_043: We neither mandate nor forbid the [ITI-68] from acting as a FHIR Binary endpoint. It would return a FHIR Binary resource with the content contained if the Accept headers ask for FHIR types, depending on the server capability.
* MHD_042: MHD does not declare options for the various associations (replaces, transforms, appends), but rather provides the capability to all. However, the Document Responder in XDS-on-FHIR Option must support all of these association types. It may still get a failure from the Registry that it must pass back to the Document Source.
* MHD_047: The tag used to indicate the Provide transaction must change. The encoding rules don't allow for "-" character. We could just change ITI-65 into ITI_65, but a breaking change is a breaking change. So, we have replaced with an actual structure definition based in the same URI space as our other Structure definitions. This means that we would no-longer use http://ihe.net/fhir/tag/iti-65, but rather we would use http://ihe.net/fhir/StructureDefinition/IHE_MHD_Provide_Comprehensive_DocumentBundle, or http://ihe.net/fhir/StructureDefinition/IHE_MHD_Provide_Minimal_DocumentBundle"MHD_048: We have chosen to define some secondary resources as ‘contained’, which in FHIR means that they would not standalone, and thus would not be revisable. We chose this characteristic as the closest to XDS metadata principle. However, this means that these secondary resources would not be searchable.
* CP-ITI-1115: Added requirement for location on the Bundle response and indicate etag is required if the server supports versioning (which the profile does not require). Also added GF#19824 to request this be clarified in FHIR in R5.
* CP-ITI-1126: added clarification that the transaction status is 200, and that each entry is 201 with location must be populated.
* CP-ITI-1114: clarify that in a Provide transaction all of the DocumentReference, DocumentManifest, and List resources must point at the same Patient resource. Added clarity to query transactions that when Patient parameter is used that both actors must have access to that Patient resource. Also added cautions to the security considerations.
* CP-ITI-1113: Added additional clarification of Reference url compliance vs .attachment.url compliance. Where attachment.url is a datatype “URL” it can carry a value that is compliant with Reference but can also carry any valid URL.
* CP-ITI-1102: Addressed bugs in the volume 3 table.
* CP-ITI-1101: This CP requests specifics on what is expected of a Document Responder implementing the Comprehensive Metadata Option. This is already handled in the more correct location in Volume 2 on the expected actions for the Document Responder. See Section 3.65.4.1.3.
* CP-ITI-1095: It is observed that in FHIR a transaction must succeed or fail. Thus, the inclusion of a Folder that the Document Recipient can’t process should result in failure of the whole transaction. The text of MHD has aligned with the text of XDS ITI TF-2:3.41.4.1.3.1 that allows a soft failure on Folders that are not supported. Should MHD take this softer position or stick with normal FHIR transaction behavior. For those systems based on a FHIR system they would likely prefer sticking with the FHIR definition, but those are likely also to easily support Folder (List Resource). Those that are a frontend to an XDS (XDS-on-FHIR) are more likely to prefer the softer approach, as they are going to need to pass through PartialFolderContentNotProcessed. Thus, the MHD Profile has been updated to indicate that either a full transaction failure or soft failure shall happen.
* CP-ITI-1089: Added emphasis on the response to the query transactions are compliant resources to the FHIR specification and will likely be compliant with MHD. There was already emphasis for the Document Consumer to be robust when processing the Bundle. There were questions of needing to address an operational environment with mismatched minimal vs comprehensive, this seems well enough explained and unclear what further wording would help with this clarity.
* MHD_049: ProviderRole has been added to FHIR STU3, and now added to DocumentReference and DocumentManifest. A FHIR CR 13266 resolved this.
* MHD_050: Using FHIR List as a Folder is minimally supported. Have defined a constant List.code that identifies those List resources that are Document Sharing Folders.
* MHD_036: There is a missing capability to fully represent XDS author in FHIR. This because FHIR DocumentReference and DocumentManifest only support ‘author’, not the other roles that could be supported in XDS. This author element precoordinates that the value is only the author. GF#13266: DocumentReference and DocumentManifest author element needs to be more like Provenance.agent  Current FHIR core uses PractitionerRole and has wider support for author types.
* MHD_038: Issue with how to carry CDA® root plus extension. We have documented current solution in Appendix Z– How to represent root+extension in a FHIR Identifier. However, FHIR should be more normative, so we have opened a CR http://gforge.hl7.org/gf/project/fhir/tracker/?action=TrackerItemEdit&tracker_item_id=13223 FHIR core has decided upon the root, and root+extension as we have defined it in Appendix Z.
* Resolved in MHD revision 2.4
* MHD_040: Find Document References does not support the GetRelatedDocuments stored query in the same way, but the queries provided can provide the same functionality.
* MHD_041: There is now a declared option to indicate a system that requires minimal metadata support. Therefore, a Document Source that uses minimal metadata may receive an error from a Document Recipient that does not support minimal metadata.
* MHD_037: STU3 now the Reference datatype can carry a URL to a Resource, or an Identifier of what could be a resource. We chose to specify use of URI and are silent on identifier until a compelling use case or issue appears.
* MHD_045: MHD scope is as a front API. Thus, it intends to be standalone, or as a front API to XDS/XCA/XDR. It therefore does not intend to support where XDS is the frontend API with MHD as the backend. The result is that MHD query model is a subset of XDS.
* MHD_046: MHD is an Interoperability Profile and does not include systems design that would be necessary to efficiently implement. There is considerable room for creative systems design.
* MHD_001: Standards selection is now FHIR DSTU2. The profile restricts FHIR use to that which can be supported by an underlying XDS environment. The broad expectation is to use DocumentReference for DocumentEntry, DocumentManifest for SubmissionSet, and List for Folders. The inclusion of other FHIR resources as needed. The Provide Document Bundle is a bundle of the various resources necessary to be equivalent to the XDS Provide And Register Document Set-b [ITI-41]. The Find Document References will query on DocumentReference resources. The Find Document Manifests will query on DocumentManifest resources.
* MHD_002: Use of the IUA Profile is recommended, but not mandated as there are plenty of HTTP-based security models that layer in between the low-level transport (TCP) and the HTTP encoding. These security models can be layered in without modifying the characteristics of this profile. Use of TLS is encouraged, specifically as profiled in ATNA, but is not mandated. The IUA Profile includes guidance on the use of the current common implementations of OpenID Connect and OAuth 2.
* MHD_027: The Provide Document Bundle transaction allows for referencing the document content or including the document content. This is a capability not included in XDS for a Document Source but is reasonable for a Document Recipient to implement. Does IHE need to define a Create Document type transaction so that the Document Source could publish before using references in the Provide Document Bundle Transaction? Resolution: there is expectation of supporting this in the future.
* MHD_031: This version of MHD supports Replace operations.
* MHD_032: This version of MHD supports other Association types.
* MHD_033: This version of MHD provides only minimal support for Folders. A Document Source can create Folders, and update Folders. A Document Responder can return Folders related to other queries. However, there is no defined method to search for Folders. Searching for Folders, as FHIR List resources, should be obvious.
* MHD_025: This version of MHD is based on HL7 FHIR DSTU2. Lessons learned were folded into HL7 FHIR for DSTU2 under a joint effort of IHE and HL7. Revisions of MHD are not expected to be backward compatible, until FHIR goes normative and MHD goes Final Text.
* MHD_026: DSTU2 has aligned the use of typeCode as DocumentReference.type, and classCode as DocumentReference.class.
* MHD_030: Include support for ReferenceIdList
* MHD_034: MHD updated in 2020 includes an “UnContained References Option” to enable use-cases where known references are managed over their lifecycle and thus contained is not helpful. This option identifies sourcePatientInfo, Authenticator, and Author resources within the DocumentReference, and DocumentManifest.
* MHD_035: FHIR does not provide an ad-hoc metadata extension mechanism like custom slots in XDS.

