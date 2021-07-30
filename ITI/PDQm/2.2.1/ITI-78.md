This section corresponds to transaction [ITI-78] of the IHE Technical Framework. Transaction [ITI-78] is used by the Patient Demographics Consumer and Patient Demographics Supplier Actors. The [ITI-78] transaction is used to query on patient identity information and get back resulting Patient resources.

### 2:3.78.1 Scope

This transaction is used by the Patient Demographics Consumer to solicit information about patients whose demographics data match data provided in the query parameters on the request message. The request is received by the Patient Demographics Supplier. The Patient Demographics Supplier processes the request and returns a response in the form of demographics information for the matching patients.

### 2:3.78.2 Actors Roles

**Table: Actor Roles**

|Actor | Role |
|---|---|
| Patient Demographics Consumer | Requests a list of patients matching the supplied set of demographics criteria (example: ID or Name) from the Patient Demographics Supplier. The Patient Demographics Consumer populates its attributes with demographic information received from the Patient Demographics Supplier. |
| Patient Demographics Supplier | Returns demographic information for all patients matching the demographics criteria provided by the Patient Demographics Consumer |
{:.grid}

### 2:3.78.3 Referenced Standards

* [HL7 FHIR Release 4](http://www.hl7.org/FHIR/R4)

### 2:3.78.4 Messages

<div>
{%include ITI-78-seq.svg%}
</div>

<div style="clear: left"/>

**Figure: 3.78.4-1: Interaction Diagram**


#### 2:3.78.4.1 Query Patient Resource message
This message represents an HTTP GET parameterized query from the Patient Demographics Consumer to the Patient Demographics Supplier.
##### 2:3.78.4.1.1 Trigger Events
When a Patient Demographics Consumer needs to select a patient based on demographic information about patients whose information matches a minimal set of known data, it issues a Query Patient Resource.
##### 2:3.78.4.1.2 Message Semantics
The Query Patient Resource is conducted by the Patient Demographics Consumer by executing an HTTP GET against the Patient Demographics Supplier’s Patient Resource URL.
The search target follows the FHIR http specification, addressing the Patient Resource type  [http://hl7.org/fhir/R4/http.html](http://hl7.org/fhir/R4/http.html):

    GET [base]/Patient?<query>

This URL is configurable by the Patient Demographics Supplier and is subject to the following constraints. The `<query>` represents a series of encoded name-value pairs representing the filter for the query specified below, as well as control parameters to modify the behavior of the Patient Demographics Supplier such as response format, or pagination.

##### 2:3.78.4.1.2.1 Query Search Parameters
The Patient Demographics Consumer may supply, and the Patient Demographics Supplier shall be capable of processing, all query parameters listed below. All query parameter values shall be appropriately encoded per [RFC3986](https://tools.ietf.org/html/rfc3986) “percent” encoding rules. Note that percent encoding does restrict the character set to a subset of ASCII characters which is used for encoding all other characters used in the URL.
Patient Demographics Suppliers may choose to support additional query parameters beyond the subset listed below. Any additional query parameters supported shall be supported according to the core FHIR specification. Such additional parameters are considered out of scope for this transaction. Any additional parameters not supported should be ignored, See [http://hl7.org/fhir/R4/search.html#errors](http://hl7.org/fhir/R4/search.html#errors).

Parameter | definitions
---|---
`_id` |This parameter of type string, when supplied, represents the resource identifier for the Patient Resource being queried. See [ITI TF-2:Appendix Z.2.3](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.2-query-parameters) for use of the `string` data type. Note: A search using `_id` is always an exact match search.
`active` | This parameter of type `token`, when supplied, specifies the active state. The active state indicates whether the patient record is active. Note: use `active=true`
`family` and `given` | These parameters of type `string`, when supplied, specify the name of the person whose information is being queried. For this parameter the Patient Demographics Consumer may use either family name, given name or a combination of both names to filter by family, given or family and given names respectively. See [ITI TF-2:Appendix Z.2.3](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.2-query-parameters) for use of the `string` data type.
`identifier` | This repeating parameter of type `token`, when supplied, specifies an identifier associated with the patient whose information is being queried (e.g., a local identifier, account identifier, etc.). See [ITI TF-2:Appendix Z.2.2](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.2-query-parameters) for use of the `token` data type. If multiple instances of this parameter are provided in the query, the query represents a logical AND condition (i.e., all of the associated identifiers must match). For example, a query searching for patients having identifier145 assigned by authority “1.2.3.4” and SSN 123456789 would be represented as:<br /> `?identifier=urn:oid:1.2.3.4|145&identifier=urn:oid:2.16.840.1.113883.4.1|123456789` <br />If no `system` portion of the identifier parameter is specified, then the matching would be performed on any identifier regardless of issuing system. The `identifier` specified in this parameter is expressed using the `token` search parameter type. Please see [ITI TF-2:Appendix Z.2.2](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.2-query-parameters) for use of the `token` data type for patient identifiers.
`telecom` | This parameter of type `token`, when supplied, specifies the telecommunications details
`birthdate` | This parameter of type `date`, when supplied, specifies the birth date of the person whose information is being queried. The Patient Demographics Consumer shall use the date and interval mechanism to indicate a specific date of birth or a date that lies within the range specified by the parameter. See [http://hl7.org/fhir/R4/search.html#date](http://hl7.org/fhir/R4/search.html#date)
`address` | This parameter of type `string`, when supplied, specifies one or more address parts associated with the person whose information is being queried. For details on matching rules, see [ITI TF-2:Appendix Z.2.3](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.2-query-parameters).
`address-city`,<br /> `address-country`,<br /> `address-postalcode`,<br /> `address-state` | These parameters of type `string`, when supplied, specify a match against the specified address part associated with the person whose information is being queried. Note that national conventions for addresses may affect utility of these fields.
`gender` | This parameter of type `token`, when supplied, specifies the administrative gender of the person whose information is being queried. For this parameter item, a single administrative gender code from value set http://hl7.org/fhir/R4/valueset-administrative-gender.html shall be specified as the only value of the token. See [ITI TF-2:Appendix Z.2.2](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.2-query-parameters) for use of the `token` data type.
{:.grid}

For example 
```
GET https://server.example.com/fhir/Patient?family=MOHR&given=ALICE&active=true&gender=female
Accept: application/fhir+json; fhirVersion=4.0
```

###### 2:3.78.4.1.2.2 Pediatric Demographics Option
Additional notes are available in FHIR on mother and newborn relationship, see [http://hl7.org/fhir/R4/patient.html#maternity](http://hl7.org/fhir/R4/patient.html#maternity) Patient Demographics Suppliers supporting the Pediatric Demographics Option shall support the `mothersMaidenName` search extension.
Patient Demographics Consumers supporting the Pediatric Demographics Option may use the additional mothersMaidenName search extension and the additional elements returned by the Patient Demographics Suppliers. See [ITI TF 1: 38.2.1 Pediatric Demographics Option](actor_options.html#peddemoopt).

###### 2:3.78.4.1.2.3 Parameter Modifiers
Patient Demographics Suppliers shall support the `“:exact”` parameter modifier on all query parameters of type string. When supplied by the Patient Demographics Consumer, the `“:exact”` parameter modifier instructs the Patient Demographics Supplier that exact matching should be performed.
The Patient Demographics Consumer should not use, and Patient Demographics Supplier may ignore, any additional parameter modifiers listed in the FHIR standard, which are considered out of scope in the context of this transaction

###### 2:3.78.4.1.2.4 Populating Which Domains are Returned <a name="domainpop"> </a>
The Patient Demographics Consumer may constrain the domains from which patient identifiers are returned from the Patient Demographics Supplier in the resulting bundle. The Patient Demographics Consumer shall convey this by specifying the patient identity domains in the system component of repeating `identifier` parameters using the OR format:

    &identifier=urn:oid:1.2.3|,urn:oid:4.5.6|

For example, a Patient Demographics Consumer wishing to filter for patients with a last name of SMITH having identifiers from an identity domain with OID 1.2.3.4.5 would convey this search as:

	  ?family=SMITH&identifier=urn:oid:1.2.3.4.5|

The Patient Demographics Consumer shall populate the patient identity domain portion of the token with values described in [ITI TF-2:Appendix E](https://profiles.ihe.net/ITI/TF/Volume2/ch-E.htm).

###### 2:3.78.4.1.2.5 Populating Expected Response Format <a name="format"> </a>
The FHIR standard provides encodings for responses as either XML or JSON. Patient Demographics Suppliers shall support both message encodings, whilst Patient Demographics Consumers shall support one and may support both.
See [ITI TF-2:Appendix Z.6 for details](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format).

#### 2:3.78.4.1.3 Expected Actions
The Patient Demographics Supplier shall return demographic records that reflect the match to all of the search criteria provided by the Patient Demographics Consumer. The Patient Demographics Supplier shall respond with a Query Patient Resource Response message synchronously (i.e., on the same connection as was used to initiate the request).

The Patient Demographics Supplier shall return all exact matches to the query parameters sent by the Patient Demographics Consumer; IHE does not further specify matching requirements. The Patient Demographics Supplier may be able to perform other string matching (e.g., case insensitive, partial matches, etc.) which shall be indicate in its CapabilityStatement Resource (see [ITI TF-2:Appendix Z.4](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.4-structuredefinition-resource)).

The information provided by the Patient Demographics Supplier to the Patient Demographics Consumer is a list of matching patients from the Patient Demographics Supplier’s information source. The mechanics of the matching algorithms used are internal to the Patient Demographics Supplier and are outside the scope of this framework.

The Patient Demographics Supplier shall support at least one patient identifier domain and may support multiple identifier domains. Section [3.78.4.1.2.4](#domainpop) describes how the Patient Demographics Consumer may filter results based on identifiers from one or more patient identifier domains. Query responses may return patient identifiers from one or multiple patient identifier domains.

See [ITI TF-2:Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format) for more details on response format handling. See [ITI TF-2:Appendix Z.7](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.7-guidance-on-access-denied-results) for guidance for Access Denied.

The Patient Demographics Supplier shall respond to the query request as described by the following cases with a Query Patient Resource Response message described in Section 3.78.4.2, and shall behave according to the cases listed below:

**Case 1**: The Patient Demographics Supplier finds in its information source at least one patient record matching the criteria sent as HTTP query parameters. No patient identifier domains are requested via the mechanism specified as specified in Section [3.78.4.1.2.4](#domainpop).

`HTTP 200` (OK) is returned as the HTTP status code.

A Resource Bundle is returned representing the result set. The Patient Demographics Supplier populates the `total` property of the bundle with the total number of matching results. One `entry` is returned from the Patient Demographics Supplier for each Patient Resource found.

**Case 2**: The Patient Demographics Supplier finds at least one patient record matching the criteria sent in the query parameters. One or more patient identifier domains are requested via the mechanism specified in Section [3.78.4.1.2.4](#domainpop), and Patient Demographics Supplier recognizes all domains.

`HTTP 200` (OK) is returned as the HTTP status code.

The Patient Demographics Supplier performs its matching and returns a bundle as described in Case 1. The Patient Demographics Supplier eliminates identifiers from the result set which do not exist in the list specified per Section [3.78.4.1.2.4](#domainpop) (domains to be returned). If all entries in the list of patient identifiers are eliminated, which would leave the patient identifiers list empty, then the entry shall not be present in the response bundle.

**Case 3**: The Patient Demographics Supplier fails to find in its information source, any patient record matching the criteria sent as HTTP query parameters.

`HTTP 200` (OK) is returned as the HTTP status code.

A Resource Bundle is returned representing the zero result set. The Patient Demographics Supplier populates the total with a value of 0 indicating no results were found. No `entry` attributes are provided in the result.

**Case 4**: The Patient Demographics Supplier does not recognize one or more of the domains specified per Section [3.78.4.1.2.4](#domainpop).

There are two different acceptable return results. Preferred response is a `HTTP 404` to indicate that the domain is not recognized, but a `HTTP 200` with an empty result is acceptable when the Patient Demographics Supplier cannot determine that the domain is not recognized.

An OperationOutcome Resource is returned indicating that the patient identity domain is not recognized in an `issue` having:

Attribute|Value
---|---
severity|error
code|not-found
diagnostics|“targetSystem not found”
{:.grid}

The OperationOutcome Resource may indicate the query parameter used and the domain in error within the `diagnostics` attribute. See FHIR discussion of search error handling [http://hl7.org/fhir/R4/search.html#errors](http://hl7.org/fhir/R4/search.html#errors)

**Case 5**: The Patient Demographics Supplier is not capable of producing a response in the requested format specified by _format parameter (specified in Section [3.78.4.1.2.5](#format)).

`HTTP 406` (Not Acceptable) is returned as the HTTP status code.

An OperationOutcome Resource is returned indicating that the requested response format is not supported in an issue having:

Attribute|Value
---|---
severity|error
code|not-supported
{:.grid}


The Patient Demographics Supplier may be capable of servicing requests for response formats not listed in Section [3.78.4.1.2.5](#format), but shall, at minimum, be capable of producing XML and JSON encodings.

The Patient Demographics Supplier may return other HTTP status codes to represent specific error conditions. When HTTP error status codes are returned by the Patient Demographics Supplier, they shall conform to the HTTP standard [RFC2616](https://tools.ietf.org/html/rfc2616). Their use is not further constrained or specified by this transaction.


#### 2:3.78.4.2 Query Patient Resource Response message


##### 2:3.78.4.2.1 Trigger Events

The Patient Demographics Supplier has results or error to report to the Patient Demographics Cnosumer. This may include finding zero or more patient demographics matching the query parameters specified by the Patient Demographics Consumer as a result of a Query Patient Resource Request. This may include errors or Access Denied.

##### 2:3.78.4.2.2 Message Semantics

The Query Patient Resource Response is sent from the Patient Demographics Supplier to the Patient Demographics Consumer as a Bundle of Patient Resources. The “content-type” of the response will depend upon the requested response format indicated by the Patient Demographics Consumer.

See [ITI TF-2:Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format) for more details on response format handling. See [ITI TF-2:Appendix Z.7](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.7-guidance-on-access-denied-results) for guidance for Access Denied.

###### 2:3.78.4.2.2.1 Patient Resource Definition in the Context of Query Patient Resource Response 

The Patient Resource(s) contained within the Query Patient Resource Response message should conform to [Patient Profile for PDQm](StructureDefinition-IHE.PDQm.Patient.html).

###### 2:3.78.4.2.2.2 Mother’s Maiden Name <a name="mmn"> </a>
Patient Demographics Suppliers shall include the mother’s maiden name, if known, in this extension: [http://hl7.org/fhir/R4/extension-patient-mothersmaidenname.html](http://hl7.org/fhir/R4/extension-patient-mothersmaidenname.html)

###### 2:3.78.4.2.2.3 Resource Bundling
Please see [ITI TF-2:Appendix Z.1](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.1-resource-bundles) for details on the IHE guidelines for implementing FHIR bundles.

###### 2:3.78.4.2.2.4 Incremental Response Processing - Paging of Resource Bundle
The Patient Demographics Supplier shall represent these incremental responses as specified in [FHIR Paging](http://hl7.org/fhir/R4/http.html#paging)

###### 2:3.78.4.2.2.5 Quality of Match
The Patient Demographics Supplier may convey the quality of each match based on strength of the particular result to the supplied query parameters. The mechanism for determining the confidence of match is considered a product specific feature and is not specified in this transaction.

If the Patient Demographics Supplier wishes to convey the quality of match, it shall represent the confidence of a particular match within the bundle as a score attribute. See FHIR Relevance section [http://hl7.org/fhir/R4/search.html#score](http://hl7.org/fhir/R4/search.html#score)


##### 2:3.78.4.2.3 Expected Actions

The constraints specified in Section [3.78.4.2.2](#2378422-message-semantics) represent the minimum set of demographics information that must be implemented by a Patient Demographics Supplier. This does not prevent the Patient Demographics Supplier from sending additional FHIR attributes in a response; such as extensions, text, etc. The Patient Demographics Consumer shall ignore additional attributes and extensions if not understood.

The consumer shall process the response in some manner specific to its application function (for example: displaying on a user interface). This application behavior is not specified by IHE. The Patient Demographics Consumer should be robust as the response may contain Patient Resources that match the query parameters but are not compliant with the PDQm constraints defined in [Patient Profile for PDQm](StructureDefinition-IHE.PDQm.Patient.html).

##### 2:3.78.4.2.4 CapabilityStatement Resource
Patient Demographics Suppliers implementing [ITI-78] shall provide a CapabilityStatement Resource as described in [ITI TF-2:Appendix Z.4](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.4-structuredefinition-resource) indicating the query interaction for the Patient Resource has been implemented and shall include all query parameters implemented for the Patient Resource.


#### 2:3.78.4.3 Retrieve Patient Resource message
This message represents an HTTP GET from the Patient Demographics Consumer to the Patient Demographics Supplier and provides a mechanism for retrieving a single Patient Resource with a known resource identifier.

##### 2:3.78.4.3.1 Trigger Events
When the Patient Demographics Consumer possesses a Patient Resource’s identifier (either through query, database lookup, or other mechanism) for which it requires additional or new information, it issues a Retrieve Patient Resource interaction.

##### 2:3.78.4.3.2  Message Semantics
The Retrieve Patient Resource is conducted by executing an HTTP GET against the Patient Demographics Supplier’s Patient Resource URL, providing the resource id of the patient being retrieved. The target is formatted as:

    GET [base]/Patient/[resourceId]

The Patient Demographics Supplier shall respond to this query by sending a single Patient Resource instance. The specification for `[base]` is identified in Section 3.78.4.1.2.

The `resourceId` included in the request always represents the unique identifier for the Resource within the scope of the URL. For example, while `http://example1.org/ihe/Patient/1` and `http://example2.com/ihe/Patient/1` both contain the same `[resourceId]`, they reference two different resource instances.

Note: The use of "http" or "https" in URL does not override requirements to use TLS for security purposes.

##### 2:3.78.4.3.3 Expected Actions
The Patient Demographics Supplier shall retrieve the demographic record indicated by the Resource identifier on the HTTP GET supplied by the Patient Demographics Consumer. The Patient Demographics Supplier shall respond to the retrieve request as described by the following cases:

**Case 1**: The Patient Demographics Supplier finds in its information source the patient demographics record matching the `resourceId` sent in the HTTP request.

`HTTP 200` (OK) is returned as the HTTP status code.

A Patient Resource is returned representing the result.

**Case 2**: The Patient Demographics Supplier fails to find in its information source the patient demographics record matching the `resourceId` sent in the HTTP request.

`HTTP 404` (Not Found) is returned as the HTTP status code

An `OperationOutcome` Resource is returned indicating that the Patient Resource could not be found, in an issue having:

Attribute|Value
---|---
severity|error
code|not-found
{:.grid}

The Patient Demographics Supplier may return other HTTP status codes to represent specific error conditions. When HTTP error status codes are returned by the Patient Demographics Supplier, they shall conform to the HTTP standard [RFC2616](https://tools.ietf.org/html/rfc2616). Their use is not further constrained or specified by this transaction.

#### 2:3.78.4.4 Retrieve Patient Resource Response message

The Patient Demographics Supplier’s response to a successful Retrieve Patient Resource message shall be an `HTTP 200` (OK) Status code with a Patient Resource, or an appropriate error code as defined in [Patient Profile for PDQm](StructureDefinition-IHE.PDQm.Patient.html).

##### 2:3.78.4.4.1 Trigger Events
The Patient Demographics Supplier found patient demographic record matching the Resource identifier specified by the Patient Demographics Consumer.

##### 2:3.78.4.4.2 Message Semantics
The Retrieve Patient Resource response is sent from the Patient Demographics Supplier to the Patient Demographics Consumer as a single Patient Resource. 

See [ITI TF-2:Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format) for more details on response format handling. See [ITI TF-2:Appendix Z.7](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.7-guidance-on-access-denied-results) for guidance for Access Denied.

If the Patient Demographics Supplier is unable to produce a response in the requested format, it shall respond with an `HTTP 400` error indicating that it was unable to fulfill the request. The Patient Demographics Supplier may be capable of servicing requests for response formats not listed, but shall, at minimum, be capable of producing XML and JSON encodings.

###### 2:3.78.4.4.2.1 Patient Resource Definition in the Context of Retrieve Patient Resource Response
The Patient Resource definition in the context of a retrieve interaction is the FHIR definition of the Patient Resource, see [http://hl7.org/fhir/R4/patient.html](http://hl7.org/fhir/R4/patient.html).

### 2:3.78.5 Security Considerations
See the general Security Consideration in [ITI TF-1: 38.5](security_considerations.html)

#### 2:3.78.5.1 Security Audit Considerations

The Mobile Patient Demographics Query Transaction is a Query Information event as defined in [Table 3.20.4.1.1.1-1](https://profiles.ihe.net/ITI/TF/Volume2/ITI-20.html#3.20.4.1.1.1). The Actors involved shall record audit events according to the following:

##### 2:3.78.5.1.1 Patient Demographics Consumer Audit

The Patient Demographics Consumer when grouped with ATNA Secure Node or Secure Application actor shall be able to record a [Patient Demographics Consumer AuditEvent](StructureDefinition-IHE.PDQm.Query.Audit.Consumer.html). [Audit Example for a PDQm Query transaction from consumer perspective](AuditEvent-ex-auditPdqmQuery-consumer.html).

##### 2:3.78.5.1.2 Patient Demographics Supplier Audit

The Patient Demographics Supplier when grouped with ATNA Secure Node or Secure Application actor shall be able to record a [Patient Demographics Supplier AuditEvent](StructureDefinition-IHE.PDQm.Query.Audit.Supplier.html). [Audit Example for a PDQm Query transaction from supplier perspective](AuditEvent-ex-auditPdqmQuery-supplier.html).