<div markdown="1" class="stu-note">

This Test Plan page is a prototype.   We expect the maturity of the content will improve over time.  For now, we summarize high level testing scope and available tools. Comments are welcome.
</div>

## Introduction

PIXm specifies two transactions:  A patient identity feed transaction between PIX Source and PIX Manager, and a query transaction between a PIX Consumer and the PIX Managers.  Each transaction specifies semantics of the request and response messages exchanged between actors.  The PIXm test plan focuses on these semantics and on the expected actions on the server-side actor.

## High-level Test Scope

### ITI-83 Patient Identifiers Cross-reference Query for Mobile 

* PIX Consumer initiates ITI-83 queries for cross-referenced patients
* PIX Manager responds to queries, as appropriate

### ITI-104 Mobile Patient Identifier Cross-reference Feed

* PIX Source initiates ITI-104 feed for:
  * Add patient
  * Revise patient
  * Resolve patient duplicates
  * Remove patient 
* PIX Manager responds according to expected actions in ITI-104 for
  * Add patient
  * Revise patient
  * Resolve patient duplicates
  * Remove patient (if supported)

### Options

* none

## Unit Test Procedure (Conformance Testing)

Unit testing this context entails testing a SUT with a simulator or validator tool.  A simulator is an implementation of an actor that is designed specifically to test the opposite pair actor. The simulator might be a reference implementation or may be a specially designed test-bench.  Often, when a reference implementation is used, the negative tests are harder to simulate. A validator is an implementation that can check conformance. A validator may be a simulator, but may also be a standalone tool used to validate only a message encoding. Some reference implementations may be able to validate to a StructureDefinition profile, but often these do not include sufficient constraints given the overall actor conformance criteria. 

### Available tools for PIXm unit testing

#### Gazelle PatientManager - Simulator 

* Provider: INRIA (Rennes, France), KEREVAL (https://www.kereval.com/)
* Gazelle Patient Manager online: https://gazelle.ihe.net/PatientManager/home.seam
* User Manual:  https://gazelle.ihe.net/gazelle-documentation/Patient-Manager/user.html
* Tool support: https://gazelle.ihe.net/jira/projects/PAM
* Actors (options) tested:  
  * PIX Consumer, PIX Manager for ITI-83:
    * PIX Consumer test definition: PM_PIX_Query-Patient_Identity_Consumer https://gazelle.ihe.net/content/pmpixquery-patientidentityconsumer
    * PIX Manager test definition: PM_PIX_Query-PIX_Manager https://gazelle.ihe.net/content/pmpixquery-pixmanager
  * (future) PIX Source, PIX Manager for ITI-104

#### Gazelle External Validation Service (aka "EVS Client") - Validator

* Provider:  INRIA (Rennes, France), KEREVAL (https://www.kereval.com/), and Mallinckrodt Institute of Radiology (Saint Louis, USA) 
* Tool location: https://gazelle.ihe.net/EVSClient/home.seam
* Documentation: https://gazelle.ihe.net/content/evsfhirvalidation
* Scope of testing: validation using StructureDefinitions for PIXm
* Other notes: StructureDefinitions and other conformance resources are provided within this Implementation Guide as an [npm package](package.tgz).

## Integration Test Procedure (Interoperability Testing)

Integration Testing in this context is where two SUT of paired actors test against each other.  Integration testing is often limited by the capability of client-side actors, which may support only a subset of the semantics required to be supported by a server.  Full message semantics and failure-modes are generally more thoroughly exercised with unit (conformance) tests.

The tests listed below are defined in Gazelle Master Model (https://gazelle.ihe.net/GMM) and are performed by systems testing PIXm at IHE Connectathons.

Interoperability Tests:

* ITI-83_(PIXm)_Search_Read
  * Assumes a pre-defined set of patients (with demographics expected to be cross-referenced PIX Manager actor
* (future) PIXm_PatientMgmt_and_Discovery
  * Intent is to model this on a similar, existing test for PMIR, to exercise a workflow with ITI-104 and ITI-83
