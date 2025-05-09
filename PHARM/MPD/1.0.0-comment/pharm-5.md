This section corresponds to transaction [PHARM-5] of the IHE Technical Framework. Transaction [PHARM-5] is used by the [Medication Order Placer](actors-transactions.html#order-placer) and the [Medication Order Receiver](actors-transactions.html#order-receiver) actors. The Submit Medication Order [PHARM-5] transaction is used to transmit a `MedicationRequest` - typically a prescription.

### X:Y.Z.1 Scope

The Submit Medication Order [PHARM-5] transaction passes a `MedicationRequest` from a [Medication Order Placer](actors-transactions.html#order-placer) to a [Medication Order Receiver](actors-transactions.html#order-receiver). The `MedicationRequest` can be:
* a single-line Prescription
* a prescription as part of a group of prescriptions
* a proposal, or a draft
* a not-yet-validated prescription or order
* a medication instance order
* ...

### X:Y.Z.2 Actors Roles

**Table X:Y.Z.2-1: Actor Roles**

| Actor | Role |
|-------------------+--------------------------|
| [Medication Order Placer](actors-transactions.html#order-placer) | Submits Medication Orders to the Medication Order Consumer |
| [Medication Order Receiver](actors-transactions.html#order-receiver) | Accepts Medication Orders from the Medication Order Placer |
{:.table-bordered}

### X:Y.Z.3 Referenced Standards

**FHIR-R5** [HL7 FHIR Release 5.0](http://www.hl7.org/FHIR/R5)

### X:Y.Z.4 Messages

<figure>
{% include pharm-5.svg %}
</figure>

**Figure X:Y.Z.4-1: Submit Medication Order Interactions**

#### X:Y.Z.4.1 Submit Medication Order Request Message

The [Medication Order Placer](actors-transactions.html#order-placer) submits a `MedicationRequest` resource using the HTTP `POST` or `PUT` method to the /MedicationRequest endpoint.

##### X:Y.Z.4.1.1 Trigger Events

This method is invoked When submitting a prescription or draft.

##### X:Y.Z.4.1.2 Message Semantics

The content type of the HTTP body shall be either `application/fhir+json` or `application/fhir+xml`.

The [Medication Order Placer](actors-transactions.html#order-placer) shall assure the request is consistent and actionable before sending.

###### X:Y.Z.4.1.2.1 Resource content

The Submit Medication Order is a `MedicationRequest` resource.  
The semantics of the request and data elements are captured in the [MedicationOrderModel](StructureDefinition-IHEMedicationOrderModel.html) and the technical specification in the [MedicationOrder](StructureDefinition-IHEMedicationOrder.html) profile.

##### X:Y.Z.4.1.3 Expected Actions

Upon receiving the `MedicationRequest`, the [Medication Order Receiver](actors-transactions.html#order-receiver) is expected to store and/or forward the order.

#### X:Y.Z.4.2 Submit Medication Order Response

The [Medication Order Receiver](actors-transactions.html#order-receiver) **SHALL** return an HTTP Status code appropriate to the processing outcome.

##### X:Y.Z.4.2.1 Trigger Events

This response is always expected and provides the [Medication Order Placer](actors-transactions.html#order-placer) with acknowledgement of the request including any technical issues.

##### X:Y.Z.4.2.2 Message Semantics

* On success: `201 (Created)`
* On error: `Appropriate error code`

###### X:Y.Z.4.2.2.1 Resource content


The response shall contain the resource created from the request, including the `id`, `version`, etc. assigned by the server.


In case of error, the response SHALL contain an `OperationOutcome`.

##### X:Y.Z.4.2.3 Expected Actions

Upon receiving the response, the [Medication Order Placer](actors-transactions.html#order-placer) can persist the `id`, `status`, or trigger any issue resolution if needed.