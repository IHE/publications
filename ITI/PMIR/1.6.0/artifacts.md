# Artifacts Summary - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [IHE PMIR Patient Identity Consumer](CapabilityStatement-IHE.PMIR.PatientIdentityConsumer.md) | CapabilityStatement for Patient Identity Consumer Actor in the IHE IT Infrastructure Technical Framework Supplement[IHE PMIR](index.md). |
| [IHE PMIR Patient Identity Registry](CapabilityStatement-IHE.PMIR.PatientIdentityRegistry.md) | CapabilityStatement for the Patient Identity Registry Actor in the IHE IT Infrastructure Technical Framework Supplement[IHE PMIR](index.md). |
| [IHE PMIR Patient Identity Source](CapabilityStatement-IHE.PMIR.PatientIdentitySource.md) | CapabilityStatement for Patient Identity Source Actor in the IHE IT Infrastructure Technical Framework Supplement[IHE PMIR](index.md). |
| [IHE PMIR Patient Identity Subscriber](CapabilityStatement-IHE.PMIR.PatientIdentitySubscriber.md) | CapabilityStatement for Patient Identity Subscriber Actor in the IHE IT Infrastructure Technical Framework Supplement[IHE PMIR](index.md). |

### Behavior: Message Definitions 

These define the types of messages that can be sent and/or received by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [PMIR Mobile Patient Identity Feed [ITI-93] MessageDefinition](MessageDefinition-IHE.PMIR.MessageDefinition.md) | PMIR MessageDefinition for the[Mobile Patient Identity Feed [ITI-93]](ITI-93.md) |
| [PMIR Mobile Patient Identity Feed [ITI-93] MessageDefinition Response](MessageDefinition-IHE.PMIR.MessageDefinition.Response.md) | PMIR MessageDefinition Response for the[Mobile Patient Identity Feed [ITI-93]](ITI-93.md) |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Audit Event for Mobile Patient Identity Feed by the Supplier and Consumer](StructureDefinition-IHE.PMIR.Feed.Audit.md) | Defines constraints on the AuditEvent Resource to record when a Mobile Patient Identity Feed Transaction happens, as recorded by the Supplier and Consumer. |
| [Audit Event for Subscribe to Patient Updates Transaction by the Patient Identity Subscriber and Registry for Create](StructureDefinition-IHE.PMIR.Audit.Subscription.Create.md) | Defines constraints on the AuditEvent Resource to record when a Subscribe to Patient Updates Transaction happens to create a new subscription, as recorded by the Patient Identity Subscriber and Registry. |
| [Audit Event for Subscribe to Patient Updates Transaction by the Patient Identity Subscriber and Registry for Delete](StructureDefinition-IHE.PMIR.Audit.Subscription.Delete.md) | Defines constraints on the AuditEvent Resource to record when a Subscribe to Patient Updates Transaction happens to delete a subscription, as recorded by the Patient Identity Subscriber and Registry. |
| [Audit Event for Subscribe to Patient Updates Transaction by the Patient Identity Subscriber and Registry for Read](StructureDefinition-IHE.PMIR.Audit.Subscription.Read.md) | Defines constraints on the AuditEvent Resource to record when a Subscribe to Patient Updates Transaction happens to read a subscription, as recorded by the Patient Identity Subscriber and Registry. |
| [Audit Event for Subscribe to Patient Updates Transaction by the Patient Identity Subscriber and Registry for Update](StructureDefinition-IHE.PMIR.Audit.Subscription.Update.md) | Defines constraints on the AuditEvent Resource to record when a Subscribe to Patient Updates Transaction happens to update a subscription, as recorded by the Patient Identity Subscriber and Registry. |
| [IHE Patient Master Identity Registry Bundle Message](StructureDefinition-IHE.PMIR.Bundle.History.md) | StructureDefinition for Bundle resource constraints for messages in the IHE PMIR Profile. |
| [IHE Patient Master Identity Registry Merged Patient](StructureDefinition-IHE.PMIR.Patient.Merge.md) | StructureDefinition for Patient resource constraints for messages in the IHE PMIR Profile when the Patient is being merged. |
| [IHE Patient Master Identity Registry Message Bundle](StructureDefinition-IHE.PMIR.Bundle.md) | StructureDefinition for Bundle resource constraints in the IHE PMIR Profile. |
| [IHE Patient Master Identity Registry MessageHeader](StructureDefinition-IHE.PMIR.MessageHeader.md) | StructureDefinition for MessageHeader resource constraints in the IHE PMIR Profile. |
| [IHE Patient Master Identity Registry MessageHeader Response](StructureDefinition-IHE.PMIR.MessageHeader.Response.md) | StructureDefinition for the PMIR MessageHeader response constraints. |
| [IHE Patient Master Identity Registry Related Person](StructureDefinition-IHE.PMIR.RelatedPerson.md) | StructureDefinition for RelatedPerson resource constraints for messages in the IHE PMIR Profile when a Patient is linked to a related person. |
| [IHE Patient Master Identity Registry Related Person Patient](StructureDefinition-IHE.PMIR.Patient.Related.md) | StructureDefinition for Patient resource constraints for messages in the IHE PMIR Profile when the Patient is linked to a related person. |
| [IHE Patient Master Identity Registry Subscription](StructureDefinition-IHE.PMIR.Subscription.md) | StructureDefinition for Subscrption resource constraints in the IHE PMIR Profile.See[Section 3.94.4.1.2.1.1](ITI-94.md#239441211-criteria-constraints)for details on constraints for criteria. |
| [IHE Patient Master Identity Registry Subscription request](StructureDefinition-IHE.PMIR.Subscription.Request.md) | StructureDefinition for Subscrption resource constraints for subscription requests in the IHE PMIR Profile. The IHE PMIR Profile text is Normative, this conformance resource is Informative. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Audit Example of ITI-93 for Consumer](AuditEvent-ex-auditPmirFeed-consumer.md) | AuditEvent for the PMIR Mobile Patient Identity Feed by a Consumer. |
| [Audit Example of ITI-93 for Supplier](AuditEvent-ex-auditPmirFeed-supplier.md) | AuditEvent for the PMIR Mobile Patient Identity Feed by a Supplier. |
| [Audit Example of ITI-94 for Patient Identity Registry for Subscription Create](AuditEvent-ex-auditPmirSubscription-registry-create.md) | AuditEvent for the PMIR Subscribe to Patient Updates by a Patient Identity Registry to create a Subscription. |
| [Audit Example of ITI-94 for Patient Identity Registry for Subscription Delete](AuditEvent-ex-auditPmirSubscription-registry-delete.md) | AuditEvent for the PMIR Subscribe to Patient Updates by a Patient Identity Registry to delete a Subscription. |
| [Audit Example of ITI-94 for Patient Identity Registry for Subscription Read](AuditEvent-ex-auditPmirSubscription-registry-read.md) | AuditEvent for the PMIR Subscribe to Patient Updates by a Patient Identity Registry to read a Subscription. |
| [Audit Example of ITI-94 for Patient Identity Registry for Subscription Update](AuditEvent-ex-auditPmirSubscription-registry-update.md) | AuditEvent for the PMIR Subscribe to Patient Updates by a Patient Identity Registry to update a Subscription. |
| [Audit Example of ITI-94 for Patient Identity Subscriber for Create](AuditEvent-ex-auditPmirSubscription-subscriber-create.md) | AuditEvent for the PMIR Subscribe to Patient Updates by a Patient Identity Subscriber when creating a Subscription. |
| [Audit Example of ITI-94 for Patient Identity Subscriber for Delete](AuditEvent-ex-auditPmirSubscription-subscriber-delete.md) | AuditEvent for the PMIR Subscribe to Patient Updates by a Patient Identity Subscriber when deleting a Subscription. |
| [Audit Example of ITI-94 for Patient Identity Subscriber for Read](AuditEvent-ex-auditPmirSubscription-subscriber-read.md) | AuditEvent for the PMIR Subscribe to Patient Updates by a Patient Identity Subscriber when reading a Subscription. |
| [Audit Example of ITI-94 for Patient Identity Subscriber for Update](AuditEvent-ex-auditPmirSubscription-subscriber-update.md) | AuditEvent for the PMIR Subscribe to Patient Updates by a Patient Identity Subscriber when updating a Subscription. |
| [Device Example for PMIR](Device-ex-device.md) | Device Example for PMIR. |
| [Device Example for PMIR](Device-ex-pmir.md) | Device Example for PMIR. |
| [IHE Patient Master Identity Registry Message Bundle Create Example](Bundle-ex-PMIRBundleCreate.md) | IHE PMIR example to create two patients. |
| [IHE Patient Master Identity Registry Message Bundle Delete Example](Bundle-ex-PMIRBundleDelete.md) | IHE PMIR example to delete a patient. |
| [IHE Patient Master Identity Registry Message Bundle Merge Example](Bundle-ex-PMIRBundleMerge.md) | IHE PMIR example Bundle for a patient that has been merged. |
| [IHE Patient Master Identity Registry Message Bundle Update Example](Bundle-ex-PMIRBundleUpdate.md) | IHE PMIR example to update a patient. |
| [PMIR Example Subscription](Subscription-ex-subscription.md) | Example of PMIR Subscription resource. |
| [PMIR Example Subscription Request](Subscription-ex-subscription-request.md) | Example of PMIR Subscription Request resource. |
| [PMIR Example of a Related Person for Mother](RelatedPerson-ex-related-mom.md) | PMIR Example of a Related Person for Mother. |
| [PMIR History Bundle for create](Bundle-ex-bundle-history-create.md) | Example PMIR History Bundle for creating. |
| [PMIR History Bundle for delete](Bundle-ex-bundle-history-delete.md) | Example PMIR History Bundle for deleting. |
| [PMIR History Bundle for merge](Bundle-ex-bundle-history-merge.md) | Example PMIR History Bundle for merging. |
| [PMIR History Bundle for update](Bundle-ex-bundle-history-update.md) | Example PMIR History Bundle for updating. |
| [PMIR example MessageHeader for create](MessageHeader-ex-messageheader-create.md) | Example PMIR MessageHeader for creating. |
| [PMIR example MessageHeader for create](MessageHeader-ex-messageheader-create-response.md) | Example PMIR MessageHeader for creating. |
| [PMIR example MessageHeader for delete](MessageHeader-ex-messageheader-delete.md) | Example PMIR MessageHeader for deleting. |
| [PMIR example MessageHeader for merge](MessageHeader-ex-messageheader-merge.md) | Example PMIR MessageHeader for merging. |
| [PMIR example MessageHeader for update](MessageHeader-ex-messageheader-update.md) | Example PMIR MessageHeader for updating. |
| [PMIR example Patient for create](Patient-ex-patient-create1.md) | Example PMIR Patient for creating. |
| [PMIR example Patient for create](Patient-ex-patient-create2.md) | Example PMIR Patient for creating. |
| [PMIR example Patient for create](Patient-ex-related-child.md) | Example PMIR Patient for creating. |
| [PMIR example Patient for merge](Patient-ex-patient-merge.md) | Example PMIR Patient for merging. |
| [PMIR example Patient for merge](Patient-ex-patient-merged.md) | Example PMIR Patient for merging. |
| [PMIR example Patient for update](Patient-ex-patient-update.md) | Example PMIR Patient for updating. |

