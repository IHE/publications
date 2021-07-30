<div markdown="1" class="stu-note">

This Test Plan page is a prototype.   We expect the maturity of the content will improve over time.  For now, we summarize high level testing scope and available tools. Comments are welcome.
</div>

## Introduction

PDQm specifies a query transaction between two actors.  The transaction between actors specify semantics of the data exchanged.  The PDQm test plan focuses on these semantics and on the expected actions on the server-side actor.

## High-level Test Scope

### ITI-78 Patient Demographics Query for Mobile 

* Patient Demographics Consumer initiates the ITI-78 queries with various combinations of parameters, as supported
* Patient Demographics Supplier responds to the ITI-78 queries as appropriate 

### Options

* "Pediatric Demographics" for the Patient Demographics Consumer and Patient Demographics Supplier

## Unit Test Procedure (Conformance Testing)

Unit testing this context entails testing a SUT with a simulator or validator tool.  A simulator is an implementation of an actor that is designed specifically to test the opposite pair actor. The simulator might be a reference implementation or may be a specially designed test-bench.  Often, when a reference implementation is used, the negative tests are harder to simulate. A validator is an implementation that can check conformance. A validator may be a simulator, but may also be a standalone tool used to validate only a message encoding. Some reference implementations may be able to validate to a StructureDefinition profile, but often these do not include sufficient constraints given the overall actor conformance criteria. 

### Available tools for PDQm unit testing

#### Gazelle PatientManager - Simulator 

* Provider: INRIA (Rennes, France), KEREVAL (https://www.kereval.com/)
* Gazelle Patient Manager online: https://gazelle.ihe.net/PatientManager/home.seam
* User Manual:  https://gazelle.ihe.net/gazelle-documentation/Patient-Manager/user.html
* Tool support: https://gazelle.ihe.net/jira/projects/PAM
* Actors (options) tested:  Patient Demographics Consumer, Patient Demographics Supplier for ITI-78:
  *  Consumer test definition: PM_PDQ_Query-Patient_Demographics_Consumer https://gazelle.ihe.net/content/pmpdqquery-patientdemographicsconsumer
  *  Supplier test definition: PM_PDQ_Query-Patient_Demographics_Supplier https://gazelle.ihe.net/content/pmpdqquery-patientdemographicssupplier

#### Gazelle External Validation Service (aka "EVS Client") - Validator

* Provider:  INRIA (Rennes, France), KEREVAL (https://www.kereval.com/), and Mallinckrodt Institute of Radiology (Saint Louis, USA) 
* Tool location: https://gazelle.ihe.net/EVSClient/home.seam
* Documentation: https://gazelle.ihe.net/content/evsfhirvalidation
* Scope of testing: validation using StructureDefinitions for PDQm
* Other notes: StructureDefinitions available in EVSClient validation are published by IHE here: https://github.com/IHE/fhir/tree/master/StructureDefinition

## Integration Test Procedure (Interoperability Testing)

Integration Testing in this context is where two SUT of paired actors test against each other.  Integration testing is often limited by the capability of the client (Patient Demographics Consumer), which may support only a subset of the semantics required to be supported by the server (Patient Demographics Supplier).  Full message semantics and failure-modes are generally more thoroughly exercised with unit (conformance) tests.

The tests listed below are defined in Gazelle Master Model (https://gazelle.ihe.net/GMM) and are performed by systems testing PDQm at IHE Connectathons.

### Patient Demographics Consumer --> Patient Demographics Supplier Interoperability Tests:

* ITI-78_(PDQm)_Search_Read
  * Assumes a pre-defined set of patient demographics on the Supplier actor
* ITI-78_Paging
* PDQm_Query_with_Twin_Data
  * Assumes an additional set of demographics on the Supplier actor to demonstrate extra requirements for the Pediatric Demographics option.
