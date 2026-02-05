# Significant Changes & Issues - Patient Identifier Cross-referencing for mobile (PIXm) v3.1.0

* [**Table of Contents**](toc.md)
* **Significant Changes & Issues**

## Significant Changes & Issues

## Significant Changes

### Significant changes since PIXm Version 3.0.4

Version 3.1.0

* QA fixes
* CP-ITI-1297 - Sex and Gender Representation

### Significant changes since PIXm Version 3.0.3

Version 3.0.4

* Removed Parameters from surrounding the error response example as it should only be the the OperationOutcome resource.

### Significant changes since PIXm Version 3.0.2

Version 3.0.3

* add response recommendation for deleted or merged patient
* quality improvements
* capabilityStatement improvements.

### Significant changes since PIXm Version 3.0.0

Version 3.0.2

* changed to AuditEvent profiling leveraging [Basic Audit Log Patterns (BALP) Release 1.1.0](https://profiles.ihe.net/ITI/BALP/index.html) 
* changes to RESTful type, and query subtype
* ITI-83 starts with RESTful Query, overriding the type from REST to QUERY
* ITI-104 expands out to the specific REST operations from BasicAudit
 

### Significant changes from PIXm, Rev 2.1:

* FHIR Implementation Guide instead of [PDF - Rev. 2.1](https://ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_PIXm.pdf)
* Integrated CP-ITI-1222, CP-ITI-1214, CP-ITI-1215, CP-ITI-1246
* Volume 1 Update Use Cases and introduced new Patient Identity Feed FHIRaccording to [work item](https://github.com/IHE/IT-Infrastructure/issues/147) 
* Added Security Considerations
 
* Volume 2 [ITI-83] 
* Added Parameter StructureDefinitions and OperationDefinition for $ihe-pix operation
* Added Security Audit Considerations with AuditEvent profile / resource
* Added IHE Connectathon Samples for [ITI-83]
 
* Volume 2 [ITI-104] 
* New Patient Identity Feed FHIR [ITI-104] Transaction
* Profile for specifying Patient elements used by Patient Identifier Cross-reference Manager to correlate identifiers
* Added the Remove Patient message
* Added IHE Connectathon samples [ITI-104]
* Added Security Audit Considerations with AuditEvent profile / resource
 

## Issues

### Submit an Issue

IHE welcomes [New Issues](https://github.com/IHE/ITI.PIXm/issues/new/choose) from the GitHub community. For those without GitHub access, issues may be submitted to the [Public Comment form](https://www.ihe.net/resources/public_comment/).

As issues are submitted they will be managed on the [PIXm GitHub Issues](https://github.com/IHE/ITI.PIXm/issues), where discussion and workarounds may be found. These issues, when critical, will be processed using the normal [IHE Change Proposal](https://wiki.ihe.net/index.php/Category:CPs) management and balloting. It is important to note that as soon as a Change Proposal is approved, it carries the same weight as a published Implementation Guide (i.e., it is testable at an [IHE Connectathon](https://www.ihe.net/participate/connectathon/) from the time it is approved, even if it will not be integrated until several months later).

### Open Issues and Questions

These issues were known as part of the publication, and IHE invites comments.

****PIXm_007****

**Mobile Patient Identifier Cross-reference Query response <assigner> resource will be required, for cases where the Assigning authority is not an OID or UUID or URI.**

**Do we want to use Assigner as an alternative field?**

****PIXm_015****

**Should we simplify the Parameters given that a Reference datatype can now carry a Reference.identifier or a Reference.reference?**

****PIXm 016****

**Should we enhance the Parameters returned so that each business identifier (Identifier) referenced by each Patient can be enumerated. This will result in each business identifier being listed multiple times, both at the root and also once for each Patient resource containing the value in the .identifier element. This seems useful to the client, but also seems to be beyond the intended use-case for PIX, and could more appropriately be handled with PDQm, or a secondary query of the Patient. Concern is that PIXm security model covers identifiers (reference to Patient is an identifier in FHIR), but by expanding as proposed this would be returning part of the Patient resource content.**

****PIXm 019****
 **PIXm allows for the parameters in the operation to be a string URL. The IG builder, when creating the narrative, presumes that these are clickable links. yet in one example we have put in a URN OID. This is recorded as an[issue against the IG builder](https://github.com/HL7/fhir-ig-publisher/issues/296).**

****PIXm 020****
 **If a Patient Identifier Cross-reference Manager creates a "shadow copy" of the feeded patients it may return the created id's on the Patient Identifier Cross-reference Manager, e.g., see[example](Parameters-pixm-response-mohralice-red-all.json.md)where the Patient Identifier Cross-reference Manager created three id's for the three patients out ouf the three different Patient Identifier Domains ('Patient/Patient-MohrAlice-Red',Patient/Patient-MohrAlice-Green',Patient/Patient-MohrAlice-Blue') and returns now two targetId's in addition to the two identifiers (red id/identifier is excluded because the sourceIdentifier in Identity Domain Red is already provided in the query).**

**In addition a Patient Identifier Cross-reference Manager could create a 'golden patient' where all information is consolidated by the Patient Identifier Cross-reference Manager rules and return also this targetId[example](Patient-Patient-MohrAlice.md). Could this id also be added in a $ihe-pix Query as a targetId ('Patient/Patient-MohrAlice')? Note: A golden patient is not the scope of PIXm, see the[IHE ITI PMIR](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_PMIR.pdf)profile.**

**There is continuing discussion in iti-tech if a "shadow copy" can be returned as a targetId, and if yes, if it should be marked by the Patient Identifier Cross-reference Manager in meta.source for these shadow copies or not.**

****PIXm 021**** **The naming for the Patient Identity Feed FHIR [ITI-104] transaction is in discussion. It might change depending is applicability to other profiles, like the[IHE PMIR](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_PMIR.pdf)) profile. See[profile considerations/testing](https://gazelle.ihe.net/content/pmirconnectathontestpatients)of PIXm Patient Identifier Cross-Reference Manager and PMIR Patient Identity Registry.**

****PIXm 022****
 **Should the Patient Identifier Cross-reference Manager have a requirement of filling in the assigningAuthority Name if the name is not provided in the Patient Identity Feed FHIR [ITI-104] as it is specified for PIX and PIX V3 Cross-reference Manager?[Issue](https://github.com/IHE/ITI.PIXm/issues/71)**

### Closed Issues

These issues have been decided and documented in the publication.

****CP-ITI-1118**** - asks if the return behavior is well aligned with PDQm. Seems they both should handle similar conditions similarly. The return codes were reviewed in PIXm, and found to be appropriate for PIXm as originally documented.

****PIXm_010**** The $ihe-pix operation is considered the right approach for this profile.

****PIXm_014**** The $ihe-pix operation cannot be replaced with the $match operation, the $match operation is however considered as a proposal for a new version in PDQm.

****PIXm 017****
 **[ITI-83] references E.3 which is in[PDF](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_Appx-Z.pdf#page=16), see also[github issue](https://github.com/IHE/publications/issues/110).**

****CP-ITI-1222, CP-ITI-1214, CP-ITI-1215**** - The sourceIdentifier parameter in the PIXm Query [ITI-83] can include both business identifier and FHIR Resource ids, and the parameter should be matched by the PIXm Manager against FHIR Resource ids (i.e., Patient.id) and the patient’s business identifiers (i.e., value(s) in Patient.identifier). Examples and error codes updated.

