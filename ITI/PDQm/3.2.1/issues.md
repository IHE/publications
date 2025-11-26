# Significant Changes and Issues - Patient Demographics Query for Mobile (PDQm) v3.2.1

* [**Table of Contents**](toc.md)
* **Significant Changes and Issues**

## Significant Changes and Issues

## Significant Changes

### Revision 3.2.0

* CP-ITI-1297 - Gender Identity
* QA Fixes 
* Error on $match operation
 
* CP-ITI-1214

### Revision 3.1.0

* Integration of CP-ITI-1314 fixing $match output Parameters profile

### Significant changes from PDQm, Rev 2.4:

* Changed to AuditEvent profiling leveraging [Basic Audit Log Patterns (BALP) Release 1.1.0](https://profiles.ihe.net/ITI/BALP/index.html). 
* Changes to RESTful type, and query subtype
 
* Introduced [ITI-119 Patient Demographics Match](ITI-119.md) as an alternative to [ITI-78 Mobile Patient Demographics Query](ITI-78.md).
* Added two new options on the Patient Demographics Consumer - Patient Search and Match Operation, corresponding to support for ITI-78 and ITI-119, respectively. The Patient Demographics Consumer MAY implement either or both of these options.
* Added the Match Operation option, corresponding to ITI-119, to the Patient Demographics Supplier. The Patient Demographics Supplier MAY implement the Match Operation option but SHALL continue to support ITI-78.
* Updated the [PDQm Patient Profile](StructureDefinition-IHE.PDQm.Patient.md) to require the presence of Patient.identifier, marked demographics elements as MustSupport, and added guidance around the use of the Patient.link element.
* Added requirements for which combinations of search parameters SHALL be supported by Patient Demographics consumers in section 2:3.78.4.1.2.1.1. 
* Resolves [PDQm_issue_90](https://github.com/IHE/ITI.PDQm/issues/90).
 
* Added RECOMMENDED response patterns for handling deprecated patient identifies to sections 2:3.78.4.1.3 and 2:3.78.4.3.3. 
* Resolves [PDQm_issue_86](https://github.com/IHE/ITI.PDQm/issues/86).
 
* Added Use Case #4 - Patient Demographics Query by Known Business Identifier.

### Significant changes from PDQm, Rev 2.2:

* FHIR Implementation Guide instead of [PDF - Rev. 2.2](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_PDQm_Rev2-2_TI_2020-08-28.pdf)
* Patient is now profiled to forbid modifier extensions
* AuditEvent is fully profiled using structureDefinition with examples

## Issues

### Submit an Issue

IHE welcomes [New Issues](https://github.com/IHE/ITI.PDQm/issues/new/choose) from the GitHub community. For those without GitHub access, issues can be submitted to the [Public Comment Form](https://www.ihe.net/ITI_Public_Comments/).

As issues are submitted they will be managed on the [PDQm GitHub Issues](https://github.com/IHE/ITI.PDQm/issues), where discussion and workarounds might be found. These issues, when critical, will be processed using the normal [IHE Change Proposal](https://wiki.ihe.net/index.php/Category:CPs) management and balloting. It is important to note that as soon as a Change Proposal is approved, it carries the same weight as a published Implementation Guide (i.e., it is testable at an [IHE Connectathon](https://www.ihe.net/participate/connectathon/) from the time it is approved, even if it will not be integrated until several months later).

### Open Issues

These issues were known as part of the publication, and IHE invites comments.

* PDQm_102: Normative vs Trial-Implementation - Currently the HL7 FHIR standard components used (e.g., Patient, Bundle, etc) in this profile are at Normative state. Some portions of PDQm are relying on STU content (such as query parameters, mothersMaidenName).
* PDQm_103: PDQm has a small volume 1 content. Thus breaking each H2 out into independent html files makes it harder to address. We might choose to do similar to PIXm and have just one volume 1 content with deep links.
* [PDQm_issue_66](https://github.com/IHE/ITI.PDQm/issues/66): PDQm has allowed clients to use GET or POST search, and thus mandated that servers MUST support both GET and POST. The previous versions of PDQm had only mentioned GET search, but we learned that FHIR core mandated POST and does not allow us to not also mandate it. This leaves regions that want to use only one of these verbs for search seemingly forced to support both verbs for search. The current discussion in FHIR core offers that "support" could include implementing a "policy" that forces an http 405 response. This seems to be a workable solution, and the alternative would not be much different than this anyway.
* [PDQm_issue_92](https://github.com/IHE/ITI.PDQm/issues/92): Currently we are mandating that Patient Demographics Suppliers support both ITI-78, with ITI-119 being OPTIONAL, while Patient Demographics Consumers have the option to choose to support either one or both transactions. Is requiring support for ITI-78 a problem for any Patient Demographics Suppliers?
* [PDQm_issue_101](https://github.com/IHE/ITI.PDQm/issues/101): Currently the expected actions for ITI-78 and ITI-119 require that all Patient Resources returned by the Patient Demographics Supplier conform to the [PDQm Patient Profile](StructureDefinition-IHE.PDQm.Patient.md). Are these requirements reasonable? While Patient Demographics Consumers SHOULD be robust in handling non-conformant Resources in the response, the intent of this requirement is to require that any Resources produced by the Patient Demographics Supplier are reasonably interoperable. Furthermore, we have decided not to derive from IPA Patient at this time. It is unclear if HL7 intends for IPA to generically cover all use cases for Patient data, or if IPA is limited to use cases of Patients accessing their own data. Discussion on this matter can be reviewed on [HL7's FHIR Zulip Chat](https://chat.fhir.org/#narrow/stream/261969-IPA/topic/demo.20apps/near/419011334).
* [PDQm_issue_112](https://github.com/IHE/ITI.PDQm/issues/112) The `onlyCertainMatches` parameter MAY be optionally set to `true` to indicate that the Patient Demographics Consumer would only like matches returned when they are certain to be matches for the subject of the request. The Patient Demographics Consumer might want to use `onlyCertainMatches` to prevent multiple Patient Resources from being returned in the response. This is often necessary in B2B cases where the Patient Demographics Consumer is operating in the background without a user confirming the Patient match. However, `onlyCertainMatches` does not guarantee that only a single Patient Resource will be returned. There might still be multiple results returned in the response when the same person has multiple records in the Patient Demographics Supplier. [FHIR-37361](https://jira.hl7.org/browse/FHIR-37361) and [FHIR-40880](https://jira.hl7.org/browse/FHIR-40880) request an additional parameter for specifying that matches SHOULD only be returned when there is exactly 1 certain match.

When updating PDQm to a version of FHIR with FHIR-37361 and FHIR-40880 applied, the new parameter will need to be incorporated into the ITI-119 transaction.

### Closed Issues

These issues have been decided and documented in the publication.

* Upgraded to FHIR R4.
* Case 4, where one or more identifier domains are indicated by the client but are not authoritative by the server, has been extensively discussed. The conclusion is to stay with allowing a server to return 404 or 200, and to require an OperationOutcome to indicate a warning. There is concern that the clients might not notice that they did not get results for a domain they requested, the client MUST take the initiative to look for the OperationOutcome to determine if they got full authoritative results. This looking for an OperationOutcome SHOULD always be inspected to assure results are what was expected. As such we did update client requirements to explicitly look for patient safety reasons.
* Removed the Pediatric Demographics Option as unnecessary and confusing. Most of the functionality needed for the use-case is natural part of the normal path of PDQm. The additional search parameters and extensions are allowed for those that need them. There has been little to no implementation of this option in the PDQ or PDQv3 environments.
* [PDQm_issue_94](https://github.com/IHE/ITI.PDQm/issues/94): In PDQ, PDQv3, and PDQm ITI-78, we have the ability for the client to limit the search results to patients with an identifier issued by a particular patient identification domain. We do not have equivalent functionality in ITI-119. While a client could suggest that it is interested in a particular patient identification domain by including the assigning authority of that domain as an identifier system in the $match input parameters, the semantics of $match would not require the server to honor that request. We do not believe this is likely to be an issue for real world implementations of ITI-119.