### Other 

These are resources that are used within this implementation guide that do not fit into one of the other categories.

| | |
| :--- | :--- |
| [CAT Sample 1 ITI-93 Mother](Bundle-3594fe3c-31af-4695-b533-550e3bc0f1c9.md) | Connectathon sample 1 message bundle to create a patient that is a mother. |
| [CAT Sample 2 ITI-93 Mother](Bundle-d0bceb02-ddc1-4855-98a0-00bc364f24eb.md) | Connectathon sample 2 message bundle to create a patient that is a mother. |
| [CAT Sample 3 ITI-93 Baby](Bundle-30e285b5-a28c-444f-a898-a15159c82f38.md) | Connectathon sample 3 message bundle to create a patient that is a baby. |
| [CAT Sample 4 ITI-93 Baby](Bundle-08b38db4-13c1-48a3-ab50-80104d6dd66a.md) | Connectathon sample 4 message bundle to create a patient that is a baby. |
| [CAT Sample 5 ITI-93 Related Person](RelatedPerson-bf7c8e34-1be8-4b67-aad7-d62d8da48065.md) | Connectathon sample 5 related person resource. |
| [CAT Sample 6 ITI-93 update Baby](Bundle-72681afa-2bee-4422-bdf7-d0363e113b65.md) | Connectathon sample 6 message bundle to update a patient that is a baby. |
| [CAT Sample 7 ITI-93 merge](Bundle-d97b9e33-4b48-4190-8622-0b4b5be9770d.md) | Connectathon sample 7 message bundle to merge a patient. |
| [CAT Sample 8 ITI-93 merge](Bundle-22125985-cac7-4da9-9557-ef4e7ff97140.md) | Connectathon sample 8 message bundle to merge a patient. |

