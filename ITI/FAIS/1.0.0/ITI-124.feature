Feature: Test ITI-124 Transaction: Check Coverage Eligibility

  Background:
    * url 'http://localhost/fhir'

  Rule: Check Coverage Eligibility Request and Response Messages initiated from a Coverage Requestor to a Claims Manager

    Scenario: Check Coverage Eligibility without referenced content

      Given path 'CoverageEligibilityRequest/$submit'
      And request read('CoverageEligibilityRequest-ex-check-coverage-2.json')
      When method post
      Then status 200
      And match $.resourceType = "CoverageEligibilityResponse"
      And match $ contains status
      And match $ contains request
      And match $ contains outcome

    Scenario: Check Coverage Eligibility with referenced content in a bundle

      Given path 'CoverageEligibilityRequest/$submit'
      And request read('Bundle-ex-check-coverage-bundle-2.json')
      When method post
      Then status 200
      And match $.resourceType == "Bundle"
      And match $.type == "collection"
      And match contains $.entry[?(@.resourceType == 'CoverageEligibilityResponse' && @.status && @.request && @.outcome)]
  