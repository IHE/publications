# BasicAudit Open and Closed issues - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* **BasicAudit Open and Closed issues**

## BasicAudit Open and Closed issues

Comments and questions are welcome as GitHub issues, FHIR chat [stream for the topic AuditEvent for Patient](https://chat.fhir.org/#narrow/stream/179247-Security-and.20Privacy/topic/AuditEvent.20for.20Patient)

# Significant Changes

## Changes in 1.1.4 release

* fix slicing pattern warnings
* force agent.type
* improvements to SAML audit profile
* CP Integration
* CP-ITI-1306-03
* fix missing definition of 'request' - https://github.com/IHE/ITI.BasicAudit/issues/88
* fix missing definition of 'subject indicated' - https://github.com/IHE/ITI.BasicAudit/issues/89
* correct disclosure audit to an export
* fix don't escape resource-id when cx type in balp for json - https://github.com/IHE/ITI.BasicAudit/issues/101

## Changes in 1.1.3 release

* tighten constraints on .type
* tighten constraints on required values
* update for IG publisher warnings

## Changes in 1.1.2 release

* add date and patient.identifier search parameter
* add context to extensions
* fix slicing of a sliced extension profiling
* do not include vocabulary display name in profiles to allow instances to not have display names
* quality improvements
* capabilityStatement improvements.

## Changes in 1.1.1 release

There are no functional changes or breaking changes. This release is primarily to address validation messages that have been made more strict by HL7 than when 1.1.0 was released.

* clarify explanation of each structureDefinition profile
* cleanup examples with explicit slice use to eliminate validation warnings
* fix the Actor definitions
* switch to new IHE template

## Changes 1.1.0 release

* Removed the adjusted AuditEvent profiles for MHD, PDQm, and PIXm; as IHE will update those IGs.

# Open Issues

* [BasicAudit/2](https://github.com/IHE/ITI.BasicAudit/issues/41). Is the oAuth AuditEvent patterns appropriate, especially the opaque one. With Opaque is the last 32 characters big enough yet not too big? Note there are no examples given due to this need for Trial Implementation feedback and experience (5 warnings).
* [BasicAudit/3](https://github.com/IHE/ITI.BasicAudit/issues/42). The R4 version of AuditEvent uses extensible binding often, this has limited the ways that the AuditEvent can be constrained. R5 has relaxed these to either example or preferred binding, so some further can be done in this IG once R5 is released.
* [BasicAudit/6](https://github.com/IHE/ITI.BasicAudit/issues/45). This IG covers only basic RESTful http. Not covered are FHIR Operations, or advanced http activities like Patch, conditional create, conditional update, etc? What others are needed, for them please provide an example transaction that can be used in a profiled example.
* [BasicAudit/7](https://github.com/IHE/ITI.BasicAudit/issues/46). X-Request-Id header – I explained this only inside of the RESTful section, but it is applicable anywhere that X-Request-Id is used. X-Reqeust-Id is profiled differently than the example given in the FHIR core specification. Specifically there is a entity type defined here to enable slicing, where the example in FHIR core uses both type (job) and role (stream) which is harder to slice. I did not make this a standalone section because it is simply too small. 
* X-Request-Id vs TraceId – I added X-Request-Id profiling. I did not add TraceId, as I am not as aware of what this is. It seems very similar, unclear if it is different or the same thing. The modeling of TraceId that is in the FHIR Core is a bit different than I modeled X-Request-Id here. TraceId example in core is a .entity.type #21 "Job", with a .entity.what.identifier.type #TraceId. Where as for X-Request-Id I followed the example that Grahame indicted his server supports today for X-Request-Id. I welcome comment, as I am not an expert TraceId nor X-Reqeust-Id.
 
* [BasicAudit/18](https://github.com/IHE/ITI.BasicAudit/issues/55). Is the use of AssuranceLevel proper? Should the extension element be defined more specific to NIST-800-63 assurance levels, and not allow to be carrying historical vocabulary that is not specifically assurance-level but rather the method of authentication used (e.g. urn:oasis:names:tc:SAML:2.0:ac:classes:PasswordProtectedTransport)?
* [BasicAudit/19](https://github.com/IHE/ITI.BasicAudit/issues/56). Note: Support for [HL7 Security for Scalable Registration, Authentication, and Authorization (aka UDAP)](http://hl7.org/fhir/us/udap-security/history.html) when it gets published
* [BasicAudit/21](https://github.com/IHE/ITI.BasicAudit/issues/37). IG builder / validation issue with the slicing I need to use in AuditEvent (12 validation errors). Discussion can be found https://chat.fhir.org/#narrow/stream/215610-shorthand/topic/slicing.20with.20complex.20.24this and https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/slicing.20sliced.20extension
* [BasicAudit/22](https://github.com/IHE/ITI.BasicAudit/issues/60). There are no named options. It might be useful to have named options to enable minimal vs comprehensive; or to allow claims of compliance to only disclosure auditEvent.

