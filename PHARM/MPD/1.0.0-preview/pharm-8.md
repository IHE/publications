This section corresponds to transaction [PHARM-8] of the IHE Technical Framework. Transaction [PHARM-8] is used by the [Dispense Reporter](actors-transactions.html#dispense-reporter) and the [Dispense Receiver](actors-transactions.html#dispense-receiver) actors. The Submit Medication Dispense [PHARM-8] transaction is used to transmit a `MedicationDispense`.

### X:Y.Z.1 Scope

The Submit Medication Dispense [PHARM-8] transaction passes a `MedicationDispense` from a [Dispense Reporter](actors-transactions.html#dispense-reporter) to a [Dispense Receiver](actors-transactions.html#dispense-receiver).

### X:Y.Z.2 Actors Roles

**Table X:Y.Z.2-1: Actor Roles**

| Actor | Role |
|-------------------+--------------------------|
| [Dispense Reporter](actors-transactions.html#dispense-reporter) | Submits dispense reports to the Dispense Receiver |
| [Dispense Receiver](actors-transactions.html#dispense-receiver) | Accepts and stores dispense reports from the Dispense Reporter |
{:.table-bordered}

### X:Y.Z.3 Referenced Standards

**FHIR-R5** [HL7 FHIR Release 5.0](http://www.hl7.org/FHIR/R5)

### X:Y.Z.4 Messages

<figure>
{% include pharm-8.svg %}
</figure>

**Figure X:Y.Z.4-1: Submit Medication Dispense Interactions**

#### X:Y.Z.4.1 Submit Medication Dispense Request Message

The [Dispense Reporter](actors-transactions.html#dispense-reporter) submits a MedicationDispense resource using the HTTP `POST` or `PUT` method to the /MedicationDispense endpoint.

##### X:Y.Z.4.1.1 Trigger Events

This method is invoked When medication is dispensed, partially dispensed, updated, or refused/declined.

##### X:Y.Z.4.1.2 Message Semantics

The content type of the HTTP body **SHALL** be either `application/fhir+json` or `application/fhir+xml`.

The [Dispense Reporter](actors-transactions.html#dispense-reporter) **SHALL** assure the Dispense record is consistent and actionable before sending.

###### X:Y.Z.4.1.2.1 Resource content

The content of the Submit Medication Dispense is a `MedicationDispense` resource.  
The semantics of the request and data elements are captured in the [IHE Medication Dispense Model](StructureDefinition-IHEMedicationDispenseModel.html) and the technical specification in the [IHEMedicationDispense](StructureDefinition-IHEMedicationDispense.html) profile.

##### X:Y.Z.4.1.3 Expected Actions

Upon receiving the `MedicationDispense`, the [Dispense Receiver](actors-transactions.html#dispense-receiver) is expected to store and/or forward the order.

#### X:Y.Z.4.2 Submit Medication Dispense Response

The [Dispense Receiver](actors-transactions.html#dispense-receiver) **SHALL** return an HTTP Status code appropriate to the processing outcome.

##### X:Y.Z.4.2.1 Trigger Events

This response is always expected and provides the [Dispense Reporter](actors-transactions.html#dispense-reporter) with acknowledgement including any technical issues.

##### X:Y.Z.4.2.2 Message Semantics

* On success: `201 (Created)`
* On error: `Appropriate error code`

###### X:Y.Z.4.2.2.1 Resource content


The response **SHALL** contain the resource created from the request, including the `id`, `version`, etc. assigned by the server.


In case of error, the response **SHALL** contain an `OperationOutcome`.

##### X:Y.Z.4.2.3 Expected Actions

Upon receiving the response, the [Dispense Reporter](actors-transactions.html#dispense-reporter) can persist the `id`, `status`, or trigger any issue resolution if needed.