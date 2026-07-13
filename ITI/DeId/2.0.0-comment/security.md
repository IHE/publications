# Security Considerations - De-Identification Handbook v2.0.0-comment

* [**Table of Contents**](toc.md)
* **Security Considerations**

## Security Considerations

For Security and Privacy considerations of De-Identification. There are two phases of interest: First is the development of the de-identification algorithm that will be used for a given use-case, Second is the execution of this de-identification algorithm on a set of data.

### Design of De-Identification Algorithm

Every de-identification project will be the result of a specific security analysis. De-identification is motivated by mitigation of some security or privacy risk. The project may have residual risks, such as third party escrow considerations, that require additions to the original security analysis.

IHE provides guidelines for preparing security and privacy risk assessments in [http://www.ihe.net/Technical_Framework/upload/IHE_ITI_Whitepaper_Security_Cookbook_2008-11-10.pdf](http://www.ihe.net/Technical_Framework/upload/IHE_ITI_Whitepaper_Security_Cookbook_2008-11-10.pdf)

### Execution of De-Identification on Data

Executing a De-Identification algorithm on a set of data needs to consider the residual risks left in the design of the De-Identification Algorithm. It is at the execution that many risks need to be addressed, and analysis of the resulting data-set will need to be done to assure that the goal of risk reduction has happened.

#### ATNA and Other Logging Considerations

The act of De-identification, pseudonymization, and re-identification are events that should be logged as part of the [Audit Trail and Node Authentication (ATNA)](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html) surveillance log. The specific audit messages that will be appropriate depend upon the usage, and will be profiled elsewhere. The [Basic Audit Log Patterns (BALP)](https://profiles.ihe.net/ITI/BALP/index.html) should be reviewed for generalized patterns of ATNA audit log messages and some specific privacy events.

The [Authorized Client access to ATNA log](https://profiles.ihe.net/ITI/BALP/volume-1.html#152412-auditevents-are-available-to-authorized-clients) can be used for Privacy surveillance, as well as to inform a Patient/Subject with an accounting of disclosures or access log.

An agent that De-Identifies data could declare their capabilities using the [IHE DeId Audit Creator CapabilityStatement](CapabilityStatement-IHE.DeId.AuditCreator.md)

The following profiles of AuditEvent encourage an identifier be given to the De-Identification algorithm being used, so that each time that algorithm is used it can be tracked in the Audit log.

The following profiles of AuditEvent defines a general pattern. This pattern would tend to be further refined by a given De-Identification Profile or Project to add specific codes and guidance. Such as defining a specific code for `purposeOfEvent`, additional agents or entities, specificity to the De-Identification algorithm identifier, specificity to the Consent, etc.

##### De-Identification

When a given patients data are de-identified, an Audit Log could be recorded to indicate that this has happened and what was the authorizing consent or other factors. The data recorded in the AuditEvent are a subset of those recorded for a Disclosure. Was the data **anonymized** or **pseudonymized**. Note that the recording of this audit log is not required and may be discouraged by policy. It is provided here for those that choose to record it.

The [De-Identification AuditLog profile](StructureDefinition-IHE.BasicAudit.DeIdentification.Source.md)

* [Example AuditEvent instances](StructureDefinition-IHE.BasicAudit.DeIdentification.Source-examples.md)

##### Re-Identification (authorized)

Authorized Re-Identification should also be recorded, and is defined in the [same above profile](StructureDefinition-IHE.BasicAudit.DeIdentification.Source.md).

* [Example AuditEvent instance for Re-Identification](AuditEvent-ex-auditReIdentification-source.md)

##### Disclosure

When an action results in a Disclosure, there is an [ATNA/BALP pattern for how to record that the Disclosure](https://profiles.ihe.net/ITI/BALP/content.html#3577-privacy-disclosure-audit-message) has happened. This pattern identifies how to record the essential details of the disclosure.

A disclosure may be the result of a poorly executed or designed De-Identification, or may be the result of learning that an unauthorized re-identification (attack) has happened. This disclosure fact is usually determined much later, with the recording of the Audit Log entry as part of the remediation.

