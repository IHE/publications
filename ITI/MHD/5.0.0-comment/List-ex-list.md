# Dummy List example - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dummy List example**

## Example List: Dummy List example

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

| | |
| :--- | :--- |
| Mode: Working List | Status: Current |
|  | |

* **Items**: [DocumentReference: status = current](DocumentReference-ex-documentreference2.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "ex-list",
  "meta" : {
    "security" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST"
      }
    ]
  },
  "status" : "current",
  "mode" : "working",
  "entry" : [
    {
      "item" : {
        "reference" : "DocumentReference/ex-documentreference2"
      }
    }
  ]
}

```
