# Example OperationOutcome - sourceIdentifier Patient Identifier not found - Patient Identifier Cross-referencing for mobile (PIXm) v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example OperationOutcome - sourceIdentifier Patient Identifier not found**

## Example OperationOutcome: Example OperationOutcome - sourceIdentifier Patient Identifier not found

### Issues

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** |
| * | Error | Not Found | sourceIdentifier Patient Identifier not found |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "pixm-response-error-not-found",
  "issue" : [
    {
      "severity" : "error",
      "code" : "not-found",
      "details" : {
        "text" : "sourceIdentifier Patient Identifier not found"
      }
    }
  ]
}

```
