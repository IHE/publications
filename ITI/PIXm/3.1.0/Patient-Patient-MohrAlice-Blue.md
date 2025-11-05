# Patient Alice Mohr (Blue) - Patient Identifier Cross-referencing for mobile (PIXm) v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient Alice Mohr (Blue)**

## Example Patient: Patient Alice Mohr (Blue)

Profile: [PIXm Patient constraints for Feed](StructureDefinition-IHE.PIXm.Patient.md)

ALICE MOHR (official) Female, DoB: 1958-01-30 ( urn:oid:1.3.6.1.4.1.21367.13.20.3000#IHEBLUE-994)

-------

| | |
| :--- | :--- |
| Active: | true |
| Contact Detail | 820 JORIE BLVD. OAK BROOK IL 60523 (home) |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "Patient-MohrAlice-Blue",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Patient"
    ]
  },
  "identifier" : [
    {
      "system" : "urn:oid:1.3.6.1.4.1.21367.13.20.3000",
      "value" : "IHEBLUE-994"
    }
  ],
  "active" : true,
  "name" : [
    {
      "use" : "official",
      "family" : "MOHR",
      "given" : ["ALICE"]
    }
  ],
  "gender" : "female",
  "birthDate" : "1958-01-30",
  "address" : [
    {
      "use" : "home",
      "line" : ["820 JORIE BLVD."],
      "city" : "OAK BROOK",
      "state" : "IL",
      "postalCode" : "60523"
    }
  ]
}

```
