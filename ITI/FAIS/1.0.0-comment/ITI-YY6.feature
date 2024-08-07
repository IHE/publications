Feature: Test ITI-YY6 Transaction: Track Claim

  Background:
    * url 'http://localhost/fhir'
    * def responseresource read('CoverageEligibilityResponse-ex-claim-response-acc-3.json')

  Rule: Search Claim Response Request and Response Messages initiated from a Claims Requestor to a Claims Manager

    Scenario: Search for a Claim Response

      Given path 'ClaimResponse'
      And request { status: 'active' }
      When method get
      Then status 200
      And match $.resourceType = 'Bundle'
      And match $.type = 'searchset'
      And match $.entry contains responseresource

  Rule: Read Claim Response Request and Response Messages initiated from a Claims Requestor to a Claims Manager

    Scenario: Request a Claim Response resource 

      Given path 'ClaimResponse/ex-claim-response-acc-3'
      When method get
      Then status 200
      And match $.resourceType == 'ClaimResponse'
      And match $.outcome == "complete"
      And match $.request.reference == "Claim/ex-claim-3"
  