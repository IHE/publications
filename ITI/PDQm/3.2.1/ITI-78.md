# 2:3.78 Mobile Patient Demographics Query [ITI-78] - Patient Demographics Query for Mobile (PDQm) v3.2.1

* [**Table of Contents**](toc.md)
* **2:3.78 Mobile Patient Demographics Query [ITI-78]**

## 2:3.78 Mobile Patient Demographics Query [ITI-78]

This section corresponds to transaction [ITI-78] of the IHE Technical Framework. Transaction [ITI-78] is used by the Patient Demographics Supplier Actors and Patient Demographics Consumer Actors that support the Patient Search Option. The [ITI-78] transaction is used to query on patient identity information and get back resulting Patient resources.

Note: Examples on this page use either the HTTP or HTTPS scheme. Examples are for illustrative purposes only and are not intended to imply that either HTTP or HTTPS should be used, though the use of HTTPS is RECOMMENDED for production deployments.

### 2:3.78.1 Scope

This transaction is used by the Patient Demographics Consumer to solicit information about patients whose demographics data match data provided in the search parameters on the request message. The request is received by the Patient Demographics Supplier. The Patient Demographics Supplier processes the request and returns a response in the form of demographics information for the matching patients.

### 2:3.78.2 Actors Roles

**Table 2:3.78.2-1: Actor Roles**

| | |
| :--- | :--- |
| Patient Demographics Consumer | Requests a list of patients matching the supplied set of demographics criteria (example: ID or Name) from the Patient Demographics Supplier. |
| Patient Demographics Supplier | Returns demographic information for all patients matching the demographics criteria provided by the Patient Demographics Consumer |

### 2:3.78.3 Referenced Standards

