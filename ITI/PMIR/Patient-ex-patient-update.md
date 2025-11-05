# PMIR example Patient for update - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PMIR example Patient for update**

## Example Patient: PMIR example Patient for update

Example PMIR Patient for updating



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ex-patient-update",
  "active" : true,
  "name" : [
    {
      "use" : "official",
      "family" : "Riegel",
      "given" : ["David", "A."]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "+1-812-863-3613",
      "use" : "work"
    },
    {
      "system" : "email",
      "value" : "DavidARiegel@jourrapide.com",
      "use" : "work"
    }
  ],
  "gender" : "male",
  "birthDate" : "1985-07-12",
  "address" : [
    {
      "use" : "home",
      "type" : "both",
      "text" : "4392 Stratford Park\nOwensburg, IN 47453",
      "line" : ["4392 Stratford Park"],
      "city" : "Owensburg",
      "state" : "IN",
      "postalCode" : "47453",
      "country" : "US"
    }
  ]
}

```
