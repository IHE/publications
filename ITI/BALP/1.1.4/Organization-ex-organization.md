# Dummy Organization example - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dummy Organization example**

## Example Organization: Dummy Organization example

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**name**: nowhere



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "ex-organization",
  "meta" : {
    "security" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST"
      }
    ]
  },
  "name" : "nowhere"
}

```
