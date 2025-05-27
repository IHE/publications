
In some jurisdictions, a prescription is modeled as having only one line - one prescription means one medication. In other countries or models, a prescription is a group of medication lines. This is normally legally established, and it is important to support both these cases.

The IHE MPD profile provides a common model that supports both these cases. This allows different types of implementations to use IHE, and allows for interoperability between these different systems, understanding the data needs and assumptions.

The model describes the medication prescription and dispensing processes. It supports the two common scenarios:

1. **Single-line Prescriptions**: Each prescription corresponds to one line.
2. **Multi-line Prescriptions**: A prescription can contain multiple lines.

This diagram shows the two models side by side, and their correspondence:
<figure>
  {% include dm-order-single-multiline.svg %}
</figure>
<br clear="all"/>

### Main Differences
|Element | In IHEMedicationOrderModel | In IHEMultilineOrder | Notes|
|groupIdentifier | ✅ | ❌ | Present only in MedOrderModel|
|status, medication, etc. | ✅ (at root) | ✅ (under medicationLine) | 1 order vs multiline|
|indicationText | 0..* | 0..1 | cardinality difference|
|medicationLine | ❌ | ✅ | multilevel structure in multiline|
{:.table-bordered .table-striped .thead-light}


### Core Entities and Relationships:

- **Medication Product**: Denotes a specific medication product.
  
- **Prescription**: Represents an overall prescription. In single-line prescriptions, this entity is not used.

- **Prescription Line**: Detailed line item within a prescription.

- **Dispense**: The dispensation of a medication, always tied to a Prescription Line.




#### Relationship with Dispense:

- For multi-line prescriptions, a **Prescription** can contain multiple **Prescription Lines**.
- Both **Prescription Line** and **Dispense** refer to **Medication Product**.



### Compatibility

The two approaches are made compatible by using the same objects and relationships, and by putting the group as an identifier.

Systems processing prescriptions that uses a different approach can safely process data: 
* A system working with single-line prescriptions can see that the prescription line has a grouping and can optionally retrieve the entire group (prescription)

A Dispensation is always related to an individual Prescription Line.


### Coordinating several requests

Coordinating the execution of requests is done using the Task resource, as defined in the [Clinical Order Workflows Implementation Guide](https://hl7.org/fhir/uv/cow/2025May/using-task.html).

In some cases, dispenses for multiple prescription lines must be done in one single place or occasion. This drives the need for Task.focus to support multiple requests (one request for each prescription line). 

While prior to R6, `Task.focus` has cardinality 0..1, implementers can use a built-in extension mechanism that "imports" an element as an extension. In this case, the task.focus element is imported as an additional extension on Task, thus allowing task.focus to effectively point to several requests.

```
Profile: GroupCoordinationTask
Parent: Task
* extension contains http://hl7.org/fhir/4.0/StructureDefinition/extension-Task.focus named focus 0..* MS
```


