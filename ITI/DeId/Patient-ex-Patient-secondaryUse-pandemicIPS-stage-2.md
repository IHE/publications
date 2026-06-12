# ex-Patient-secondaryUse-pandemicIPS-stage-2 - De-Identification Handbook v2.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ex-Patient-secondaryUse-pandemicIPS-stage-2**

## Example Patient: ex-Patient-secondaryUse-pandemicIPS-stage-2

Profile: [Patient (IPS)](http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Patient-uv-ips.html)

PseudoFamily Female, DoB: 1996-08-16 ( urn:oid:1.3.6.1.4.1.21367.2011.2.5.5639#IHEEX-33159)

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Deceased: | 2024-10-15 |
| Contact Detail | * -unknown-
* 3210 
 | | |
| Links: | * General Practitioner: The information is not available due to security, privacy or related reasons.
 | | |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ex-Patient-secondaryUse-pandemicIPS-stage-2",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips"]
  },
  "identifier" : [{
    "system" : "urn:oid:1.3.6.1.4.1.21367.2011.2.5.5639",
    "value" : "IHEEX-33159"
  }],
  "active" : true,
  "name" : [{
    "text" : "PseudoFamily",
    "family" : "PseudoFamily",
    "given" : ["PseudoGiven"]
  }],
  "telecom" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
      "valueCode" : "masked"
    }]
  }],
  "gender" : "female",
  "birthDate" : "1996-08-16",
  "deceasedDateTime" : "2024-10-15",
  "address" : [{
    "postalCode" : "3210"
  }],
  "generalPractitioner" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
      "valueCode" : "masked"
    }],
    "display" : "The information is not available due to security, privacy or related reasons."
  }]
}

```
