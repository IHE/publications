# Dummy Device authorization service example - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dummy Device authorization service example**

## Example Device: Dummy Device authorization service example

Security Label: test health data (Details: ActReason code HTEST = 'test health data')



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "ex-authz",
  "meta" : {
    "security" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST"
      }
    ]
  }
}

```
