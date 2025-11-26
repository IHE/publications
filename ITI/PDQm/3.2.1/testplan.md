# PDQm Test Plan - Patient Demographics Query for Mobile (PDQm) v3.2.1

* [**Table of Contents**](toc.md)
* **PDQm Test Plan**

## PDQm Test Plan

This Test Plan page is a prototype. We expect the maturity of the content will improve over time. For now, we summarize high level testing scope and available tools. Comments are welcome.

## Introduction

PDQm specifies a query transaction between two actors. The transaction between actors specifies semantics of the data exchanged. The PDQm test plan focuses on these semantics and on the expected actions on the server-side actor.

## High-level Test Scope

### Patient Demographics Query for Mobile [ITI-78]

#### Patient Demographics Consumer

* The Patient Demographics Consumer only supports the [ITI-78] transaction when the Patient Search Option is declared. See tests under the Patient Search Option below.

#### Patient Demographics Supplier

* [ITI-78] is REQUIRED for all Patient Demographics Suppliers, and thus these these apply to all Patient Demographics Suppliers.
* The Patient Demographics Supplier SHALL be able to respond with a set of matching patients from its database.
* The Patient Demographics Supplier SHALL be capable of filtering the response search set by the following parameters individually, based on the content of the Patient resources it stores (it need not be capable of filtering on parameters where the corresponding data is never present in Patient Resources it might return): 
* `_id`
* `active`
* `family`
* `given`
* `identifier`
* `telecom`
* `birthdate`
* `address`
* `address-city`
* `address-country`
* `address-postalcode`
* `address-state`
* `gender`
* `mothersMaidenName`
 
* The Patient Demographics Supplier SHALL be capable of filtering the response search set by the following combinations of search parameters: 
* `family` and `gender`
* `birthdate` and `family`
 
* All Patient Resources returned by the Patient Demographics Supplier SHALL conform to the [PDQm Patient Profile](StructureDefinition-IHE.PDQm.Patient.md).
* The Patient Demographics Supplier SHALL be able to return the response in either JSON or XML format, as requested in the Accept HTTP header.

### Options

#### Patient Search Option

##### Patient Demographics Consumer

