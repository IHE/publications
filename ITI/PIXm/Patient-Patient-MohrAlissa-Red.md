# Patient Alissa Mohr (Red) - Patient Identifier Cross-referencing for mobile (PIXm) v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient Alissa Mohr (Red)**

## Example Patient: Patient Alissa Mohr (Red)

Profile: [PIXm Patient constraints for Feed](StructureDefinition-IHE.PIXm.Patient.md)

ALISSA MOHR Female, DoB: 1958-01-30 ( urn:oid:1.3.6.1.4.1.21367.13.20.1000#IHERED-994)

-------

| | |
| :--- | :--- |
| Active: | true |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "Patient-MohrAlissa-Red",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Patient"
    ]
  },
  "identifier" : [
    {
      "system" : "urn:oid:1.3.6.1.4.1.21367.13.20.1000",
      "value" : "IHERED-994"
    }
  ],
  "active" : true,
  "name" : [
    {
      "family" : "MOHR",
      "given" : ["ALISSA"]
    }
  ],
  "gender" : "female",
  "birthDate" : "1958-01-30"
}

```
