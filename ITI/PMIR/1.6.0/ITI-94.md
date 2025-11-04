# 2:3.94 Subscribe to Patient Updates [ITI-94] - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* **2:3.94 Subscribe to Patient Updates [ITI-94]**

## 2:3.94 Subscribe to Patient Updates [ITI-94]

### 2:3.94.1 Scope

The Subscribe to Patient Updates transaction allows a Patient Identity Subscriber to subscribe to a Mobile Patient Resource Feed [ITI-93] depending on the requested criteria.

### 2:3.94.2 Actor Roles

**Table 2:3.94.2-1: Actor Roles**

| | |
| :--- | :--- |
| **Actor:** | Patient Identity Subscriber |
| **Description:** | Sends a Subscription request to the Patient Identity Registry |
| **Actor:** | Patient Identity Registry |
| **Description:** | Accepts a Subscription request and returns where the Subscription can be accessed |

### 2:3.94.3 Referenced Standards

* HL7 FHIR standard Release 4 [http://hl7.org/fhir/R4/index.html](http://hl7.org/fhir/R4/index.html)

### 2:3.94.4 Messages

The Patient Identity Registry shall support all these interactions. The Patient Identity Subscriber shall utilize the Subscribe to Patient Updates Request and may utilize other interactions as required by its application workflow.

**Figure 2:3.94.4-1: Interaction Diagram**

#### 2:3.94.4.1 Subscribe to Patient Updates Request Message

The Subscribe to Patient Updates message is a FHIR create operation on a Subscription Resource.

##### 2:3.94.4.1.1 Trigger Events

A Patient Identity Subscriber triggers a Subscribe to Patient Updates Request to a Patient Identity Registry according to the business rules in its system. These business rules are outside the scope of this transaction.

##### 2:3.94.4.1.2 Message Semantics

A Patient Subscriber initiates a FHIR create request using HTTP POST as defined at [https://www.hl7.org/fhir/R4/http.html#create](https://www.hl7.org/fhir/R4/http.html#create) on a Subscription Resource as defined at [https://www.hl7.org/fhir/R4/subscription.html](https://www.hl7.org/fhir/R4/subscription.html).

A Patient Identity Registry shall support accepting a request for both the JSON and the XML messaging formats as defined in FHIR. A Patient Subscriber shall send either the JSON or the XML messaging formats as defined in FHIR. See [ITI TF-2: Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format) for more details.

See [ITI TF-2: Appendix W](https://profiles.ihe.net/ITI/TF/Volume2/ch-W.html) for informative implementation material for this transaction.

###### 2:3.94.4.1.2.1 FHIR Subscription Resource Constraints

A Patient Identity Subscriber shall create a Subscription Resource. The Subscription Resource shall be further constrained as described in the [Subscription Profile for PMIR](StructureDefinition-IHE.PMIR.Subscription.Request.md).

###### 2:3.94.4.1.2.1.1 Criteria Constraints

The values for criteria enable Consumers to limit results based on what Patients they are concerned with.

The Patient Identity Subscriber shall support the ability to subscribe to the [Mobile Patient Identity Feed [ITI-93]](ITI-93.md) with at least one criteria. The Patient Identity Registry shall support processing subscriptions with all criteria. The criteria list includes:

* `Patient` – to subscribe to all Patient updates.
* `Patient?_id=X` – to subscribe to updates for a single Patient where X is the id of the Patient Resource.
* `Patient?organization=X` – to subscribe to updates for Patients related to a single Organization.
* `Patient?identifier=X` – to subscribe to updates for Patients based on their identifier. Since X is a token parameter type, a subscriber may limit by system, value, or both. See [http://hl7.org/fhir/R4/search.html#token](http://hl7.org/fhir/R4/search.html#token).

##### 2:3.94.4.1.3 Expected Actions

A Patient Identity Registry shall accept the request, and return an HTTP 201 response when the Subscription is created or an error code with an OperationOutcome if an error occurs as per [https://www.hl7.org/fhir/R4/http.html#create](https://www.hl7.org/fhir/R4/http.html#create).

A Patient Identity Registry shall store the Subscription Resource and manage the subscription to enable the [Mobile Patient Identity Feed [ITI-93]](ITI-93.md). How it creates and manages the subscription is not specified by IHE. When the subscription has been activated, the Subscription Resource status shall be changed to `active`.

If an error occurs at any time with an active subscription, the Patient Identity Registry shall update the Subscription Resource and set the status to `error` and the error element with the error message. The Patient Identity Subscriber may use the Get Patient Subscription Request to get the current status of the Subscription. See Section 2:3.94.4.3.

#### 2:3.94.4.2 Subscribe to Patient Updates Response

##### 2:3.94.4.2.1 Trigger Events

A Patient Identity Registry sends the Subscribe to Patient Updates Response to the Patient Subscriber when the subscription request is received.

##### 2:3.94.4.2.2 Message Semantics

A Patient Identity Registry responds to the Subscribe to Patient Updates Request with an HTTP Status of 201 with the Location header set to the created Subscription Resource or an error as defined at [https://www.hl7.org/fhir/R4/http.html#create](https://www.hl7.org/fhir/R4/http.html#create).

##### 2:3.94.4.2.3 Expected Actions

A Patient Identity Subscriber has received the response and continues with its workflow. It may maintain the returned id if the Subscription Resource needs to be queried, disabled, or deleted later.

#### 2:3.94.4.3 Get Patient Subscription Request/Response Message

A Patient Identity Subscriber can retrieve from the Patient Identity Registry the current details of a subscription by accessing the Location returned by the Subscribe to Patient Updates Response as defined at [https://www.hl7.org/fhir/R4/http.html#read](https://www.hl7.org/fhir/R4/http.html#read) on the Subscription Resource.

A Patient Identity Registry shall return the current Subscription Resource.

#### 2:3.94.4.4 Enable/Disable Patient Subscription Request/Response Message

A Patient Identity Subscriber can enable or disable a subscription on the Patient Identity Registry by accessing the Location returned by the Subscribe to Patient Updates Response as defined at [https://www.hl7.org/fhir/R4/http.html#update](https://www.hl7.org/fhir/R4/http.html#update) on the Subscription Resource. This can be used to temporarily disable the subscription by changing the status to `off` or re-enable a subscription by changing the status to `requested`.

A Patient Identity Registry shall disable a subscription when the status is `off`.

The Patient Identity Registry shall handle changes with a status of `requested` as per Section 2:3.94.4.1.3.

#### 2:3.94.4.5 Delete Patient Subscription Request/Response Message

A Patient Identity Subscriber can delete a subscription from the Patient Identity Registry by accessing the Location returned by the Subscribe to Patient Updates Response as defined at [https://www.hl7.org/fhir/R4/http.html#delete](https://www.hl7.org/fhir/R4/http.html#delete) on the Subscription Resource.

A Patient Identity Registry shall stop sending the Mobile Patient Identity Feed to the **Patient Identity Consumer endpoint defined in the Subscription.channel**.

### 2:3.94.5 Security Considerations

See [ITI TF-1: 49.5](volume-1.md#1495-pmir-security-considerations) for security considerations for the PMIR Profile.

See [ITI TF-2: Appendix Z.8](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations) for common mobile security considerations.

The subscription is made by the Patient Subscriber, which must be authorized at the Patient Identity Registry to request subscriptions. This authorization is valid at the time the Subscribe to Patient Update transaction request/response. The timeout associated with the client authorization does not impact the life of the subscription. However, the Patient Subscriber identity has no impact on the resulting Mobile Patient Identity Feed endpoint authentication or authorization. There is no communication of security credentials for the Mobile Patient Identity Feed transaction within the Subscribe to Patient Update transactions.

#### 2:3.94.5.1 Security Audit Considerations

The Subscribe to Patient Updates transaction is a REST Information event as defined in [ITI TF-2: 3.20.4.1.1.1-1](https://profiles.ihe.net/ITI/TF/Volume2/ITI-20.html#3.20.4.1.1.1).

Note that the same audit message is recorded by both Patient Identity Subscriber and Patient Identity Registry, the difference being the Audit Source element. Both actors audit this transaction to show consistency between the request by the Patient Identity Subscriber and the action taken by the Patient Identity Registry.

The actors involved shall record audit events according to the following:

* [Audit Event for Subscribe to Patient Updates Transaction by the Patient Identity Subscriber and Registry for Create](StructureDefinition-IHE.PMIR.Audit.Subscription.Create.md)
* [Audit Event for Subscribe to Patient Updates Transaction by the Patient Identity Subscriber and Registry for Read](StructureDefinition-IHE.PMIR.Audit.Subscription.Read.md)
* [Audit Event for Subscribe to Patient Updates Transaction by the Patient Identity Subscriber and Registry for Update](StructureDefinition-IHE.PMIR.Audit.Subscription.Update.md)
* [Audit Event for Subscribe to Patient Updates Transaction by the Patient Identity Subscriber and Registry for Delete](StructureDefinition-IHE.PMIR.Audit.Subscription.Delete.md)