* The Patient Demographics Consumer SHALL be able to initiate the ITI-78 queries with various search parameters, as supported.
* The Patient Demographics Consumer SHALL be able to process a successful response containing a single Patient which conforms to the [PDQm Patient Profile](StructureDefinition-IHE.PDQm.Patient.md) in some way meaningful to the application.
* The Patient Demographics Consumer SHALL be able to process a successful response containing multiple Patient Resources which all conform to the PDQm Patient Profile. It MAY treat this as a failure when it requires a unique result, but it SHALL handle the response gracefully (any error reported should demonstrate it recognizes the result, and, for example, did not crash).
* The Patient Demographics Consumer SHALL be able to process a successful response containing no results. It SHALL handle the response gracefully (any error reported should demonstrate that it recognizes the result, and, for example, did not crash).
* The Patient Demographics Consumer SHALL be able to gracefully (ie, without crashing) handle a response that contains an HTTP status code in the 4xx to 5xx range.
* The Patient Demographics Consumer SHALL be able to gracefully (ie, without crashing) handle a response that contains a single OperationOutcome outside of a Bundle with `error` or `fatal` severity.
* The Patient Demographics Consumer SHALL be able to gracefully (ie, without crashing) handle a response that contains one or more OperationOutcomes inside of a Bundle with at least one having `error` or `fatal` severity. Such a response SHOULD be treated as an error response, even if it also contains matching results.
* The Patient Demographics Consumer SHALL be able to gracefully (ie, without crashing) handle a response that contains one or more OperationOutcomes with `warning` severity (but where none have `error` or `fatal` severity). It MAY treat such a response as successful, failed, or some indeterminate state, as is appropriate for its needs.
* The Patient Demographics Consumer SHALL be able to handle a response that contains one or more OperationOutcomes with `information` severity (but where none have `warning`, `fatal`, or `error` severity). It SHALL treat the response the same as a successful response, but it MAY report the outcome in its result.
* The Patient Demographics Consumer SHALL be able to handle a response that contains one or more Patient resources which violate the PDQm Patient Profile. It MAY accept the response as successful, reject as failed, or perform some other indeterminate action, but it SHALL do so gracefully (ie, without crashing).
* The Patient Demographics Consumer SHALL be able to handle a response that contains unknown extension elements on any resource. Such extension elements SHALL NOT cause the Patient Demographics Consumer to fail to process the response.
* The Patient Demographics Consumer SHALL be able to handle a successful response that contains an unknown modifierExtension. When processing the response, it SHALL do so according to the [base FHIR specification of how to handle unknown modifier extensions](http://hl7.org/fhir/R4/extensibility.html#modifierExtension).

#### Match Operation Option

Tests for this option involve testing the Patient Demographics Match [[ITI-119]](ITI-119.md) transaction.

##### Patient Demographics Consumer

* The Patient Demographics Consumer can initiate the ITI-119 operation with a Patient resource containing various demographics, as supported, and which conforms to the [PDQm Patient Profile for $match Input](StructureDefinition-IHE.PDQm.MatchInputPatient.md). It MAY also specify the `onlyCertainMatches` and `count` parameters.
* The Patient Demographics Consumer SHALL be able to process a successful response containing a single Patient which conforms to the [PDQm Patient Profile](StructureDefinition-IHE.PDQm.Patient.md) in some way meaningful to the application.
* The Patient Demographics Consumer SHALL be able to process a successful response containing multiple Patient Resources which all conform to the PDQm Patient Profile. It MAY treat this as a failure if it submitted the request with `onlyCertainMatches=true`, but it SHALL handle the response gracefully (any error reported should demonstrate it recognizes the result, and, for example, did not crash). If it did not specify `onlyCertainMatches=true` in the request, then it SHALL handle multiple results as successful in some way meaningful to the application.
* The Patient Demographics Consumer SHALL be able to process a successful response containing no results. It SHALL handle the response gracefully (any error reported should demonstrate that it recognizes the result, and, for example, did not crash).
* The Patient Demographics Consumer SHALL be able to gracefully (ie, without crashing) handle a response that contains an HTTP status code in the 4xx to 5xx range.
* The Patient Demographics Consumer SHALL be able to gracefully (ie, without crashing) handle a response that contains a single OperationOutcome outside of a Bundle with `error` or `fatal` severity.
* The Patient Demographics Consumer SHALL be able to gracefully (ie, without crashing) handle a response that contains one or more OperationOutcomes inside of a Bundle with at least one having `error` or `fatal` severity. Such a response SHOULD be treated as an error response, even if it also contains matching results.
* The Patient Demographics Consumer SHALL be able to gracefully (ie, without crashing) handle a response that contains one or more OperationOutcomes with `warning` severity (but where none have `error` or `fatal` severity). It MAY treat such a response as successful, failed, or some indeterminate state, as is appropriate for its needs.
* The Patient Demographics Consumer SHALL be able to handle a response that contains one or more OperationOutcomes with `information` severity (but where none have `warning`, `fatal`, or `error` severity). It SHALL treat the response the same as a successful response, but it MAY report the outcome in its result.
* The Patient Demographics Consumer SHALL be able to handle a response that contains one or more Patient resources which violate the PDQm Patient Profile. It MAY accept the response as successful, reject as failed, or perform some other indeterminate action, but it SHALL do so gracefully (ie, without crashing).
* The Patient Demographics Consumer SHALL be able to handle a response that contains unknown extension elements on any resource. Such extension elements SHALL NOT cause the Patient Demographics Consumer to fail to process the response.
* The Patient Demographics Consumer SHALL be able to handle a successful response that contains an unknown modifierExtension. When processing the response, it SHALL do so according to the [base FHIR specification of how to handle unknown modifier extensions](http://hl7.org/fhir/R4/extensibility.html#modifierExtension).

##### Patient Demographics Supplier

* The Patient Demographics Supplier SHALL be able to respond to ITI-119 requests with a set of matching patients from its database. The methodology the Patient Demographics Supplier uses to determine matches is not specified by this profile.
* The Patient Demographics Supplier SHALL populate Patient entries in the response Bundle with a `search.score` between 0 and 1, where higher values indicate higher match quality. The method used to compute the score is otherwise not specified by this profile.
* The Patient Demographics Supplier SHALL populate Patient entries in the response Bundle with the [match-grade](http://hl7.org/fhir/R4/extension-match-grade.html) extension containing an [appropriate code](http://hl7.org/fhir/R4/valueset-match-grade.html) to describe the match quality. The method the Patient Demographics Supplier uses to assess the match grade is not specified by this profile.
* If the `onlyCertainMatches` parameter is specified as `true` in the request message, then the Patient Demographics Supplier SHALL include only results for which the `match-grade` is `certain`.
* If the `count` parameter is specified in the request message, then the Patient Demographics Supplier SHALL include no more than `count` Patients in the response.
* When the request message does not match any Patient records in the Patient Demographics Supplier, and no error is encountered when performing the search, then the Patient Demographics Supplier SHALL respond with `HTTP 200 (OK)`. The response Bundle SHALL not contain any Patient entries, and any OperationOutcome entries SHALL not have `fatal` or `error` severity.
* The request message MAY be invoked with either a raw Patient Resource, or a Parameters Resource containing a Patient Resource, potentially alongside OPTIONAL parameters. The Patient Demographics Supplier SHALL be capable of handling both request formats.
* All Patient Resources returned by the Patient Demographics Supplier SHALL conform to the [PDQm Patient Profile](StructureDefinition-IHE.PDQm.Patient.md).
* The Patient Demographics Supplier SHALL be able to return the response in either JSON or XML format, as requested in the Accept HTTP header.
* The Patient Demographics Supplier SHALL respond to a request that contains an unrecognized modifierExtension by returning an `HTTP 400` code. The response SHALL NOT contain any Patient Resources.
* A request that contains unrecognized extensions SHALL NOT cause the Patient Demographics Supplier to fail to return a response.

## Unit Test Procedure (Conformance Testing)

Unit testing this context entails testing a SUT with a simulator or validator tool. A simulator is an implementation of an actor that is designed specifically to test the opposite pair actor. The simulator might be a reference implementation or might be a specially designed test-bench. Often, when a reference implementation is used, the negative tests are harder to simulate. A validator is an implementation that can check conformance. A validator might be a simulator, but might also be a standalone tool used to validate only a message encoding. Some reference implementations might be able to validate to a StructureDefinition profile, but often these do not include sufficient constraints given the overall actor conformance criteria.

### Available tools for PDQm unit testing

#### Gazelle PatientManager - Simulator

* Provider: INRIA (Rennes, France), [KEREVAL](https://www.kereval.com/)
* [Gazelle PatientManager online](https://gazelle.ihe.net/PatientManager/home.seam)
* [User Manual](https://gazelle.ihe.net/gazelle-documentation/Patient-Manager/user.html)
* [Tool support](https://gazelle.ihe.net/jira/projects/PAM)
* Actors (options) tested: Patient Demographics Consumer, Patient Demographics Supplier for ITI-78: 
* Consumer test definition: [PM_PDQ_Query-Patient_Demographics_Consumer](https://gazelle.ihe.net/content/pmpdqquery-patientdemographicsconsumer)
* Supplier test definition: [PM_PDQ_Query-Patient_Demographics_Supplier](https://gazelle.ihe.net/content/pmpdqquery-patientdemographicssupplier)
 

#### Gazelle External Validation Service (aka "EVS Client") - Validator

* Provider: INRIA (Rennes, France), [KEREVAL](https://www.kereval.com/), and Mallinckrodt Institute of Radiology (Saint Louis, USA)
* [Gazelle EVSClient online](https://gazelle.ihe.net/evs/home.seam)
* [User Manual](https://gazelle.ihe.net/gazelle-documentation/EVS-Client/user.html)
* [Tool support](https://gazelle.ihe.net/jira/browse/EVSCLT)
* Scope of testing: validation using StructureDefinitions for PDQm IG
* Test documentation: https://gazelle.ihe.net/content/evsfhirvalidation
* Other notes: StructureDefinitions and other conformance resources are provided in this Implementation Guide on the [Artifacts](artifacts.md) page.

## Integration Test Procedure (Interoperability Testing)

Integration Testing in this context is where two SUT of paired actors test against each other. Integration testing is often limited by the capability of the client (Patient Demographics Consumer), which might support only a subset of the semantics REQUIRED to be supported by the server (Patient Demographics Supplier). Full message semantics and failure-modes are generally more thoroughly exercised with unit (conformance) tests.

The tests listed below are defined in [Gazelle Master Model](https://gazelle.ihe.net/GMM) and are performed by systems testing PDQm at IHE Connectathons.

### Patient Demographics Consumer –> Patient Demographics Supplier Interoperability Tests:

* ITI-78_(PDQm)_Search_Read 
* Assumes a pre-defined set of patient demographics on the Supplier actor
 
* ITI-78_Paging

