# Dummy Consent example - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dummy Consent example**

## Example Consent: Dummy Consent example

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Active

**scope**: Privacy Consent

**category**: Privacy policy acknowledgment Document

**patient**: [John Schmidt Other, DoB: 1923-07-25](Patient-ex-patient.md)

### Policies

| | |
| :--- | :--- |
| - | **Uri** |
| * | urn:uuid:a7ff9fa3-fbb6-4c5e-a1cc-6128069bbd4b |



## Resource Content

```json
{
  "resourceType" : "Consent",
  "id" : "ex-consent",
  "meta" : {
    "security" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST"
      }
    ]
  },
  "status" : "active",
  "scope" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/consentscope",
        "code" : "patient-privacy"
      }
    ]
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://loinc.org",
          "code" : "57016-8"
        }
      ]
    }
  ],
  "patient" : {
    "reference" : "Patient/ex-patient"
  },
  "policy" : [
    {
      "uri" : "urn:uuid:a7ff9fa3-fbb6-4c5e-a1cc-6128069bbd4b"
    }
  ]
}

```
