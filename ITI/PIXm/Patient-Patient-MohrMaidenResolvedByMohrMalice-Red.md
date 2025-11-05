# Patient Mohr Maiden Resolved by Mohr Alice (Red) - Patient Identifier Cross-referencing for mobile (PIXm) v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient Mohr Maiden Resolved by Mohr Alice (Red)**

## Example Patient: Patient Mohr Maiden Resolved by Mohr Alice (Red)

Profile: [PIXm Patient constraints for Feed](StructureDefinition-IHE.PIXm.Patient.md)

MAIDEN MOHR Female, DoB: 1958-01-30 ( urn:oid:1.3.6.1.4.1.21367.13.20.1000#IHERED-m94)

-------

| | |
| :--- | :--- |
| Active: | false |
| Links: | * This record replaced by: Identifier: `urn:oid:1.3.6.1.4.1.21367.13.20.1000`/IHERED-994
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "Patient-MohrMaidenResolvedByMohrMalice-Red",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Patient"
    ]
  },
  "identifier" : [
    {
      "system" : "urn:oid:1.3.6.1.4.1.21367.13.20.1000",
      "value" : "IHERED-m94"
    }
  ],
  "active" : false,
  "name" : [
    {
      "family" : "MOHR",
      "given" : ["MAIDEN"]
    }
  ],
  "gender" : "female",
  "birthDate" : "1958-01-30",
  "link" : [
    {
      "other" : {
        "identifier" : {
          "system" : "urn:oid:1.3.6.1.4.1.21367.13.20.1000",
          "value" : "IHERED-994"
        }
      },
      "type" : "replaced-by"
    }
  ]
}

```
