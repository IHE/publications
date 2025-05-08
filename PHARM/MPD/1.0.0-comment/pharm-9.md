This section corresponds to transaction [PHARM-9] of the IHE Technical Framework. Transaction [PHARM-9] is used by the [Dispense Consumer](actors-transactions.html#dispense-consumer) and the [Dispense Responder](actors-transactions.html#dispense-responder) actors. The Retrieve Medication Dispense [PHARM-9] transaction is used to transmit a `medicationDispense`.


This section corresponds to transaction [PHARM-9] of the IHE Technical Framework. Transaction [PHARM-9] is used by the [Dispense Consumer](actors-transactions.html#dispense-consumer) and the [Dispense Responder](actors-transactions.html#dispense-responder) actors. The Retrieve Dispense [PHARM-9] transaction is used to obtain MedicationRequests for further handling - for example gettting a prescription for dispense.

### X:Y.Z.1 Scope

The Retrieve Dispenses [PHARM-9] transaction allows the [Dispense Consumer](actors-transactions.html#dispense-consumer) to query the Dispense Responder for Dispenses.
* ...

### X:Y.Z.2 Actors Roles

**Table X:Y.Z.2-1: Actor Roles**

| Actor | Role |
|-------------------+--------------------------|
| [Dispense Consumer](actors-transactions.html#dispense-consumer) | Queries existing Dispenses from the Order Responder |
| [Dispense Responder](actors-transactions.html#dispense-responder) | Provides access to stored Dispenses |
{:.table-bordered}

### X:Y.Z.3 Referenced Standards

**FHIR-R5** [HL7 FHIR Release 5.0](http://www.hl7.org/FHIR/R5)

### X:Y.Z.4 Messages

<figure>
{% include pharm-9.svg %}
</figure>

**Figure X:Y.Z.4-1: Retrieve Dispenses Interactions**

#### X:Y.Z.4.1 Retrieve Dispenses Request Message

The [Dispense Consumer](actors-transactions.html#dispense-consumer) submits a query using the HTTP `GET` or `POST` method to the `/MedicationDispense` endpoint, with the search parameters indicated below. 
Alternatively, the [Dispense Consumer](actors-transactions.html#dispense-consumer) can submit a query using the HTTP GET or `POST` method to the `/` endpoint with the `_type` search parameter populated - `_type=MedicationDispense`.

##### X:Y.Z.4.1.1 Trigger Events

This method is invoked when needing to view or process prescriptions, for example when selecting a medication for dispense.

##### X:Y.Z.4.1.2 Message Semantics

Search parameters that **SHALL** be supported:  


- **`identifier`** — Search by the identifier of the MedicationRequest.  
- **`patient`** — Search by the patient subject of the MedicationRequest.  
- **`status`** — Filter MedicationRequests by their status (e.g., active, completed).  
- **`prescription`** — Filter by the prescription ID


###### X:Y.Z.4.1.2.1 Resource content

The Retrieve Dispense transaction is a search query. 

##### X:Y.Z.4.1.3 Expected Actions

Upon receiving the `MedicationRequest`, the [Dispense Responder](actors-transactions.html#dispense-responder) is expected to respond with the orders if the conditions are met:
* The search parameters match
* The resources can be accessed i.e. they are not restricted to the [Dispense Consumer](actors-transactions.html#dispense-consumer)


#### X:Y.Z.4.2 Retrieve Dispenses Response

The [Dispense Responder](actors-transactions.html#dispense-responder) **SHALL** respond with a Search `Bundle`, containing the resources that correspond to the search and can be accessed (e.g. are allowed by any access control mechanisms).

##### X:Y.Z.4.2.1 Trigger Events

The response is always expected.

##### X:Y.Z.4.2.2 Message Semantics

The Response **SHALL** be a search `Bundle` containing the MedicationRequests (optionally RequestGroups if that is part of the search).

###### X:Y.Z.4.2.2.1 Resource content


The content of the MedicationRequests in the `Bundle` **SHALL** conform to the profiles defined in the [MedicationOrder](StructureDefinition-IHEMedicationOrder.html) profile.

In case of error, the response **SHALL** contain an `OperationOutcome`.

##### X:Y.Z.4.2.3 Expected Actions

Upon receiving the response, the [Dispense Consumer](actors-transactions.html#dispense-consumer) can will store, process or initiate handling of the orders as part of the business process.
