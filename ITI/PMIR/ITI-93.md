# 2:3.93 Mobile Patient Identity Feed [ITI-93] - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* **2:3.93 Mobile Patient Identity Feed [ITI-93]**

## 2:3.93 Mobile Patient Identity Feed [ITI-93]

### 2:3.93.1 Scope

The Mobile Patient Identity Feed transaction sends a FHIR Bundle of new and updated Patient Resources.

### 2:3.93.2 Actor Roles

The roles in this transaction are defined in the following table and may be played by the actors shown here:

**Table 2:3.93.2-1: Actor Roles**

| | |
| :--- | :--- |
| **Role:** | Supplier: Sends a bundle of updates. |
| **Actor(s):** | The following actors may play the role of**Supplier:****Patient Identity Source****Patient Identity Registry** |
| **Role:** | Consumer: Accepts the bundle request and returns a bundle response. |
| **Actor(s):** | The following actors may play the role of**Consumer:****Patient Identity Registry****Patient Identity Consumer** |

### 2:3.93.3 Referenced Standards

* HL7 FHIR standard Release 4 [http://hl7.org/fhir/R4/index.html](http://hl7.org/fhir/R4/index.html)

### 2:3.93.4 Messages

**Figure 2:3.93.4-1: Interaction Diagram**

#### 2:3.93.4.1 Mobile Patient Identity Feed Request Message

The Mobile Patient Identity Feed message is a FHIR message with the new and updated Patient Resource(s).

##### 2:3.93.4.1.1 Trigger Events

A Supplier triggers a Mobile Patient Identity Feed Request to a Consumer when it detects, according to domain policy, a change in the Patient Master Identity (see [ITI TF-1: 49](volume-1.md)), i.e., create, update, merge, delete.

A patient’s “Patient Master Identity” contains:

* a unique identifier for the patient (`Patient.id` in the FHIR Patient Resource) that is assigned by the Patient Identity Registry in the domain.
* zero or more business identifiers for the patient, e.g., local patient ID(s), driver’s license number, etc. (`Patient.identifier` in the FHIR Patient Resource).
* other information to identify the patient in the PDQm Patient resource profile.

**Note:** The Consumer is identified either by a subscription in the [Subscribe to Patient Updates [ITI-94]](ITI-94.md) transaction or by a configuration.

##### 2:3.93.4.1.2 Message Semantics

A Supplier initiates a FHIR message request using HTTP POST as defined at [https://www.hl7.org/fhir/R4/messaging.html](https://www.hl7.org/fhir/R4/messaging.html) on a Bundle Resource.

A Supplier shall create a Bundle Resource of type `message` constrained as specified in Section 2:3.93.4.1.2.1 and conforming to the [PMIR Feed MessageDefinition](MessageDefinition-IHE.PMIR.MessageDefinition.md).

A Supplier shall be able to send a request for both the JSON and the XML messaging formats as defined in FHIR. A Consumer shall support accepting either the JSON or the XML messaging formats as defined in FHIR depending on the Subscription or configuration of the Consumer. See [ITI TF-2: Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format) for more details.

See [ITI TF-2: Appendix W](https://profiles.ihe.net/ITI/TF/Volume2/ch-W.html) for informative implementation material for this transaction.

###### 2:3.93.4.1.2.1 FHIR Message Bundle Resource Constraints

The message Bundle Resource shall be constrained as described in the [Bundle Profile for PMIR](StructureDefinition-IHE.PMIR.Bundle.md).

###### 2:3.93.4.1.2.2 FHIR MessageHeader Resource Constraints

A Supplier shall create a MessageHeader Resource that is entry[0] in the message Bundle. The MessageHeader Resource shall be constrained as described the [MessageHeader Profile for PMIR](StructureDefinition-IHE.PMIR.MessageHeader.md).

###### 2:3.93.4.1.2.3 FHIR History Bundle Resource Constraints

A Supplier shall create a Bundle Resource of type “history” that is entry[1] in the message Bundle. The history Bundle Resource shall be constrained as described the [History Bundle Profile for PMIR](StructureDefinition-IHE.PMIR.Bundle.History.md). The entry shall contain unique Patient Resource(s) that have been successfully created, updated, or deleted on the Supplier. Unsuccessful changes are not included.

###### 2:3.93.4.1.2.4 FHIR History Bundle entry Constraints for Merge

When a merge is needed, the Patient Resource to be deprecated shall be included in the history Bundle.`entry` and shall be constrained as described in the [Merged Patient Profile for PMIR](StructureDefinition-IHE.PMIR.Patient.Merge.md) and the `entry.request.method` shall be `PUT`.

###### 2:3.93.4.1.2.5 FHIR Patient Resource Constraints for Related Person

When a Patient needs to be associated to a related person (such as a mother to a newborn), the Patient Resource of the patient master identity shall be constrained as described in the [Patient for Related Person Profile for PMIR](StructureDefinition-IHE.PMIR.Patient.Related.md).

For guidance on mother and newborn relationships, see [https://www.hl7.org/fhir/R4/patient.html#maternity](https://www.hl7.org/fhir/R4/patient.html#maternity).

###### 2:3.93.4.1.2.6 Example FHIR Bundles

The [PMIR Message Bundle Merge Example](Bundle-ex-PMIRBundleMerge.md) shows a Bundle including Patient 123 being replaced by Patient 456 with no patient identity changes made to the surviving patient identity.

The [PMIR Message Bundle Create Example](Bundle-ex-PMIRBundleCreate.md) shows two new patients being created.

The [PMIR Message Bundle Update Example](Bundle-ex-PMIRBundleUpdate.md) shows Patient 111 being updated.

The [PMIR Message Bundle Delete Example](Bundle-ex-PMIRBundleDelete.md) shows Patient 111 being deleted.

##### 2:3.93.4.1.3 Expected Actions

A Patient Identity Registry shall accept the message and return a Mobile Patient Identity Feed Response message (Section 2:3.93.4.2) and shall:

* **Create:** create Patient Resources when a create is sent. The Patient Identity Registry shall persist Patient Master Identities from the Master Patient Identification Domain. This Domain is represented by the base URL of the Patient Identity Registry.
* **Update:** persist updates to Patient Resources.
* **Delete:** See Section 2:3.93.4.1.3.1.
* **Merge:** deprecate the Patient Resource when the message includes a replaced-by link.type. The Patient Identity Registry shall set the deprecated Patient active to “false” and include a link with type set to “replaced-by” and other set to the surviving Patient. See Section 2:3.93.4.1.3.1.
* **Unmerge:** not supported by this transaction. When a Patient Identity Registry receives a Patient Resource where a link.type of “replaced-by” has been removed (i.e., an attempt to unmerge), it shall return a correlated entry.response.code of 405, unless local policy allows unmerge.

A Patient Identity Consumer shall accept the message and return a Mobile Patient Identity Feed Response message (Section 2:3.93.4.2) and:

* **Create, Update, Delete, Merge:** will process the feed according to its application capabilities. IHE profiles that use this transaction, e.g., MHDS, may provide additional requirements such as updating the data the Patient Identity Consumer is managing.

###### 2:3.93.4.1.3.1 Post Merge/Delete Expectations

Based upon policy, when a Patient Identity Registry responds to a `search` where the Patient is deprecated or deleted, for example, from a PDQm query [ITI-78](https://profiles.ihe.net/ITI/PDQm/ITI-78.html) or a PIXm query [ITI-83](https://profiles.ihe.net/ITI/PIXm/ITI-83.html), it shall return:

* 200 OK, and return a Bundle with the inactive patient which is marked as inactive, or
* 200 OK, and return a Bundle with no patient resource, or
* If merged, 200 OK, and return a Bundle with both the target and old patient resources

Based upon policy, when a Patient Identity Registry responds to a `read` or `vread`, `GET \[base\]/Patient/pat01`, on the deprecated or deleted Patient Resource Id, it shall return:

* 200 OK, and return the deprecated Patient which is now marked as inactive, or
* 404 Not Found

#### 2:3.93.4.2 Mobile Patient Identity Feed Response

##### 2:3.93.4.2.1 Trigger Events

A Consumer sends the Mobile Patient Identity Feed Response to the Supplier when the Feed Request Message is fully processed.

##### 2:3.93.4.2.2 Message Semantics

A Consumer responds to the Mobile Patient Identity Feed Request with an HTTP Status of 2xx with a Bundle Resource with the type set to “message” and one entry that is a MessageHeader Resource that reports the outcome of processing the Mobile Patient Identity Feed, or an error code, 4xx or 5xx.

##### 2:3.93.4.2.3 Expected Actions

The Supplier receives the response and continues with workflow appropriate to success or failure as indicated in the Mobile Patient Identity Feed Response.

### 2:3.93.5 Security Considerations

See [ITI TF-1: 49.5](volume-1.md#1495-pmir-security-considerations) for security considerations for the PMIR Profile.

See [ITI TF-2: Appendix Z.8](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations) for common mobile security considerations.

The Mobile Patient Identity Feed transaction should have both server authentication and client authentication, so that the client knows that the feed is going to the correct destination (server) and that the destination (server) knows the authenticity of the source (client). The content needs to be protected against integrity failures, and confidentiality failures. The common use of https, with server-side authentication, can address most of these requirements, however common https does not address client authentication. For this client authentication function, one could either use the mutual-authenticated-TLS found in ATNA, or OAuth mechanism found in IUA. Other solutions can be used as appropriate agreement between client and server.

#### 2:3.93.5.1 Security Audit Considerations

The Mobile Patient Identity Feed transaction is a Patient Record Message event as defined in [ITI TF-2: 3.20.4.1.1.1-1](https://profiles.ihe.net/ITI/TF/Volume2/ITI-20.html#3.20.4.1.1.1).

Note that the same audit message is recorded by both Supplier and Consumer. The difference being the Audit Source element. Both sides record to show consistency between message sent by the Supplier and action taken at the Consumer.

The actors involved shall record audit events according to the [Audit Event for Mobile Patient Identity Feed by the Supplier and Consumer](StructureDefinition-IHE.PMIR.Feed.Audit.md).

