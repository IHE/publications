# Dummy Encounter example - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dummy Encounter example**

## Example Encounter: Dummy Encounter example

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**status**: In Progress

**class**: [ActCode: AMB](http://terminology.hl7.org/6.5.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**subject**: [John Schmidt Other, DoB: 1923-07-25](Patient-ex-patient.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "ex-encounter",
  "meta" : {
    "security" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST"
      }
    ]
  },
  "status" : "in-progress",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB"
  },
  "subject" : {
    "reference" : "Patient/ex-patient"
  }
}

```
