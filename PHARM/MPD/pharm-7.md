This section corresponds to transaction [PHARM-7] of the IHE Technical Framework. Transaction [PHARM-7] is used by the [Medication Order Consumer](actors-transactions.html#order-consumer) and the [Medication Order Responder](actors-transactions.html#order-responder) actors. The Retrieve Medication Orders [PHARM-7] transaction is used to obtain MedicationRequests for further handling - for example gettting a prescription for dispense.

### X:Y.Z.1 Scope

The Retrieve Medication Orders [PHARM-7] transaction allows the [Medication Order Consumer](actors-transactions.html#order-consumer) to query the [Medication Order Responder](actors-transactions.html#order-responder) for medication orders.
* ...

### X:Y.Z.2 Actors Roles

**Table X:Y.Z.2-1: Actor Roles**

| Actor | Role |
|-------------------+--------------------------|
| [Medication Order Consumer](actors-transactions.html#order-consumer) | Queries existing medication orders from the Order Responder |
| [Medication Order Responder](actors-transactions.html#order-responder) | Provides access to stored medication orders |
{:.table-bordered}

### X:Y.Z.3 Referenced Standards

**FHIR-R5** [HL7 FHIR Release 5.0](http://www.hl7.org/FHIR/R5)

### X:Y.Z.4 Messages

<figure>
{% include pharm-7.svg %}
</figure>

**Figure X:Y.Z.4-1: Retrieve Medication Orders Interactions**

#### X:Y.Z.4.1 Retrieve Medication Orders Request Message

The [Medication Order Consumer](actors-transactions.html#order-consumer) submits a query using the HTTP `GET` or `POST` method to the /MedicationRequest endpoint or to the /RequestGroup, with the search parameters indicated below.
Alternatively, the [Medication Order Consumer](actors-transactions.html#order-consumer) can submit a query using the HTTP `GET` or `POST` method to the / endpoint with the `_type` search parameter populated - either `_type=MedicationRequest`, `_type=RequestGroup`, or both - `_type=MedicationRequest,RequestGroup`.

##### X:Y.Z.4.1.1 Trigger Events

This method is invoked when needing to view or process prescriptions, for example when selecting a medication for dispense.

##### X:Y.Z.4.1.2 Message Semantics

Search parameters that **SHALL** be supported:

- **`group-or-identifier`** Single search on both request.identifier or groupIdentifier - this is important to check for prescriptions where the prescription ID is known but it is not known if the prescription has one or multiple lines
- **`activity-resource`** - Search on the resources that are linked to a RequestGroup - important to allow for example _revInclude
- **`identifier`** — Search by the identifier of the MedicationRequest.  
- **`patient`** — Search by the patient subject of the MedicationRequest.  
- **`status`** — Filter MedicationRequests by their status (e.g., active, completed).  
- **`intent`** — Filter by the intent of the MedicationRequest (e.g., order, plan).  


###### X:Y.Z.4.1.2.1 Resource content
* The Submit Medication Order is a `MedicationRequest` resource.
The semantics of the request and data elements are captured in the [Submit Medication Order Data Model](StructureDefinition-IHEMedicationOrderModel.html) and the technical constraints in the [Submit Medication Order](StructureDefinition-IHEMedicationOrder.html) profile.


The Retrieve Medication Orders is a search query. 

##### X:Y.Z.4.1.3 Expected Actions

Upon receiving the `MedicationRequest`, the [Medication Order Responder](actors-transactions.html#order-responder) is expected to respond with the orders if the conditions are met:
* The search parameters match
* The resources can be accessed i.e. they are not restricted to the [Medication Order Consumer](actors-transactions.html#order-consumer)


#### X:Y.Z.4.2 Retrieve Medication Orders Response

The [Medication Order Responder](actors-transactions.html#order-responder) **SHALL** respond with a Search `Bundle`, containing the resources that correspond to the search and can be accessed (e.g. are allowed by any access control mechanisms).

##### X:Y.Z.4.2.1 Trigger Events

The response is always expected.

##### X:Y.Z.4.2.2 Message Semantics

The Response **SHALL** be a search `Bundle` containing the MedicationRequests (optionally RequestGroups if that is part of the search). 

###### X:Y.Z.4.2.2.1 Resource content

The content of the MedicationRequests in the Bundle **SHALL** conform to the profiles defined in the [MedicationOrder](StructureDefinition-IHEMedicationOrder.html) profile.

In case of error, the response **SHALL** contain an `OperationOutcome`.

##### X:Y.Z.4.2.3 Expected Actions

Upon receiving the response, the [Medication Order Consumer](actors-transactions.html#order-consumer) can will store, process or initiate handling of the orders as part of the business process.