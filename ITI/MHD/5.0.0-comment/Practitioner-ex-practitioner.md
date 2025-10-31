# Dummy Practitioner example - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dummy Practitioner example**

## Example Practitioner: Dummy Practitioner example

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**telecom**: [JohnMoehrke@gmail.com](mailto:JohnMoehrke@gmail.com)



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "ex-practitioner",
  "meta" : {
    "security" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST"
      }
    ]
  },
  "telecom" : [
    {
      "system" : "email",
      "value" : "JohnMoehrke@gmail.com"
    }
  ]
}

```
