# PMIR example Patient for create - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PMIR example Patient for create**

## Example Patient: PMIR example Patient for create

Example PMIR Patient for creating



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ex-patient-create1",
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
      "value" : "+1-734-942-9512",
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
      "text" : "4512 Bombardier Way\nRomulus, MI 48174",
      "line" : ["4512 Bombardier Way"],
      "city" : "Romulus",
      "state" : "MI",
      "postalCode" : "48174",
      "country" : "US"
    }
  ]
}

```
