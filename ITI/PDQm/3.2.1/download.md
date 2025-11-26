# Download and Analysis - Patient Demographics Query for Mobile (PDQm) v3.2.1

* [**Table of Contents**](toc.md)
* **Download and Analysis**

## Download and Analysis

You can also download:

* [this entire guide](full-ig.zip),
* the definition resources in [json](definitions.json.zip), [xml](definitions.xml.zip), [ttl](definitions.ttl.zip), or [csv](csvs.zip) format, or
* the example resources in [json](examples.json.zip), [xml](examples.xml.zip) or [ttl](examples.ttl.zip) format.

The source code for this Implementation Guide can be found on [IHE GitHub](https://github.com/IHE/ITI.PDQm)

#### Cross Version Analysis

This is an R4 IG. None of the features it uses are changed in R4B, so it can be used as is with R4B systems. Packages for both [R4 (ihe.iti.pdqm.r4)](package.r4.tgz) and [R4B (ihe.iti.pdqm.r4b)](package.r4b.tgz) are available.

#### Dependency Table




#### Globals Table

*There are no Global profiles defined*

#### IP Statements

This publication includes IP covered under the following statements.

* These codes are excerpted from Digital Imaging and Communications in Medicine (DICOM) Standard, Part 16: Content Mapping Resource, Copyright © 2011 by the National Electrical Manufacturers Association.

* [DICOM Controlled Terminology Definitions](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html): [AuditEvent/ex-auditPdqmMatch-consumer](AuditEvent-ex-auditPdqmMatch-consumer.md), [AuditEvent/ex-auditPdqmMatch-supplier](AuditEvent-ex-auditPdqmMatch-supplier.md)...Show 6 more,[AuditEvent/ex-auditPdqmQuery-consumer](AuditEvent-ex-auditPdqmQuery-consumer.md),[AuditEvent/ex-auditPdqmQuery-supplier](AuditEvent-ex-auditPdqmQuery-supplier.md),[AuditPdqmMatchConsumer](StructureDefinition-IHE.PDQm.Match.Audit.Consumer.md),[AuditPdqmMatchSupplier](StructureDefinition-IHE.PDQm.Match.Audit.Supplier.md),[AuditPdqmQueryConsumer](StructureDefinition-IHE.PDQm.Query.Audit.Consumer.md)and[AuditPdqmQuerySupplier](StructureDefinition-IHE.PDQm.Query.Audit.Supplier.md)
* [Audit Event ID](http://terminology.hl7.org/7.0.0/CodeSystem-audit-event-type.html): [AuditEvent/ex-auditPdqmMatch-consumer](AuditEvent-ex-auditPdqmMatch-consumer.md), [AuditEvent/ex-auditPdqmMatch-supplier](AuditEvent-ex-auditPdqmMatch-supplier.md)...Show 6 more,[AuditEvent/ex-auditPdqmQuery-consumer](AuditEvent-ex-auditPdqmQuery-consumer.md),[AuditEvent/ex-auditPdqmQuery-supplier](AuditEvent-ex-auditPdqmQuery-supplier.md),[AuditPdqmMatchConsumer](StructureDefinition-IHE.PDQm.Match.Audit.Consumer.md),[AuditPdqmMatchSupplier](StructureDefinition-IHE.PDQm.Match.Audit.Supplier.md),[AuditPdqmQueryConsumer](StructureDefinition-IHE.PDQm.Query.Audit.Consumer.md)and[AuditPdqmQuerySupplier](StructureDefinition-IHE.PDQm.Query.Audit.Supplier.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [Audit event entity type](http://terminology.hl7.org/7.0.0/CodeSystem-audit-entity-type.html): [AuditEvent/ex-auditPdqmMatch-consumer](AuditEvent-ex-auditPdqmMatch-consumer.md), [AuditEvent/ex-auditPdqmMatch-supplier](AuditEvent-ex-auditPdqmMatch-supplier.md)...Show 6 more,[AuditEvent/ex-auditPdqmQuery-consumer](AuditEvent-ex-auditPdqmQuery-consumer.md),[AuditEvent/ex-auditPdqmQuery-supplier](AuditEvent-ex-auditPdqmQuery-supplier.md),[AuditPdqmMatchConsumer](StructureDefinition-IHE.PDQm.Match.Audit.Consumer.md),[AuditPdqmMatchSupplier](StructureDefinition-IHE.PDQm.Match.Audit.Supplier.md),[AuditPdqmQueryConsumer](StructureDefinition-IHE.PDQm.Query.Audit.Consumer.md)and[AuditPdqmQuerySupplier](StructureDefinition-IHE.PDQm.Query.Audit.Supplier.md)
* [AuditEventEntityRole](http://terminology.hl7.org/7.0.0/CodeSystem-object-role.html): [AuditEvent/ex-auditPdqmMatch-consumer](AuditEvent-ex-auditPdqmMatch-consumer.md), [AuditEvent/ex-auditPdqmMatch-supplier](AuditEvent-ex-auditPdqmMatch-supplier.md)...Show 6 more,[AuditEvent/ex-auditPdqmQuery-consumer](AuditEvent-ex-auditPdqmQuery-consumer.md),[AuditEvent/ex-auditPdqmQuery-supplier](AuditEvent-ex-auditPdqmQuery-supplier.md),[AuditPdqmMatchConsumer](StructureDefinition-IHE.PDQm.Match.Audit.Consumer.md),[AuditPdqmMatchSupplier](StructureDefinition-IHE.PDQm.Match.Audit.Supplier.md),[AuditPdqmQueryConsumer](StructureDefinition-IHE.PDQm.Query.Audit.Consumer.md)and[AuditPdqmQuerySupplier](StructureDefinition-IHE.PDQm.Query.Audit.Supplier.md)
* [Audit Event Source Type](http://terminology.hl7.org/7.0.0/CodeSystem-security-source-type.html): [AuditEvent/ex-auditPdqmMatch-consumer](AuditEvent-ex-auditPdqmMatch-consumer.md), [AuditEvent/ex-auditPdqmMatch-supplier](AuditEvent-ex-auditPdqmMatch-supplier.md), [AuditEvent/ex-auditPdqmQuery-consumer](AuditEvent-ex-auditPdqmQuery-consumer.md) and [AuditEvent/ex-auditPdqmQuery-supplier](AuditEvent-ex-auditPdqmQuery-supplier.md)
* [ActReason](http://terminology.hl7.org/7.0.0/CodeSystem-v3-ActReason.html): [AuditEvent/ex-auditPdqmMatch-consumer](AuditEvent-ex-auditPdqmMatch-consumer.md), [AuditEvent/ex-auditPdqmMatch-supplier](AuditEvent-ex-auditPdqmMatch-supplier.md)...Show 15 more,[AuditEvent/ex-auditPdqmQuery-consumer](AuditEvent-ex-auditPdqmQuery-consumer.md),[AuditEvent/ex-auditPdqmQuery-supplier](AuditEvent-ex-auditPdqmQuery-supplier.md),[Bundle/ex-QueryPatientResourceResponseMessage](Bundle-ex-QueryPatientResourceResponseMessage.md),[Bundle/ex-match-output](Bundle-ex-match-output.md),[Bundle/ex-match-output-empty](Bundle-ex-match-output-empty.md),[Bundle/ex-match-output-error](Bundle-ex-match-output-error.md),[Bundle/ex-match-output-multiple](Bundle-ex-match-output-multiple.md),[Bundle/ex-match-output-warning](Bundle-ex-match-output-warning.md),[Device/ex-device](Device-ex-device.md),[Parameters/ex-match-input-count](Parameters-ex-match-input-count.md),[Parameters/ex-match-input-onlyCertainMatches](Parameters-ex-match-input-onlyCertainMatches.md),[Parameters/ex-match-input-patient-only](Parameters-ex-match-input-patient-only.md),[Patient/ex-match-input-patient](Patient-ex-match-input-patient.md),[Patient/ex-patient](Patient-ex-patient.md)and[Patient/ex-patient-mothers-maiden-name](Patient-ex-patient-mothers-maiden-name.md)
* [ParticipationType](http://terminology.hl7.org/7.0.0/CodeSystem-v3-ParticipationType.html): [AuditPdqmMatchConsumer](StructureDefinition-IHE.PDQm.Match.Audit.Consumer.md), [AuditPdqmMatchSupplier](StructureDefinition-IHE.PDQm.Match.Audit.Supplier.md), [AuditPdqmQueryConsumer](StructureDefinition-IHE.PDQm.Query.Audit.Consumer.md) and [AuditPdqmQuerySupplier](StructureDefinition-IHE.PDQm.Query.Audit.Supplier.md)


