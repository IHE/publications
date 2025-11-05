# Dummy Device example - Patient Identifier Cross-referencing for mobile (PIXm) v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dummy Device example**

## Example Device: Dummy Device example

Security Label: test health data (Details: ActReason code HTEST = 'test health data')



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "ex-device",
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
