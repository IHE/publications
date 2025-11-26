# Example OperationOutcome - $match Failure - Patient Demographics Query for Mobile (PDQm) v3.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example OperationOutcome - $match Failure**

## Example OperationOutcome: Example OperationOutcome - $match Failure

### Issues

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** |
| * | Error | Timeout | The operation timed out waiting for the backend server. |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "ex-match-failure",
  "issue" : [
    {
      "severity" : "error",
      "code" : "timeout",
      "details" : {
        "text" : "The operation timed out waiting for the backend server."
      }
    }
  ]
}

```
