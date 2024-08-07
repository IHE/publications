Feature: Test ITI-YY1 Transaction: Enroll Beneficiary

  Background:
    * url 'http://localhost/fhir'

  Rule: Enroll Beneficiary Request and Response Messages initiated from a Beneficiary Requestor to a Beneficiary Manager

    Scenario: Enroll a Beneficiary without referenced content

      Given path 'EnrollmentRequest/$submit'
      And request read('EnrollmentRequest-ex-enrollment-req.json')
      When method post
      Then status 200
      And match $.resourceType = "EnrollmentResponse"
      And match $ contains status
      And match $ contains request
      And match $ contains outcome

    Scenario: Enroll a Beneficiary with referenced content in a bundle

      Given path 'EnrollmentRequest/$submit'
      And request read('Bundle-ex-enreq-bundle.json')
      When method post
      Then status 200
      And match $.resourceType == "Bundle"
      And match $.type == "collection"
      And match contains $.entry[?(@.resourceType == 'EnrollmentResponse' && @.status && @.request && @.outcome)]
  