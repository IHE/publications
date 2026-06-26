## PHARM-12: Query Medication Resources

### Scope

The **Query Medication Resources** transaction [PHARM-12] allows a **Medication Overview Consumer** to search a **Medication Overview Responder** for the FHIR resources constituting a patient's medication overview.

The response is a FHIR searchset `Bundle`. The Responder SHALL return medication resources matching the query parameters. The exact set of resource types returned depends on the query — the Consumer may ask for:

- **Treatment lines only** — `MedicationTreatmentLine` (MedicationStatement) resources, which are the clinician-determined treatment lines; the mandatory content of any medication overview.
- **Patient-reported statements** — `MedicationStatement` resources representing self-reported usage that are not (yet) reconciled into a treatment line.
- **Both** — when the Consumer wants the full picture including both treatment lines and patient-reported data.
- **Related workflow resources** — `MedicationRequest`, `MedicationDispense`, `MedicationAdministration` linked to the above, via `_include`/`_revinclude`.
- **A named List** — via `_list`, to retrieve a pre-defined or server-maintained list of resources (e.g. a patient's active medication list, a discharge list).

This transaction is appropriate for live, current-state queries — displaying a patient's active medication list, feeding clinical decision support, or synchronising medication data between systems.

For pre-assembled overviews, see [PHARM-11](PHARM-11.html).

---

### Actors and Roles

| Actor | Role |
|---|---|
| **Medication Overview Consumer** | Initiates the query; processes the searchset response |
| **Medication Overview Responder** | Receives the query; returns matching resources |

---

### Referenced Standards

- HL7 FHIR R5 — RESTful search interactions (`search-type`), `List` resource, `_list` search parameter
- IHE ITI Appendix Z — FHIR Common Implementation Material (patient identity, error handling)
- IHE ITI IUA — Authorization token (grouping requirement)
- IHE ITI ATNA — Audit trail (grouping requirement)

---

### Interaction Diagram

<div>
<img alt="Figure: PHARM-12 Query Medication Resources" src="PHARM-12.png" width="70%">
</div>

---

### Request Message

#### HTTP Verb and Endpoint

Primary resource query:
```
GET [base]/MedicationStatement?[parameters]
```

List-based query (retrieve a named or server-defined medication list):
```
GET [base]/MedicationStatement?_list=[list-id]&[parameters]
GET [base]/List?patient=[ref]&code=[list-type-code]
```

---

#### Required Query Parameters

| Parameter | Type | Notes |
|---|---|---|
| `patient` | `reference` | **Required.** The patient whose medication overview is requested. Supports local reference (`Patient/[id]`) or identifier token (`patient.identifier=[system]\|[value]`). |

---

#### Filter Parameters

| Parameter | Type | Description |
|---|---|---|
| `status` | `token` | Filter by resource status (e.g. `active`, `completed`, `stopped`). Multiple values are OR'd. |
| `effective` | `date` | Filter by the effective period. Supports `gt`, `lt`, `ge`, `le` prefixes. |
| `category` | `token` | Filter by medication list category / list type. See ValueSet (open issue [#42](https://github.com/IHE/pharm-meow/issues/42)). |
| `_lastUpdated` | `date` | Filter resources modified since a given instant. Supports incremental synchronisation. |

---

#### Statement Type Parameter

A key distinction in MEOW is between two kinds of `MedicationStatement`:

| Type | Description | Profile |
|---|---|---|
| **Treatment line** | Clinician-determined treatment item; the central entity of the medication overview. May link to prescriptions, dispenses, administrations. | [MedicationTreatmentLine](StructureDefinition-MedicationTreatmentLine.html) |
| **Patient-reported statement** | Self-reported medication use; not yet reconciled into a treatment line. | Base `MedicationStatement` |

The Consumer uses the `category` parameter to select which type to retrieve:

```
// Treatment lines only
GET [base]/MedicationStatement?patient=Patient/123&category=treatment-line

// Patient-reported statements only
GET [base]/MedicationStatement?patient=Patient/123&category=patient-reported

// Both (full picture)
GET [base]/MedicationStatement?patient=Patient/123
```

> **Open issue:** The code values for the `category` slice that distinguishes treatment lines from patient-reported statements need to be defined in a ValueSet. This is related to issue [#42](https://github.com/IHE/pharm-meow/issues/42).

---

#### List-Based Queries

The Consumer MAY use the `_list` parameter or query the `List` resource directly to retrieve a named, server-defined medication list rather than performing an open search.

This supports scenarios where the Responder maintains named lists such as:
- The patient's current active medication list
- The discharge medication list from a specific encounter
- A reconciled medication list produced at a specific date

```
// Retrieve resources belonging to a known List
GET [base]/MedicationStatement?patient=Patient/123&_list=List/456

// Find available medication lists for a patient
GET [base]/List?patient=Patient/123&code=http://loinc.org|10160-0

// Retrieve all resources in a List by expanding it
GET [base]/List/456?_include=List:item
```

The Responder MAY maintain lists automatically (e.g. a continuously updated "active medication list" per patient) or MAY require the Consumer to discover list identifiers via a prior `List` search.

---

#### Include Parameters (Related Resources)

| Parameter | Direction | Resources returned |
|---|---|---|
| `_include=MedicationStatement:medication` | forward | `Medication` product details |
| `_include=MedicationStatement:derivedFrom` | forward | `MedicationRequest` (prescriptions), `MedicationDispense`, `MedicationAdministration`, or other resources the treatment line is linked to |
| `_include=MedicationStatement:partOf` | forward | `CarePlan` (`MedicationTreatment` groupings) |
| `_revinclude=MedicationDispense:prescription` | reverse | `MedicationDispense` linked to returned prescriptions |
| `_revinclude=MedicationAdministration:request` | reverse | `MedicationAdministration` linked to returned prescriptions |

The Responder SHALL support the includes it declares in its CapabilityStatement. Unsupported includes SHALL NOT cause an error — the Responder returns base resources and MAY include an `OperationOutcome` noting the unsupported parameter.

---

#### Example Requests

All active treatment lines:
```
GET [base]/MedicationStatement?patient=Patient/123&category=treatment-line&status=active
```

Treatment lines with their prescriptions and dispenses:
```
GET [base]/MedicationStatement?patient=Patient/123&category=treatment-line
    &_include=MedicationStatement:derivedFrom
    &_revinclude=MedicationDispense:prescription
```

Full picture — treatment lines and patient-reported statements, with grouping:
```
GET [base]/MedicationStatement?patient=Patient/123
    &_include=MedicationStatement:partOf
    &_include=MedicationStatement:medication
```

All resources in a named active medication list:
```
GET [base]/MedicationStatement?patient=Patient/123&_list=List/active-meds-123
    &_include=MedicationStatement:derivedFrom
```

Using a national patient identifier:
```
GET [base]/MedicationStatement
    ?patient.identifier=urn:oid:2.16.840.1.113883.2.51.1|A123456789
    &category=treatment-line&status=active
```

---

### Response Message

#### Success — `200 OK`

A `Bundle` of type `searchset` is returned.

- `Bundle.total` reflects the count of matching `MedicationStatement` resources (not includes).
- `MedicationTreatmentLine` resources SHALL conform to [MedicationTreatmentLine](StructureDefinition-MedicationTreatmentLine.html).
- Included `CarePlan` resources SHALL conform to [MedicationTreatment](StructureDefinition-MedicationTreatment.html).
- Included `Medication` resources SHALL conform to [IHEMedication](StructureDefinition-IHEMedication.html).
- Included `MedicationRequest`, `MedicationDispense`, `MedicationAdministration` MAY conform to profiles from [IHE PHARM MPD](https://profiles.ihe.net/PHARM/MPD) where applicable.

#### No Results — `200 OK`

An empty `Bundle` (`total = 0`). The Responder SHALL NOT return `404` when there are simply no matching resources for a valid patient.

#### Errors

| HTTP Status | Meaning |
|---|---|
| `400 Bad Request` | Missing required `patient` parameter, or malformed query |
| `401 Unauthorized` | Missing or invalid IUA authorization token |
| `403 Forbidden` | Requester is not authorized to access this patient's data |
| `404 Not Found` | Patient reference or List id cannot be resolved |
| `422 Unprocessable Entity` | Query is syntactically valid but semantically rejected |

All error responses SHALL include an `OperationOutcome`.

---

### Expected Actions

#### Medication Overview Responder

- SHALL reject requests missing the `patient` parameter with `400 Bad Request`.
- SHALL return `MedicationStatement` resources matching the query parameters for the identified patient.
- SHALL support the `category` parameter to distinguish treatment lines from patient-reported statements.
- SHOULD support `_list` parameter to allow retrieval of named medication lists.
- SHALL perform patient identity resolution per IHE ITI Appendix Z.
- SHALL honour `_include` and `_revinclude` parameters declared in its CapabilityStatement.
- SHALL record an ATNA PHI-query audit event per transaction.
- SHALL NOT return resources belonging to patients other than the one specified.

#### Medication Overview Consumer

- SHALL include the `patient` parameter on every request.
- SHALL be capable of processing a mixed-type searchset `Bundle`.
- SHALL handle an empty result set without treating it as an error.
- SHALL handle `OperationOutcome` entries in the response appropriately.
- SHALL present an IUA authorization token when accessing a protected endpoint.

---

### CapabilityStatement Requirements

The Medication Overview Responder actor SHALL declare the following in its CapabilityStatement:

```json
{
  "type": "MedicationStatement",
  "interaction": [
    { "code": "search-type" },
    { "code": "read" }
  ],
  "searchParam": [
    { "name": "patient",      "type": "reference", "documentation": "Required" },
    { "name": "status",       "type": "token" },
    { "name": "effective",    "type": "date" },
    { "name": "category",     "type": "token", "documentation": "Used to distinguish treatment lines from patient-reported statements" },
    { "name": "_list",        "type": "special", "documentation": "Retrieve resources belonging to a named List" }
  ],
  "searchInclude": [
    "MedicationStatement:medication",
    "MedicationStatement:derivedFrom",
    "MedicationStatement:partOf"
  ],
  "searchRevInclude": [
    "MedicationDispense:prescription",
    "MedicationAdministration:request"
  ]
}
```

If `List`-based queries are supported:
```json
{
  "type": "List",
  "interaction": [
    { "code": "search-type" },
    { "code": "read" }
  ],
  "searchParam": [
    { "name": "patient", "type": "reference" },
    { "name": "code",    "type": "token" }
  ]
}
```

---

### Security Considerations

- All exchanges SHALL use TLS (HTTPS).
- The Consumer SHALL present an IUA access token scoped to the patient being queried.
- The Responder SHALL enforce patient-level access control.
- Both actors SHALL record ATNA PHI-query audit events per transaction.

---

### Open Issues

| Issue | Description |
|---|---|
| [#42](https://github.com/IHE/pharm-meow/issues/42) | Define `category` ValueSet including treatment-line vs. patient-reported distinction and list type codes |
| [#37](https://github.com/IHE/pharm-meow/issues/37) | Clarify Must Support implications for returned resource types |
| [#19](https://github.com/IHE/pharm-meow/issues/19) | Routes of administration binding |
| [#16](https://github.com/IHE/pharm-meow/issues/16) | Decide whether `_revinclude` for MedicationAdministration is mandatory |
| — | Define mandatory vs. optional support level for each `_include`/`_revinclude` |
| — | Specify how the Responder signals which `List` resources it maintains per patient |