* [HL7 FHIR Release 4](http://hl7.org/fhir/R4/)
* [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/)

### 2:3.78.4 Messages

**Figure 2:3.78.4-1: Interaction Diagram**

#### 2:3.78.4.1 Query Patient Resource message

This message represents a parameterized search from the Patient Demographics Consumer to the Patient Demographics Supplier.

##### 2:3.78.4.1.1 Trigger Events

When a Patient Demographics Consumer needs to select a patient based on demographic information about patients whose information matches a minimal set of known data, it issues a Query Patient Resource.

##### 2:3.78.4.1.2 Message Semantics

The request message is a standard [FHIR Search](http://hl7.org/fhir/R4/search.html) request. The Patient Demographics Consumer MAY use GET or POST based searches, and the Patient Demographics Supplier SHALL support both GET and POST based searches. This operation can be invoked at the following path:

```
    [base]/Patient?<parameters>

```

###### 2:3.78.4.1.2.1 Search Parameters

The Patient Demographics Consumer MAY supply, and the Patient Demographics Supplier SHALL be capable of processing all parameters listed below. All parameter values SHALL be appropriately encoded per [RFC3986](https://tools.ietf.org/html/rfc3986) "percent" encoding rules. Note that percent encoding does restrict the character set to a subset of ASCII characters which is used for encoding all other characters used in the URL. Patient Demographics Suppliers MAY choose to support additional parameters beyond the subset listed below. Any additional parameters supported SHALL be supported according to the core FHIR specification. Such additional parameters are considered out of scope for this transaction. Any additional parameters not supported SHOULD be ignored, See [http://hl7.org/fhir/R4/search.html#errors](http://hl7.org/fhir/R4/search.html#errors).

FHIR defines methods of supporting multiple parameter values in an AND and OR relationship. The Patient Demographics Supplier SHALL support both AND and OR relationships. See FHIR specification on Composite Search Parameters [http://hl7.org/fhir/R4/search.html#combining](http://hl7.org/fhir/R4/search.html#combining) for more information on how to handle multiple parameter values.

| | |
| :--- | :--- |
| `_id` | This parameter of type string, when supplied, represents the resource identifier for the Patient Resource being queried. See[ITI TF-2: Appendix Z.2.3](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.2-query-parameters)for use of the`string`data type. Note: A search using`_id`is always an exact match search. |
| `active` | This parameter of type`token`, when supplied, specifies the active state. The active state indicates whether the patient record is active. Note: use`active=true`. |
| `family`and`given` | These parameters of type`string`, when supplied, specify the name of the person whose information is being queried. For this parameter the Patient Demographics Consumer MAY use either family name, given name or a combination of both names to filter by family, given or family and given names respectively. See[ITI TF-2: Appendix Z.2.3](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.2-query-parameters)for use of the`string`data type. |
| `identifier` | This repeating parameter of type`token`, when supplied, specifies an identifier associated with the patient whose information is being queried (e.g., a local identifier, account identifier, etc.). See[ITI TF-2: Appendix Z.2.2](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.2-query-parameters)for use of the`token`data type. |
| `telecom` | This parameter of type`token`, when supplied, specifies the telecommunications details. |
| `birthdate` | This parameter of type`date`, when supplied, specifies the birth date of the person whose information is being queried. See[http://hl7.org/fhir/R4/search.html#date](http://hl7.org/fhir/R4/search.html#date)for guidance and pitfalls when working with date search parameters. |
| `address` | This parameter of type`string`, when supplied, specifies one or more address parts associated with the person whose information is being queried. For details on matching rules, see[ITI TF-2: Appendix Z.2.3](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.2-query-parameters). |
| `address-city`,`address-country`,`address-postalcode`,`address-state` | These parameters of type`string`, when supplied, specify a match against the specified address part associated with the person whose information is being queried. Note that national conventions for addresses might affect utility of these fields. |
| `gender` | This parameter of type`token`, when supplied, specifies the administrative gender of the person whose information is being queried. For this parameter item, a single administrative gender code from value set http://hl7.org/fhir/R4/valueset-administrative-gender.html SHALL be specified as the only value of the token. See[ITI TF-2: Appendix Z.2.2](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.2-query-parameters)for use of the`token`data type. |
| `mothersMaidenName` | This parameter of type`string`, when supplied, specifies the mother's maiden (unmarried) name, commonly collected to help verify patient identity. This is search extension defined in FHIRExpression: Patient.extension(`http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName`). |

For example

```
GET https://server.example.com/fhir/Patient?family=MOHR&given=ALICE&active=true&gender=female
Accept: application/fhir+json; fhirVersion=4.0

```

###### 2:3.78.4.1.2.1.1 Combinations of search parameters

While the above search parameters SHALL all be supported individually, support for combinations of parameters is needed for effective searching. The Patient Demographics Supplier SHALL support filtering on the following combinations of search parameters:

* `family` and `gender`
* `birthdate` and `family`

The Patient Demographics Supplier MAY support additional combinations of parameters. When the Patient Demographics Consumer specifies a set of search parameters that, in combination, are not supported by the Patient Demographics Supplier, the Patient Demographics Supplier SHALL choose which parameters to respect, and indicate this fact in the response message Bundle self link, according to [Section 3.1.1.6 of the FHIR specification](http://hl7.org/fhir/R4/search.html).

###### 2:3.78.4.1.2.2 Parameter Modifiers

Patient Demographics Suppliers SHALL support the `:exact` parameter modifier on all search parameters of type string. When supplied by the Patient Demographics Consumer, the `:exact` parameter modifier instructs the Patient Demographics Supplier that exact matching SHOULD be performed. The Patient Demographics Consumer SHOULD NOT use, and Patient Demographics Supplier MAY ignore, any additional parameter modifiers listed in the FHIR standard, which are considered out of scope in the context of this transaction.

###### 2:3.78.4.1.2.3 Populating Which Domains are Returned 

The Patient Demographics Consumer MAY constrain the domains from which patient identifiers are returned from the Patient Demographics Supplier in the resulting bundle. The Patient Demographics Consumer SHALL convey this by specifying the patient identity domains in the system component of repeating `identifier` parameters using the [OR format](http://hl7.org/fhir/R4/search.html#combining) (example of using `,` in a request for identifier domain `1.2.3` **OR** `4.5.6`):

```
&identifier=urn:oid:1.2.3|,urn:oid:4.5.6|

```

For example, a Patient Demographics Consumer wishing to filter for patients with a last name of SMITH having identifiers from an identity domain with OID 1.2.3.4.5 would convey this search using the [AND format](http://hl7.org/fhir/R4/search.html#combining) as (example of requesting a family name of SMITH **AND** in the identifier domain 1.2.3.4.5):

```
  ?family=SMITH&identifier=urn:oid:1.2.3.4.5|

```

The Patient Demographics Consumer SHALL populate the patient identity domain portion of the token with values described in [ITI TF-2: Appendix E](https://profiles.ihe.net/ITI/TF/Volume2/ch-E.html).

###### 2:3.78.4.1.2.4 Populating Expected Response Format 

The FHIR standard provides encodings for responses as either XML or JSON. Patient Demographics Suppliers SHALL support both message encodings, whilst Patient Demographics Consumers SHALL support one and MAY support both. See [ITI TF-2: Appendix Z.6 for details](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format).

##### 2:3.78.4.1.3 Expected Actions

The Patient Demographics Supplier SHALL return demographic records that reflect the match to all of the search criteria provided by the Patient Demographics Consumer. The Patient Demographics Supplier SHALL respond with a [Query Patient Resource Response message](#query-response).

The Patient Demographics Supplier SHALL return all exact matches to the search parameters sent by the Patient Demographics Consumer; IHE does not further specify matching requirements. Additional details for handling query parameters are described in [ITI TF-2: Appendix Z.2](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.2-query-parameters).

The response provided by the Patient Demographics Supplier to the Patient Demographics Consumer is a list of matching patients from the Patient Demographics Supplier’s information source. The mechanics of the matching algorithms used are internal to the Patient Demographics Supplier and are outside the scope of this framework.

The Patient Demographics Supplier SHALL support at least one patient identifier domain and MAY support multiple identifier domains. Section [3.78.4.1.2.4](#domainpop) describes how the Patient Demographics Consumer MAY filter results based on identifiers from one or more patient identifier domains. Query responses MAY return patient identifiers from one or multiple patient identifier domains.

See [ITI TF-2: Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format) for more details on response format handling. See [ITI TF-2: Appendix Z.7](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.7-guidance-on-access-denied-results) for guidance for Access Denied.

The Patient Demographics Supplier SHALL respond to the query request as described by the following cases with a [Query Patient Resource Response message](#query-response), and SHALL behave according to the cases listed below:

**Case 1**: The Patient Demographics Supplier finds at least one patient record matching the criteria sent as HTTP search parameters. No patient identifier domains are requested via the mechanism specified as specified in Section [3.78.4.1.2.4](#domainpop).

`HTTP 200` (OK) is returned as the HTTP status code.

A Resource Bundle is returned representing the result set. The Patient Demographics Supplier populates the `total` property of the bundle with the total number of matching results. One `entry` is returned from the Patient Demographics Supplier for each Patient Resource found.

**Case 2**: The Patient Demographics Supplier finds at least one patient record matching the criteria sent in the search parameters. One or more patient identifier domains are requested via the mechanism specified in Section [3.78.4.1.2.4](#domainpop), and Patient Demographics Supplier recognizes all domains.

`HTTP 200` (OK) is returned as the HTTP status code.

The Patient Demographics Supplier performs its matching and returns a bundle as described in Case 1. The Patient Demographics Supplier eliminates identifiers from the result set which do not exist in the list specified per Section [3.78.4.1.2.4](#domainpop) (domains to be returned).

**Case 3**: The Patient Demographics Supplier fails to find in its information source, any patient record matching the criteria sent as HTTP search parameters.

`HTTP 200` (OK) is returned as the HTTP status code.

A Resource Bundle is returned representing the zero result set. The Patient Demographics Supplier populates the total with a value of 0 indicating no results were found. No `entry` attributes are provided in the result.

**Case 4**: The Patient Demographics Supplier is not an authority for one or more of the domains specified per Section [3.78.4.1.2.4](#domainpop).

There are two acceptable responses. The preferred response is a `HTTP 404` to indicate that the domain is not recognized, but it is acceptable to respond with a `HTTP 200` with the results available (0..*).

An OperationOutcome Resource is returned indicating that the patient identity domain is not recognized in an `issue` having:

| | |
| :--- | :--- |
| severity | warning |
| code | not-found |
| diagnostics | "targetSystem not found" |

The OperationOutcome Resource MAY indicate the search parameter used and the domain in error within the `diagnostics` attribute. See FHIR discussion of search error handling [http://hl7.org/fhir/R4/search.html#errors](http://hl7.org/fhir/R4/search.html#errors).

**Case 5**: The Patient Demographics Supplier is not capable of producing a response in the requested format specified by _format parameter (specified in Section [3.78.4.1.2.5](#format)).

`HTTP 406` (Not Acceptable) is returned as the HTTP status code.

An OperationOutcome Resource is returned indicating that the requested response format is not supported in an issue having:

| | |
| :--- | :--- |
| severity | error |
| code | not-supported |

The Patient Demographics Supplier MAY be capable of servicing requests for response formats not listed in Section [3.78.4.1.2.5](#format), but SHALL, at minimum, be capable of producing XML and JSON encodings.

**Case 6**: The Patient Demographics Supplier finds a deprecated Patient record that matches the query parameters. In this case, it SHALL return `HTTP 200` (OK), and a Resource Bundle with one of the following properties:

* The returned Resource Bundle contains the Patient, which has the `active` element set to `false`.
* The returned Resource Bundle does not include the deprecated Patient record. It MAY contain other records that match the search, or it MAY be empty.
* The returned Resource Bundle contains the Patient, which has the `active` element set to `false` and the `link` element points at another Patient with `link.type` set to `replaced-by`. The linked Patient is also included in the Bundle. This indicates that the deprecated Patient is deprecated because it has been merged into the linked Patient.

The option chosen by the Patient Demographics Supplier is based on policy.

The Patient Demographics Supplier MAY return other HTTP status codes to represent specific error conditions. When HTTP error status codes are returned by the Patient Demographics Supplier, they SHALL conform to the HTTP standard [RFC2616](https://tools.ietf.org/html/rfc2616). Their use is not further constrained or specified by this transaction.

#### 2:3.78.4.2 Query Patient Resource Response message 

##### 2:3.78.4.2.1 Trigger Events

The Patient Demographics Supplier has results or error to report to the Patient Demographics Consumer. This MAY include finding zero or more patient demographics matching the search parameters specified by the Patient Demographics Consumer as a result of a Query Patient Resource Request. This MAY include errors or Access Denied.

##### 2:3.78.4.2.2 Message Semantics

The Query Patient Resource Response is sent from the Patient Demographics Supplier to the Patient Demographics Consumer as a Bundle of Patient Resources. The "content-type" of the response will depend upon the requested response format indicated by the Patient Demographics Consumer.

See [ITI TF-2: Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format) for more details on response format handling. See [ITI TF-2: Appendix Z.7](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.7-guidance-on-access-denied-results) for guidance for Access Denied.

###### 2:3.78.4.2.2.1 Patient Resource Definition in the Context of Query Patient Resource Response

The Patient Resource(s) contained within the Query Patient Resource Response message SHOULD conform to [Patient Profile for PDQm](StructureDefinition-IHE.PDQm.Patient.md).

###### 2:3.78.4.2.2.2 Mother’s Maiden Name 

Patient Demographics Suppliers SHALL include the mother’s maiden name, if known, in this extension: [http://hl7.org/fhir/R4/extension-patient-mothersmaidenname.html](http://hl7.org/fhir/R4/extension-patient-mothersmaidenname.html).

###### 2:3.78.4.2.2.3 Resource Bundling

Please see [ITI TF-2: Appendix Z.1](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.1-resource-bundles) for details on the IHE guidelines for implementing FHIR bundles.

###### 2:3.78.4.2.2.4 Incremental Response Processing - Paging of Resource Bundle

The Patient Demographics Supplier SHALL represent these incremental responses as specified in [FHIR Paging](http://hl7.org/fhir/R4/http.html#paging).

###### 2:3.78.4.2.2.5 Quality of Match

The Patient Demographics Supplier MAY convey the quality of each match based on strength of the particular result to the supplied search parameters. The mechanism for determining the confidence of match is considered a product specific feature and is not specified in this transaction.

If the Patient Demographics Supplier wishes to convey the quality of match, it SHALL represent the confidence of a particular match within the bundle as a score attribute. See FHIR Relevance section [http://hl7.org/fhir/R4/search.html#score](http://hl7.org/fhir/R4/search.html#score).

##### 2:3.78.4.2.3 Expected Actions

The Patient Demographics Consumer SHALL process the response in some manner specific to its application function (for example: displaying on a user interface). This application behavior is not specified by IHE.

The constraints specified in Section [3.78.4.2.2](#2378422-message-semantics) represent the minimum set of demographics information that MUST be implemented by a Patient Demographics Supplier. This does not prevent the Patient Demographics Supplier from sending additional FHIR attributes in a response; such as extensions, text, etc. The Patient Demographics Consumer SHALL ignore additional attributes and extensions if not understood.

The Patient Demographics Consumer SHOULD be robust as the response MAY contain Patient Resources that match the search parameters but are not compliant with the PDQm constraints defined in [Patient Profile for PDQm](StructureDefinition-IHE.PDQm.Patient.md).

The Patient Demographics Consumer SHOULD follow the [Safety Guidelines for Client Search](http://hl7.org/fhir/R4/safety.html#search).

#### 2:3.78.4.3 Retrieve Patient Resource message

This message represents an HTTP GET from the Patient Demographics Consumer to the Patient Demographics Supplier and provides a mechanism for retrieving a single Patient Resource with a known resource identifier.

##### 2:3.78.4.3.1 Trigger Events

When the Patient Demographics Consumer possesses a Patient Resource’s identifier (either through query, database lookup, or other mechanism) for which it requires additional or new information, it issues a Retrieve Patient Resource interaction.

##### 2:3.78.4.3.2 Message Semantics

This message is an invocation of the [FHIR Read interaction](http://hl7.org/fhir/R4/http.html#read). The Retrieve Patient Resource is conducted by executing an HTTP GET against the Patient Demographics Supplier’s Patient Resource URL, providing the resource id of the patient being retrieved. The target is formatted as:

```
GET [base]/Patient/[resourceId]

```

The Patient Demographics Supplier SHALL respond to this query by sending a single Patient Resource instance.

The `resourceId` included in the request always represents the unique identifier for the Resource within the scope of the URL. For example, while `http://example1.org/ihe/Patient/1` and `http://example2.com/ihe/Patient/1` both contain the same `[resourceId]`, they reference two different resource instances.

##### 2:3.78.4.3.3 Expected Actions

The Patient Demographics Supplier SHALL retrieve the demographic record indicated by the Resource identifier on the HTTP GET supplied by the Patient Demographics Consumer. The Patient Demographics Supplier SHALL respond to the retrieve request as described by the following cases:

**Case 1**: The Patient Demographics Supplier finds the patient demographics record matching the `resourceId` sent in the HTTP request.

`HTTP 200` (OK) is returned as the HTTP status code.

A Patient Resource is returned representing the result.

**Case 2**: The Patient Demographics Supplier fails to find the patient demographics record matching the `resourceId` sent in the HTTP request.

`HTTP 404` (Not Found) is returned as the HTTP status code

An `OperationOutcome` Resource is returned indicating that the Patient Resource could not be found, in an issue having:

| | |
| :--- | :--- |
| severity | error |
| code | not-found |

**Case 3**: The Patient Demographics Supplier finds the patient demographics record matching the `resourceId` sent in the HTTP request, and the record is deprecated.

In this case, the Patient Demographics Supplier MAY either:

* Return `HTTP 200` (OK) as in Case 1, with the `active` flag set to `false`, or
* Return `HTTP 404` (Not Found) as in Case 2.

The Patient Demographics Supplier MAY return other HTTP status codes to represent specific error conditions. When HTTP error status codes are returned by the Patient Demographics Supplier, they SHALL conform to the HTTP standard [RFC2616](https://tools.ietf.org/html/rfc2616). Their use is not further constrained or specified by this transaction.

#### 2:3.78.4.4 Retrieve Patient Resource Response message

The Patient Demographics Supplier’s response to a successful Retrieve Patient Resource message SHALL be an `HTTP 200` (OK) Status code with a Patient Resource, or an appropriate error code.

##### 2:3.78.4.4.1 Trigger Events

The Patient Demographics Supplier found patient demographic record matching the Resource identifier specified by the Patient Demographics Consumer.

##### 2:3.78.4.4.2 Message Semantics

The Retrieve Patient Resource response is sent from the Patient Demographics Supplier to the Patient Demographics Consumer as a single Patient Resource.

See [ITI TF-2: Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format) for more details on response format handling. See [ITI TF-2: Appendix Z.7](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.7-guidance-on-access-denied-results) for guidance for Access Denied.

If the Patient Demographics Supplier is unable to produce a response in the requested format, it SHALL respond with an `HTTP 400` error indicating that it was unable to fulfill the request. The Patient Demographics Supplier MAY be capable of servicing requests for response formats not listed, but SHALL, at minimum, be capable of producing XML and JSON encodings.

###### 2:3.78.4.4.2.1 Patient Resource Definition in the Context of Retrieve Patient Resource Response

The Patient Resource definition in the context of a retrieve interaction is the FHIR definition of the Patient Resource, see [http://hl7.org/fhir/R4/patient.html](http://hl7.org/fhir/R4/patient.html).

### 2:3.78.5 Security Considerations

See the general Security Consideration in [ITI TF-1: 38.5](volume-1.md#1385-pdqm-security-considerations).

#### 2:3.78.5.1 Security Audit Considerations

The Mobile Patient Demographics Query Transaction is a Query Information event as defined in [Table 3.20.4.1.1.1-1](https://profiles.ihe.net/ITI/TF/Volume2/ITI-20.html#3.20.4.1.1.1). The actors involved SHALL record audit events according to the following:

##### 2:3.78.5.1.1 Patient Demographics Consumer Audit

The Patient Demographics Consumer when grouped with [ATNA Secure Node or Secure Application](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html) Actor SHALL be able to record a [Patient Demographics Consumer AuditEvent](StructureDefinition-IHE.PDQm.Query.Audit.Consumer.md). [Audit Example for a PDQm Query transaction from consumer perspective](AuditEvent-ex-auditPdqmQuery-consumer.md).

##### 2:3.78.5.1.2 Patient Demographics Supplier Audit

The Patient Demographics Supplier when grouped with [ATNA Secure Node or Secure Application](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html) Actor SHALL be able to record a [Patient Demographics Supplier AuditEvent](StructureDefinition-IHE.PDQm.Query.Audit.Supplier.md). [Audit Example for a PDQm Query transaction from supplier perspective](AuditEvent-ex-auditPdqmQuery-supplier.md).

#### 2:3.78.5.2 Use with the Internet User Authorization (IUA) Profile

The [Internet User Authorization (IUA)](https://profiles.ihe.net/ITI/IUA/index.html) Profile provides support for user authentication, app authentication, and authorization decisions. When PDQm actors are grouped with IUA actors there are additional security and privacy functionality enabled by this grouping. There are additional requirements and functionality enabled through scope definitions that are transaction-specific.

A Patient Demographics Consumer, when grouped with an [IUA](https://profiles.ihe.net/ITI/IUA/index.html) Authorization Client, SHALL use [Get Access Token [ITI-71]](https://profiles.ihe.net/ITI/IUA/index.html#volume-2----transactions) to request the following scope from the IUA Authorization Server. This enables the Patient Demographics Consumer to get corresponding identifiers with the Mobile Patient Demographics Query [ITI-78] transaction with the authorizing token in the combined transaction Incorporate Access Token [ITI-72].

The Patient Demographics Supplier, when grouped with an [IUA](https://profiles.ihe.net/ITI/IUA/index.html) Resource Server, SHALL require [Incorporate Access Token [ITI-72]](https://profiles.ihe.net/ITI/IUA/index.html#volume-2----transactions) in all Mobile Patient Demographics Query [ITI-78] transactions, SHALL enforce the authorization decision in the token, and MAY further enforce policies beyond those made by the Authorization Server such as consent or business rules.

```
scope: ITI-78

```

This scope request authorizes the full [ITI-78] transaction. This scope implicitly requests patient-specific queries for getting corresponding demographics. Further scope refinement is allowed in realm or project-specific situations; these scopes would be in addition to the scope defined here.

