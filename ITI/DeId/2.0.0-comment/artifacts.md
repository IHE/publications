# Artifacts Summary - De-Identification Handbook v2.0.0-comment

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [IHE DeId Audit Creator](CapabilityStatement-IHE.DeId.AuditCreator.md) | CapabilityStatement for [DeIdentification Audit Creator](security.md) Actor in [DeIdentification Handbook](index.md).This actor is derived off of the [ATNA Secure Application](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html#9.1.1.2) or [ATNA Secure Node](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html#9.1.1.1) actor with [ATNA ATX:FHIR Feed Option](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html).This actor is derived off of the [Basic Audit Log Patterns (BALP)](https://profiles.ihe.net/ITI/BALP/index.html) [Audit Creator](https://profiles.ihe.net/ITI/BALP/volume-1.html#152111-audit-creator) recording rich audit log entries to ATNA.* This actor is involved in the generation of De-Identified data, and thus would record [De-Identification Audit Events](StructureDefinition-IHE.BasicAudit.DeIdentification.Source.md)
* This actor may be involved in events that uncover a Privacy Disclosure, and thus would record [Privacy Disclosure Audit Events](https://build.fhir.org/ig/IHE/ITI.BasicAudit/StructureDefinition-IHE.BasicAudit.PrivacyDisclosure.Source.html).
 |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Audit Event for De-Identification at Source](StructureDefinition-IHE.BasicAudit.DeIdentification.Source.md) | Defines constraints on the AuditEvent Resource to record when a De-Identification happens at the Source. Note that a De-Identification event often impacts many different patients, so many AuditEvent resources need to be created so that each Patient is individually represented. This prevents leakage of other patients' that were also De-Identified at the same time.* Export event
* subtype of deidentify or pseudonymize
* shall have source of itself
* shall have a source agent
* should have a recipient agent(s) if known
* may have user, app, organization agent(s) 
* combine with the Security Token pattern
 
* should have the custodian that released the data
* should have the authorizer that represented the patient (may be the patient)
* shall have a patient entity
* may have the consent that authorized the de-identification
* may have the authorizing client token (saml, jwt, etc)
* may have the set of data entity(ies)
 |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Audit Event Subtype for De-Identification](ValueSet-IHE.BasicAudit.DeIdentification.Subtype.md) | Defines the AuditEvent Subtype for De-Identification events. This is used to indicate that the AuditEvent is specifically for a De-Identification event. The code is based on the ISO 21089 lifecycle code for de-identification. |
| [Entity Type for De-Identification valueset](ValueSet-DeIdentificationEntityTypeVS.md) | ValueSet Entity Type for De-Identification |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Entity Type for De-Identification](CodeSystem-DeIdentificationEntityType.md) | These AuditEvent.entity.type are related to De-Identification policy identification. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Audit Example of De-Identification at source](AuditEvent-ex-auditDeIdentification-source.md) | Audit Example for a De-Identification from source perspective |
| [Audit Example of authorized Re-Identification at source](AuditEvent-ex-auditReIdentification-source.md) | Audit Example for an authorized Re-Identification from source perspective |
| [ex-Bundle-DeathCert-pandemicIPS-VRDR](Bundle-78f68a27-c439-4cd5-9ca2-ebc882468ade.md) | The following bundle reflects a complete death certificate record, including:* the decedent demographics, including death date/time,
* their next-of-kin demographics,
* coded cause of death information,
* coded usual occupation and associated usual industry,
* death pronouncer,
* death certifier,
* funeral home information, and
* burial information.
 |
| [ex-Bundle-DeathCert-pandemicIPS-VRDR-stage-1](Bundle-e817cefe-a7c4-487a-8116-be23cf865f3f.md) | In addition to pseudonymizing the Decedent Identifiers and Patient name, we are also applying pseudoidentifiers and names for the:* Decedent Mother
* Decedent Father
* Decedent Spouse
The indirect identifiers in this record will be addressed during stage 2 de-identification. |
| [ex-Bundle-DeathCert-pandemicIPS-VRDR-stage-2](Bundle-fc7b32fe-13b1-42e9-bca1-ff805587d072.md) | The following bundle reflects the sample mortality data after applying the approved de-identification methods to the pseudonymized bundle as described in section IPS Data Element Mappings (FHIR). This shows:* Date shifting throughout the bundle (applies to the date of death), and
* Data omissions, noting the data is omitted in emptyReason as ‘withheld’ at the section level, and as ‘masked’ in dataAbsentReason at the data element level.
The majority of the death certificate is redacted leaving the remaining data deeded for the study:* coded cause of death
* coded usual occupation and associated usual industry,
* pseudonymized decedent demographics, including date/time of death
 |
