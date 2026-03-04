# Significant Changes and Issues - FHIR International Patient Summary v1.0.0-comment

* [**Table of Contents**](toc.md)
* **Significant Changes and Issues**

## Significant Changes and Issues

## Significant Changes

### Significant Structure and Content Changes

1: This profile is now just a FHIR profile for IPS and is now Rev 1.0 for its stand alone version

* This profile was originally a segment of the IHE [International Patient Summary (IPS) Rev 1.2 Trial Implementation Profile](https://www.ihe.net/uploadedFiles/Documents/PCC/IHE_PCC_Suppl_IPS.pdf), which combined the profiling of both the [HL7 FHIR International Patient Summary Implementation Guide](https://hl7.org/fhir/uv/ips/index.html) and the [HL7 CDA International Patient Summary Implementation Guide](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=483) for conformance testing at the IHE Connectathons.

2: This profile now points to the [HL7 FHIR International Patient Summary Implementation Guide 2.0.0](https://hl7.org/fhir/uv/ips/index.html) for all its dependencies

* Original version of the IHE IPS Profile pointed only to HL7 IPS version 1.0.0, later updated to HL7 IPS version 1.1.0

3: Assigned a new IHE Format Code - urn:ihe:pcc:fips:2025

* Original was not differentiated from the CDA version - urn:ihe:pcc:ips:2020

4: New guidance and clarification of the Must Support conformance expectations have been added to the Immunizations, Procedures, Results, and Devices Section Requirements in the Volume 3. These statements are not meant to further constrain HL7's IPS, but provide additional guidance so implementors can be more prepared to demonstrate this expected behavior in a conformance testing setting.

* Connectathon feedback showed a large misunderstanding of the HL7 and ISO Standard Requirements when it came to representing missing data.

5: Appropriate Structure definitions for the ODH and Complete Options have been generated using the IG Publisher tool.

* IHE PCC did not have proper access to the IG Publisher tool during the last update of the profile, and were hand only modeling the requirements of the testing options in the narrative text of the profile.

6: New Example Instances have been added to the profile to better represent the expected behavior in the document structure for the ODH and Complete testing options, and representing missing data.

* Examples are required for making new Structure Definitions in the IG builder tool, and are helpful to reference for implementers. lack of tooling in the previous generation of this profile prevented example inclusions for the FHIR profiling.

7: Gherkin Script removed from the Appendix A - IPS Gherkin Test Scripts. Replaced with the Test Plan Tab on the build page. A different approach to the documentation of the test plans has been taken on this page, as well as additional description around testing expectations were added.

* Connectathon take aways identified the gaps in the test plans and testing expectations that were a part of this document.

### Significant Text Changes

1: New Option added to reflect testing for just HL7's [HL7 FHIR International Patient Summary Implementation Guide](https://hl7.org/fhir/uv/ips/index.html)

* Confusion around how this profile was different from HL7's and how to test "just" the HL7 IPS version at Connectathons indicated a need for different naming conventions. No structural changes

2: The new profile name is FHIR International Patient Summary (FIPS)

* New name needed to differentiate between the FHIR IPS Profile and the CDA IPS Profile now that they are separate.

3: New Volume 3 section names and numbering to reflect new understanding of how to represent FHIR Content Modules and Conformance requirements.

* The previous IHE IPS Profile Vol 3 section names and numbering are different from how they are represented in this update due to new understandings of how we profile FHIR profiles and the use of the IG publisher to create new structure definitions and templates.

4: New Use Cases Added to better reflect the different instances of IPS information sources and different types of systems that are implementing IPS as content Creators

* Original Use Cases seemed to be repeating the same technical pattern with little variation in how an IPS can be used. New Implementors at the Connectathons showed new elements of its use and implementation and challenges the new content creators faced with information access that we felt needed to be included in the use cases of those profile.

### Significant Changes from Revision x.x

N/A - Major revision from a previous version of this profile that was a combination of the FHIR and CDA IPS elements. This profile isolates the FHIR IPS documentation.

## Issues

### Submit an Issue

IHE welcomes [New Issues](https://github.com/IHE/PCC.FIIO/issues/new/choose) from the GitHub community. For those without GitHub access, issues may be submitted to the [Patient Care Coordination Public Comment form](https://www.ihe.net/PCC_Public_Comments/).

As issues are submitted they will be managed at [FHIR International Patient Summary GitHub Issues](https://github.com/IHE/PCC.FIIO/issues), where discussion and workarounds may be found. These issues, when critical, will be processed using the normal [IHE Change Proposal](https://wiki.ihe.net/index.php/Category:CPs) management and balloting. It is important to note that as soon as a Change Proposal is approved, it carries the same weight as a published Implementation Guide (i.e., it is testable at an [IHE Connectathon](https://www.ihe.net/participate/connectathon/) from the time it is approved, even if it will not be integrated until several months later).

### Open Issues

* FIPS_001: Review of the synergy between the HL7 Implementation Guide requirements and the [ISO 27269:2025: Health informatics — International Patient Summary](https://www.iso.org/standard/79491.html) are inconsistent in their requirements and implications for expressing the following sections: Immunizations, Results, Devices, and procedures. Primarily there are written implications in the ISO IPs that indicate the absence of these sections imply that there are no relevant entries to report. In this case systems that do not support the data in or generation of that section MUST be able to indicate that the section or information in the section is Not Supported in a Data absent reason. This profile further constrains the Data Absent Reason requirements to explicitly reflect when data is not available for inclusion, as distinguished from mediated relevant information. IHE has put forward comments to HL7 for alignment in future updates. IHE has also put in requests to ISO to further clarify data absent expectations and meaning. IHE has submitted a comment to ISO TC215 to provide more clarity surrounding missing data. Should updates be made, we will re-visit the volume 3 6.1.x.4 FHIR IPS Composition/Bundle Section Components of this document. (10/08/2025) 
* [Jira Ticket](https://jira.hl7.org/browse/CDA-21425) for CDA Change request
 
* FIPS_002: Formalizing the process of iterative updates to HL7 and CEN and associated modifications to the profile (2019/09/30).
* FIPS_003: Workflow considerations have been discussed but is currently out of scope (2019/10/24).
* FIPS_004: Level of specificity for volume 3 content is pending further research (2019/11/13).
* FIPS_005: SNOMED-CT Copyright language needs to be updated because the “International Health Terminology Standards Development Organization” is Now known as SNOMED International. Note also that the IPS HL7 IGs utilize SNOMED’s recently-released Global Patient Set https://www.snomed.org/news-and-events/articles/global-patient-set-(1) (2019/10/28).
* FIPS_006: The optionality terminology used in this profile are taken directly from the CEN IPS Standard. Alignment between CEN/HL7 conformance and IHE conformance is (0 = 0, R = RE/R2, M = R, C = C, F = fixed value, NP = Not present).
* FIPS_007: The Clinical Observations Recordings and Encoding (CORE) Problem List Subset is a UMLS CORE Project with the purpose of defining a UMLS subset that is most useful for documenting and encoding clinical information at a summary level. The CORE Problem List Subset includes SNOMED CT concepts and codes that can be used for the problem list, discharge diagnoses, or reason of encounter. https://www.nlm.nih.gov/research/umls/Snomed/core_subset.html There are 2 value sets defined for problem list (only the first is specified by the IG) below. What is the difference? the name implies that only disorders are in the specified list, and not clinical findings. : CORE Problem List 2.16.840.1.113883.11.22.7 The CORE Problem List Subset of SNOMED CT (2020/02/16).
* FIPS_008: Allergy Intolerance category (e.g., food, medication, environment, biologic) needs a new LOINC Code (2020/02/28).
* FIPS_009: IPS Results is O in HL7 and RK in ISO/CEN. ISO/CEN’s optionality used for this profile.
* FIPS_010: Review the FHIR modeling for the specialist contact located in the table in Section 6.6.X.1.2.4.
* FIPS_011: The value set for Problem type in History of Past Problems (sectionPastIllnessHx.entry.pastProblem.Condition-uv-ips.category) is not really what CEN/ISO was looking for: A means of categorizing the different types of problem. This can be represented by a value set, for example it could be findings, preliminary diagnosis, diagnosis, clinical risks and medical alerts. Note, ‘Medical Alerts’, i.e., one type of alert, are represented here in this first iteration of this standard.
* [Jira Ticket](https://jira.hl7.org/browse/FHIR-55611)
* Partially Resolved due to Medical Alters having their own section in the 2.0.0 Release (02/01/2026)
* FIPS_012: Seeking comment on Use Case #4: Patient Mediated and Edited IPS Utilizing a Portal. This use case was used to represent how a patient may be able to add content (e.g. Patient Story Section) and mask data in their IPS for privacy when they choose to generate the document via their patient portal.
* FIPS_013: Add a slice for current Observation-pregnancy-status-uv-ips pregnancy composition. section:sectionPregnancyHx.entry to include a space for pregnancy details in IPS FHIR IG.
* FIPS_014: For current Observation-pregnancy-status-uv-ips pregnancy status.code - provide guidance list - 3rd entry with a pregnancy history hasMember.Reference(Observation (list)) (IF PREGNANT) add slice - immediately for current pregnancy: permitted behavior, not required behavior.
* FIPS_015: For Composition.Section.sectionPlanOfCare there should be more than 1 plan care type and it should be able to represent dates.
* FIPS_016: Review input on the FHIR modeling or specialist contact in 6.6.X.1.2.11 IPS Problems
* FIPS_017: Gherkin Language for the test scripts exist in the Appendix, however the scripts on the Cucumber tool need to be updated and specified.
* FIPS_018: SNOMED Terminology - Is there a specific link for the internationally available subset and does it have a name?
* FIPS_019: IHE and HL7 are still working on the collaborative approach to the evolution of the IPS Template. For now IHE and HL7 have agreed that this will be an evolving document and the OIDs will remain the same with Versioning included. Further harmonization to align HL7 and IHE is still under consideration.
* FIPS_020: There is no proper way to reference the specialist contact in the HL7 FHIR IPS IG at this point. When the specialist contact is supported in the HL7 implementation Guide the proper reference will be included in this profile.
* FIPS_021: Pregnancy observations may be needed for future uses of the section, however there is no process agreement with IHE and CEN about adding elements that are not specified in the base standard. An optional Pregnancy observation is added to fulfill the future need of this, but no requirements of its use are added
* FIPS_022: Any social history observation may be represented in the open entry under section:socialHistory, including alternate metrics for smoking and alcohol use, as well as work information (e.g., current/past job(s), longest-held occupation, etc.). Occupational Data for Health resources are profiled as international resources based on the US Realm specification in HL7 FHIR Profile: Occupational Data for Health (ODH), Release 1.2 (Standard for Trial Use). Should future releases of the HL7 FHIR profile for ODH be modified as International Realm, this profile will be updated to point to those updated profiles. The scope of the modifications in the IHE ODH profiles is to reference ‘IPS Patient’ instead of US Core Patient, and to reference the 3 US-Centric value sets with binding of ‘example’ rather than ‘required’: • Occupation • Industry • Supervisory Level or Pay Grade Occupation, Industry, and Work Classification value sets may vary by jurisdiction. The US CDC census value sets are provided as an ‘example binding’. There is no apparent specification for an expression of ‘concept domain’, which is leveraged by multiple IHE QRPH and PCC profiles as a method to allow for jurisdictions to specify other value sets
* FIPS_023: There is an identified gap in the HL7 FHIR IPS Implementation Guide. To properly align with the [ISO 27269:2025: Health informatics — International Patient Summary](https://www.iso.org/standard/79491.html) standard, HL7 needs to require the support of the emptyReason data element in the following sections: Immunizations, History of Procedures, Medical Devices, and Results. IHE has opened a Jira ticket to HL7 to resolve this issue. 
* [Jira Ticket](https://jira.hl7.org/browse/FHIR-55602)
 
* FIPS_024: The Informative Path mapping tables that were perviously published in the IPS Profile Volume 3 Section 6.6.X.1.2 FHIR Resource Data Specifications, has been moved to the PCC Implemention Materials folder.

### Closed Issues

* FIPS_001: For the trigger events – is this triggered only in anticipation of international travel or might this be a routine patient summary (2019/09/30)? Resolution - The IPS is for both planned and planned care (2019/11/12).
* FIPS_002: Consideration to relationship to other international standards (e.g., ISO 22857:2013 Health informatics — Guidelines on data protection to facilitate trans-border flows of personal health data) (2019/10/24). Resolution - This ISO 22857:2013 Health informatics — Guidelines on data protection to facilitate trans-border flows of personal health data will be referenced in the security considerations in Section X.5 (2019/11/12).
* FIPS_003: Consider referencing relationship to System of Concepts for Continuity of Care ISO 13940:2015 (2019/10/28). Resolution - The reference to System of Concepts for Continuity of Care ISO 13940:2015 will be put into the introduction (2019/11/12).
* FIPS_004: How to specify the Test plan documentation (2019/09/30). Resolution - The test plan language will be included within the appropriate sections using language that will then be extracted into gazelle after publication (2019/11/13).
* FIPS_005: Use Case #3: Managing Work-Related Illness While Working Abroad, includes content that is not in the current version of the HL7/CEN/ISO IPS specifications, how and when to incorporate additional content needs to be determined and agreed upon (2019/10/24). Resolution - Upon further research there is reference to work history in these underlying standards. The removal of the specific Occupational Data for Health reference and just referencing work history makes this use case in line with the baseline standards (2019/11/13).
* FIPS_006:The Complete options described in Section X.2 (e.g., Complete CDA Option and Complete FHIR Option) currently are not modeled in Volume 3. This will be updated after public comment. Resolution - Options have been modeled using the CI Build tools (2026/1/15).
* FIPS_007: Why is the Patient-uv-ips Structure definition Resource (http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips) a 0..* cardinality? You should not have more than one patient for a patient summary. Resolution - Mis Interpretation of the Cardinality on the resource (2026/1/15).
* FIPS_008: Problem type in History of Past Problems (sectionPastIllnessHx.entry.pastProblem.Condition-uv-ips.category) has no SNOMED-CT qualifier value for Medical Alert. Resolution - No need for SNOMED to create a new Qualifyer Value code. A new Alerts Section has been made to cover this need in the HL7 FHIR IG 2.0.0 Release (02/04/2026).

