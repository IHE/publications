# PMIR example Patient for merge - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PMIR example Patient for merge**

## Example Patient: PMIR example Patient for merge

Example PMIR Patient for merging



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ex-patient-merge",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Patient.Merge"
    ]
  },
  "active" : false,
  "link" : [
    {
      "other" : {
        "reference" : "Patient/ex-patient-merged"
      },
      "type" : "replaced-by"
    }
  ]
}

```
