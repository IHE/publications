# Dummy DocumentReference example - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dummy DocumentReference example**

## Example DocumentReference: Dummy DocumentReference example

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Current

> **content**

### Attachments

| | | |
| :--- | :--- | :--- |
| - | **ContentType** | **Title** |
| * | text/plain | Hello World |




## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "ex-documentreference",
  "meta" : {
    "security" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST"
      }
    ]
  },
  "status" : "current",
  "content" : [
    {
      "attachment" : {
        "contentType" : "text/plain",
        "title" : "Hello World"
      }
    }
  ]
}

```
