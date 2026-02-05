# Dummy MeasureReport example - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dummy MeasureReport example**

## Example MeasureReport: Dummy MeasureReport example

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Pending

**type**: Summary

**measure**: `http://example.org/fhir/uv/saner/Measure/FEMADailyHospitalCOVID19Reporting`

**period**: 2020-04-05 --> 2020-04-05



## Resource Content

```json
{
  "resourceType" : "MeasureReport",
  "id" : "ex-measurereport",
  "meta" : {
    "security" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST"
      }
    ]
  },
  "status" : "pending",
  "type" : "summary",
  "measure" : "http://example.org/fhir/uv/saner/Measure/FEMADailyHospitalCOVID19Reporting",
  "period" : {
    "start" : "2020-04-05",
    "end" : "2020-04-05"
  }
}

```
