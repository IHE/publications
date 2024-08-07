Feature: Test ITI-YY8 Transaction: Cancel Claim
  Background:
    * url 'http://localhost/fhir'

  Rule: Cancel Claim Request and Response Messages initiated from a Claims Requestor to a Claims Manager

    Scenario: Cancel Claim without referenced content

      Given path 'Claim/ex-claim-3/$cancel'
      When method get
      Then status 200
      And match $.resourceType = "ClaimResponse"
      And match $ contains status
      And match $ contains request
      And match $ contains outcome

    Scenario: Cancel Claim with referenced content in a bundle

      Given path 'Claim/ex-claim-3/$cancel'
      When method get
      Then status 200
      And match $.resourceType == "Bundle"
      And match $.type == "collection"
      And match contains $.entry[?(@.resourceType == 'ClaimResponse' && @.status && @.request && @.outcome)]
  