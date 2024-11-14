Feature: Test ITI-128 Transaction: Submit Claim
  Background:
    * url 'http://localhost/fhir'

  Rule: Re-process Claim Request and Response Messages initiated from a Claims Requestor to a Claims Manager

    Scenario: Re-process Claim without referenced content

      Given path 'Claim/$reprocess'
      When method post
      Then status 200
      And match $.resourceType = "ClaimResponse"
      And match $ contains status
      And match $ contains request
      And match $ contains outcome

    Scenario: Re-process Claim with referenced content in a bundle

      Given path 'Claim/$reprocess'
      When method post
      Then status 200
      And match $.resourceType == "Bundle"
      And match $.type == "collection"
      And match contains $.entry[?(@.resourceType == 'ClaimResponse' && @.status && @.request && @.outcome)]
  