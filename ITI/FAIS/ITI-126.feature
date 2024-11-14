Feature: Test ITI-126 Transaction: Submit Claim
  Background:
    * url 'http://localhost/fhir'

  Rule: Submit Claim Request and Response Messages initiated from a Claims Requestor to a Claims Manager

    Scenario: Submit Claim without referenced content

      Given path 'Claim/$submit'
      And request read('Claim-ex-claim-3.json')
      When method post
      Then status 200
      And match $.resourceType = "ClaimResponse"
      And match $ contains status
      And match $ contains request
      And match $ contains outcome

    Scenario: Submit Claim with referenced content in a bundle

      Given path 'Claim/$submit'
      And request read('Bundle-ex-claim-bundle-3.json')
      When method post
      Then status 200
      And match $.resourceType == "Bundle"
      And match $.type == "collection"
      And match contains $.entry[?(@.resourceType == 'ClaimResponse' && @.status && @.request && @.outcome)]
  