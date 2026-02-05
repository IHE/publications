# Example OperationOutcome - $match Warning - Patient Demographics Query for Mobile (PDQm) v3.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example OperationOutcome - $match Warning**

## Example OperationOutcome: Example OperationOutcome - $match Warning

### Issues

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** |
| * | Warning | Incomplete Results | The search operation timed out after reaching the limit. |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "ex-match-warning",
  "issue" : [
    {
      "severity" : "warning",
      "code" : "incomplete",
      "details" : {
        "text" : "The search operation timed out after reaching the limit."
      }
    }
  ]
}

```