| [ex-Bundle-secondaryUse-pandemicIPS-example-patient](Bundle-80c516fd-9c84-4924-875b-bf0048979ae1.md) | The Origional FHIR Document provided by the health Data Holder. The following bundle provides an example view of a record that could be in the research cohort for the pandemic patient. There have been no alterations to this original record. |
| [ex-Bundle-secondaryUse-pandemicIPS-example-patient-1-stage-1](Bundle-430e32bc-be3e-4c42-a17b-461ea4f402d4.md) | The following bundle provides an example view of the sample patient record after applying pseudonymization. This shows:* A pseudo-identifier has been applied to the patient resource and replaces the original patient identifier throughout the document.
* A pseudo-name has been applied to the patient resource and replaces the original patient name throughout the document. Note that a pseudo-name is required as content is not permitted to be omitted or replaced with a null flavor in FHIR patient resources.
 |
| [ex-Bundle-secondaryUse-pandemicIPS-example-patient-1-stage-2](Bundle-6603561c-2888-4355-9df4-23675f6eb458.md) | The following bundle provides an example view of the sample patient record after applying the approved de-identification methods to the pseudonymized bundle as described in section IPS Data Element Mappings (FHIR). This shows:* Date shifting throughout the bundle (e.g. dates associated with problems, procedures, medications, immunizations, allergies, etc.)
* The Patient's birthdate has been date-shifted forward by 107 days.
* Data omissions, noting the data is omitted in emptyReason as ‘withheld’ at the section level, and as ‘masked’ in dataAbsentReason at the data element level.
 |
| [ex-Decedent-pandemicIPS-VRDR](Patient-ex-Decedent-pandemicIPS-VRDR.md) | The following patient resource represents the decedent referenced in the death certificate document bundle. This is the stage 0 version of the patient, where no de-identification has been applied and all direct identifiers are present. |
| [ex-Decedent-pandemicIPS-VRDR-stage-1](Patient-ex-Decedent-pandemicIPS-VRDR-stage-1.md) | Stage 1 de-identification of the patient. Stage 1 applies reversible pseudonymization to direct identifiers needed for linkage (decedent name and identifier). |
| [ex-Decedent-pandemicIPS-VRDR-stage-2](Patient-ex-Decedent-pandemicIPS-VRDR-stage-2.md) | Stage 2 de-identification of the patient where the telecom is masked, the address is reduced to the first 3 digits of the postal code, the general practitioner can be seen as masked, and the birthdate has been date-shifted forward by 107 days. |
| [ex-Patient-secondaryUse-pandemicIPS](Patient-ex-Patient-secondaryUse-pandemicIPS.md) | The following patient resource represents the patient referenced in the IPS document bundle. This is the stage 0 version of the patient, where no de-identification has been applied and all direct identifiers are present. |
| [ex-Patient-secondaryUse-pandemicIPS-stage-1](Patient-ex-Patient-secondaryUse-pandemicIPS-stage-1.md) | Stage 1 de-identification of the patient. Stage 1 applies reversible pseudonymization to direct identifiers needed for linkage (decedent name and identifier). |
| [ex-Patient-secondaryUse-pandemicIPS-stage-2](Patient-ex-Patient-secondaryUse-pandemicIPS-stage-2.md) | Stage 2 de-identification of the patient where the telecom is masked, the address is reduced to the first 3 digits of the postal code, the general practitioner can be seen as masked, and the birthdate has been date-shifted forward by 107 days. |
| [ex-Practitioner-IPS-SimoneHeps](Practitioner-ex-Practitioner-IPS-SimoneHeps.md) | This example practitioner is made to be reference by other example resources realted to IPS. |

