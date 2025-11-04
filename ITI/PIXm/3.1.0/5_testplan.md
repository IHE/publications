# Test Plan - Patient Identifier Cross-referencing for mobile (PIXm) v3.1.0

* [**Table of Contents**](toc.md)
* **Test Plan**

## Test Plan

This Test Plan page is a prototype. The maturity of the content will improve over time. For now, high level testing scope and available tools are summarized. Comments are welcome.

## Introduction

PIXm specifies two transactions: A patient identity feed transaction between PIX Source and PIX Manager, and a query transaction between a PIX Consumer and a PIX Manager. Each transaction specifies semantics of the request and response messages exchanged between actors. The PIXm test plan focuses on these semantics and on the expected actions on the server-side actor.

## High-level Test Scope

### Mobile Patient Identifier Cross-reference Query [ITI-83]

* PIX Consumer initiates ITI-83 queries for cross-referenced patients
* PIX Manager responds to queries, as appropriate

### Patient Identity Feed FHIR [ITI-104]

* PIX Source initiates ITI-104 feed for the four messages in the transaction: 
* Add patient
* Revise patient
* Resolve patient duplicates
* Remove patient (if the Source supports the Remove Patient Option)
 
* PIX Manager responds according to expected actions in ITI-104 for: 
* Add patient
* Revise patient
* Resolve patient duplicates
* Remove patient (if the Manager supports the Remove Patient Option)
 

### Options

* Remove Patient

## Unit Test Procedure (Conformance Testing)

Unit testing this context entails testing a SUT with a simulator or validator tool. A simulator is an implementation of an actor that is designed specifically to test the opposite pair actor. The simulator might be a reference implementation or may be a specially designed test-bench. Often, when a reference implementation is used, the negative tests are harder to simulate. A validator is an implementation that can check conformance. A validator may be a simulator, but may also be a standalone tool used to validate only a message encoding. Some reference implementations may be able to validate to a StructureDefinition profile, but often these do not include sufficient constraints given the overall actor conformance criteria.

### Available tools for PIXm unit testing

#### Gazelle PatientManager - Simulator

* Provider: INRIA (Rennes, France), [KEREVAL](https://www.kereval.com/)
* Gazelle Patient Manager [online](https://gazelle.ihe.net/PatientManager/home.seam)
* [User Manual](https://gazelle.ihe.net/gazelle-documentation/Patient-Manager/user.html)
* [Tool support](https://gazelle.ihe.net/jira/projects/PAM)
* Actors tested: 
* PIX Consumer, PIX Manager for ITI-83: 
* PIX Consumer test definition: [PM_PIX_Query-Patient_Identity_Consumer](https://gazelle.ihe.net/content/pmpixquery-patientidentityconsumer)
* PIX Manager test definition: [PM_PIX_Query-PIX_Manager](https://gazelle.ihe.net/content/pmpixquery-pixmanager)
 
* (future) PIX Source, PIX Manager for ITI-104
 

#### Gazelle External Validation Service (aka "EVS Client") - Validator

* Provider: INRIA (Rennes, France), [KEREVAL](https://www.kereval.com/), and Mallinckrodt Institute of Radiology (Saint Louis, USA)
* Gazelle EVSClient online: https://gazelle.ihe.net/EVSClient/home.seam
* [User Manual](https://gazelle.ihe.net/gazelle-documentation/EVS-Client/user.html)
* [Tool support](https://gazelle.ihe.net/jira/browse/EVSCLT)
* Scope of testing: validation using StructureDefinitions for PIXm
* Test documentation: (https://gazelle.ihe.net/content/evsfhirvalidation
* Other notes: StructureDefinitions and other conformance resources are provided in this Implementation Guide on the [Artifacts](artifacts.md) page.

## Integration Test Procedure (Interoperability Testing)

Integration Testing in this context is where two SUT of paired actors test against each other. Integration testing is often limited by the capability of client-side actors, which may support only a subset of the semantics required to be supported by a server. Full message semantics and failure-modes are generally more thoroughly exercised with unit (conformance) tests.

The tests listed below are defined in [Gazelle Master Model](https://gazelle.ihe.net/GMM) and are performed by systems testing PIXm at IHE Connectathons.

Interoperability Tests:

* ITI-83_PIXm_Search_Read 
* Assumes a pre-defined set of patients (with demographics expected to be cross-referenced PIX Manager actor)
 
* (future) PIXm_Remove_Patient 
* Applies to Source and Manager actors that support the Remove Patient Option
* Covers the remove patient message in ITI-83
 
* (future) PIXm_PatientMgmt_and_Discovery 
* Covers the add, revise, and resolve duplicates messages in ITI-104, with follow-up ITI-83 queries
* Intent is to model this on a similar, existing test for PMIR, to exercise a workflow with ITI-104 and ITI-83
 

