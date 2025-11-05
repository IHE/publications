# Test Plan - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* **Test Plan**

## Test Plan

**TODO: fill in the goals of the testing.**

## Test Plan

**TODO: include actor based tests, include positive and edge cases.**

### Unit Test Procedure

Unit Tests in this context is where a SUT is tested against a simulator or validator. A simulator is a implementation of an actor that is designed specifically to test the opposite pair actor. The simulator might be a reference implementation or may be a specially designed test-bench. Where a reference implementation is used, the negative tests are harder to simulate. A validator is a implementation that can check conformance. A validator may be a simulator, but may also be a standalone tool used to validate only a message encoding. Some reference implementations may be able to validate to a StructureDefinition profile, but often these do not include sufficient constraints given the overall actor conformance criteria.

### Integration Test Procedure

Integration Tests in this context is where two SUT of paired actors test against each other. In this case, the subset of tests that can be tested is the intersection. Testing only this intersection is necessary but not sufficient. The testing must also include the capability of the client to exercise the test scenarios that this SUT can test to determine that failure-modes are handled properly by both SUT.

### Cucumber

**TODO: Write specific Cucumber statements, might use external tooling?**

