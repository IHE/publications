Feature: Test ITI-125 Transaction: Check Coverage Eligibility Status

  Background:
    * url 'http://localhost/fhir'
    * def responseresource read('CoverageEligibilityResponse-ex-check-coverage-resp-2.json')

  Rule: Search Coverage Eligibility Response Request and Response Messages initiated from a Coverage Requestor to a Claims Manager

    Scenario: Search for a Coverage Eligibility Response

      Given path 'CoverageEligibilityResponse'
      And request { status: 'active' }
      When method get
      Then status 200
      And match $.resourceType = 'Bundle'
      And match $.type = 'searchset'
      And match $.entry contains responseresource

  Rule: Read Coverage Eligibility Response Request and Response Messages initiated from a Coverage Requestor to a Claims Manager

    Scenario: Request a Coverage Eligibility Response resource 

      Given path 'CoverageEligibilityResponse/ex-check-coverage-resp-2'
      When method get
      Then status 200
      And match $.resourceType == 'EnrollmentResponse'
      And match $.outcome == "complete"
      And match $.request.reference == "CoverageEligibilityRequest/ex-check-coverage-2"
  