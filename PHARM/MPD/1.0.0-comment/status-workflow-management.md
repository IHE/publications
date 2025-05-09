One of the fundamental aspects in implementing prescription systems is the status management or workflow management. This commonly includes requirements and concepts such as that expressed as "prescription status" or other designations.

The scope of the workflows varies widely:
* Community prescription vs hospital prescription
* Pre-authorization, co-signing,...
* Tracking of execution - including dispense or even administration
* Different status types - ordering, billing, etc.
* Different jurisdictional constraints and expectations.

Trying to achieve a common set of "statuses" across the different dimensions seems unlikely and may not even be desirable, with possibly conflicting and overlapping definitions. Even the term "status" is not semantically clear on its meaning.

IHE documentation has expressed some simplifications by projecting a common set of statuses, but also explored clearer definitions either separation of status (using HL7 V2 and its limitations) and status management with the introduction of workflow management (XDW).

* **"status" usually refers to <span style="text-decoration: underline">status of execution</span>** - i.e. the status of the actions that are triggered by an order. This is sometimes called "status of prescription".
  * These actions can be as diverse as dispense, billing, or administration - several aspects of the workflow that may need to be tracked.

*  **"Status of prescription** or **Status of order** is the status of the authorization - i.e. whether it is draft, or actionable, or no longer actionable.

FHIR separates these concepts and uses different attributes.
One of the principles for workflow management in FHIR is that the request is only updated by the order placer.

| Concept | descripition | FHIR |
|--|--|-----|
|Order status |Status of the order itself as authorization|MedicationRequest.status|
|Execution status |Status of the execution actions|Task.businesStatus|
{:.table-bordered}

This separation allows this specification to allow interoperability between systems.

* Order status has a limited and common set of status, determining whether the order is actionable or not. This is clear and unambiguous for allowing interoperability.
* Several workflow statuses may exist, and they may refer to different parts of the process
  * It is common that "execution status" is a combined value set which combines statuses of dispensing, administration, etc.
  * While it is likely impossible to have a single common and agreed set of statuses, having the separate aspects of the workflow allows parties to exchange their status as they intend.

### Order Status
* The status of the order or authorization is in `MedicationRequest.status`, and can be one of the values in [MedicationRequest Status](https://hl7.org/fhir/valueset-medicationrequest-status.html):
<figure>
  {% include order-statuses.svg %}
</figure>

* `MedicationRequest.statusReasons` is intended to capture the **reasons** for a status, and **NOT** the details of the status nor additional status. For example `expired` is not a detailed status, it is a reason why a prescription is no longer actionable (i.e. it is `stopped`). Statuses like `in preparation` or `in-dispensation` would not be reasons for changing if an authorization's status, and therefore would not be adequate values for statusReason.


### Execution status
The **statuses of execution** can be captured in 
* `completed` is a status of the [MedicationRequest](https://hl7.org/fhir/MedicationRequest.html). This is an authorization status that is derived from the execution - this status is determined by the placer from the execution tasks
* `MedicationDispense.status` captures the status of a dispense.
* `MedicationAdministration.status` captures the status of an administration event or set of events.
* `Task.businessStatus` captures the progress of the execution of activities. 
(need picture - showing that a request may have one workflow, one wrkflow with children workflows, or several independent workflows)


