# Download and Analysis - De-Identification Handbook v2.0.0-comment

* [**Table of Contents**](toc.md)
* **Download and Analysis**

## Download and Analysis

You can also download:

* [this entire guide](full-ig.zip),
* the definition resources in [json](definitions.json.zip), [xml](definitions.xml.zip), or [ttl](definitions.ttl.zip)
* the example resources in [json](examples.json.zip), [xml](examples.xml.zip) or [ttl](examples.ttl.zip) format.

The source code for this Implementation Guide can be found on [IHE ITI DeIdentification Handbook Github Repo](https://github.com/IHE/ITI.DeIdHandbook)

#### Cross Version Analysis

This is an R4 IG. None of the features it uses are changed in R4B, so it can be used as is with R4B systems. Packages for both [R4 (ihe.iti.deid.r4)](package.r4.tgz) and [R4B (ihe.iti.deid.r4b)](package.r4b.tgz) are available.

#### Dependency Table












#### Globals Table

*There are no Global profiles defined*

#### IP Statements

This publication includes IP covered under the following statements.

* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://terminology.hl7.org/6.5.0/CodeSystem-v3-ucum.html): [Bundle/430e32bc-be3e-4c42-a17b-461ea4f402d4](Bundle-430e32bc-be3e-4c42-a17b-461ea4f402d4.md), [Bundle/78f68a27-c439-4cd5-9ca2-ebc882468ade](Bundle-78f68a27-c439-4cd5-9ca2-ebc882468ade.md), [Bundle/80c516fd-9c84-4924-875b-bf0048979ae1](Bundle-80c516fd-9c84-4924-875b-bf0048979ae1.md), [Bundle/e817cefe-a7c4-487a-8116-be23cf865f3f](Bundle-e817cefe-a7c4-487a-8116-be23cf865f3f.md) and [Bundle/fc7b32fe-13b1-42e9-bca1-ff805587d072](Bundle-fc7b32fe-13b1-42e9-bca1-ff805587d072.md)


* These codes are excerpted from Digital Imaging and Communications in Medicine (DICOM) Standard, Part 16: Content Mapping Resource, Copyright © 2011 by the National Electrical Manufacturers Association.

* [DICOM Controlled Terminology Definitions](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html): [AuditEvent/ex-auditDeIdentification-source](AuditEvent-ex-auditDeIdentification-source.md), [AuditEvent/ex-auditReIdentification-source](AuditEvent-ex-auditReIdentification-source.md) and [AuditPrivacyDeIdentificationSource](StructureDefinition-IHE.BasicAudit.DeIdentification.Source.md)


* These codes are excerpted from ISO Standard, TS 21089-2017 - Health Informatics - Trusted End-to-End Information Flows, Copyright by ISO International. Copies of this standard are available through the ISO Web Site at www.iso.org.

* [ISO 21089-2017 Health Record Lifecycle Events](http://hl7.org/fhir/R4/codesystem-iso-21089-lifecycle.html): [AuditEvent/ex-auditDeIdentification-source](AuditEvent-ex-auditDeIdentification-source.md), [AuditEvent/ex-auditReIdentification-source](AuditEvent-ex-auditReIdentification-source.md), [AuditEventSubtypeDeidentify](ValueSet-IHE.BasicAudit.DeIdentification.Subtype.md) and [AuditPrivacyDeIdentificationSource](StructureDefinition-IHE.BasicAudit.DeIdentification.Source.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.5.0/CodeSystem-v3-loinc.html): [Bundle/430e32bc-be3e-4c42-a17b-461ea4f402d4](Bundle-430e32bc-be3e-4c42-a17b-461ea4f402d4.md), [Bundle/6603561c-2888-4355-9df4-23675f6eb458](Bundle-6603561c-2888-4355-9df4-23675f6eb458.md)... Show 4 more, [Bundle/78f68a27-c439-4cd5-9ca2-ebc882468ade](Bundle-78f68a27-c439-4cd5-9ca2-ebc882468ade.md), [Bundle/80c516fd-9c84-4924-875b-bf0048979ae1](Bundle-80c516fd-9c84-4924-875b-bf0048979ae1.md), [Bundle/e817cefe-a7c4-487a-8116-be23cf865f3f](Bundle-e817cefe-a7c4-487a-8116-be23cf865f3f.md) and [Bundle/fc7b32fe-13b1-42e9-bca1-ff805587d072](Bundle-fc7b32fe-13b1-42e9-bca1-ff805587d072.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [AuditEvent/ex-auditDeIdentification-source](AuditEvent-ex-auditDeIdentification-source.md), [AuditPrivacyDeIdentificationSource](StructureDefinition-IHE.BasicAudit.DeIdentification.Source.md)... Show 6 more, [Bundle/430e32bc-be3e-4c42-a17b-461ea4f402d4](Bundle-430e32bc-be3e-4c42-a17b-461ea4f402d4.md), [Bundle/6603561c-2888-4355-9df4-23675f6eb458](Bundle-6603561c-2888-4355-9df4-23675f6eb458.md), [Bundle/78f68a27-c439-4cd5-9ca2-ebc882468ade](Bundle-78f68a27-c439-4cd5-9ca2-ebc882468ade.md), [Bundle/80c516fd-9c84-4924-875b-bf0048979ae1](Bundle-80c516fd-9c84-4924-875b-bf0048979ae1.md), [Bundle/e817cefe-a7c4-487a-8116-be23cf865f3f](Bundle-e817cefe-a7c4-487a-8116-be23cf865f3f.md) and [Bundle/fc7b32fe-13b1-42e9-bca1-ff805587d072](Bundle-fc7b32fe-13b1-42e9-bca1-ff805587d072.md)


