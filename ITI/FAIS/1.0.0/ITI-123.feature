Feature: Test ITI-123 Transaction: Check Enrollment Status

  Background:
    * url 'http://localhost/fhir'
    * def responseresource read('EnrollmentResponse-ex-enrollment-resp-1.json')

  Rule: Search Enrollment Response Request and Response Messages initiated from a Beneficiary Requestor to a Beneficiary Manager

    Scenario: Search for an Enrollment Response

      Given path 'EnrollmentResponse'
      And request { status: 'active' }
      When method get
      Then status 200
      And match $.resourceType = 'Bundle'
      And match $.type = 'searchset'
      And match $.entry contains responseresource

  Rule: Read Enrollment Response Request and Response Messages initiated from a Beneficiary Requestor to a Beneficiary Manager

    Scenario: Request an Enrollment Response resource 

      Given path 'EnrollmentResponse/ex-enrollment-resp-1'
      When method get
      Then status 200
      And match $.resourceType == 'EnrollmentResponse'
      And match $.outcome == "complete"
      And match $.request.reference == "EnrollmentRequest/ex-enrollment-req-1"
  