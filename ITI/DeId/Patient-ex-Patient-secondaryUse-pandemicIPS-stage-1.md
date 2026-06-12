# ex-Patient-secondaryUse-pandemicIPS-stage-1 - De-Identification Handbook v2.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ex-Patient-secondaryUse-pandemicIPS-stage-1**

## Example Patient: ex-Patient-secondaryUse-pandemicIPS-stage-1

Profile: [Patient (IPS)](http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Patient-uv-ips.html)

PseudoFamily(anonymous) Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.21367.2011.2.5.5639#IHEEX-33159)

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Deceased: | 2024-06-30 |
| Marital Status: | Never Married | | |
| Contact Detail | * -unknown-
* 
 | | |
| Unknown: | * Joe Smith
 | | |
| Links: | * General Practitioner: [Heps, Simone](Practitioner-ex-Practitioner-IPS-SimoneHeps.md)
 | | |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ex-Patient-secondaryUse-pandemicIPS-stage-1",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips"]
  },
  "identifier" : [{
    "system" : "urn:oid:1.3.6.1.4.1.21367.2011.2.5.5639",
    "value" : "IHEEX-33159"
  }],
  "active" : true,
  "name" : [{
    "use" : "anonymous",
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
  "birthDate" : "1996-05-01",
  "deceasedDateTime" : "2024-06-30",
  "address" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
      "valueCode" : "masked"
    }]
  }],
  "maritalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
      "code" : "S",
      "display" : "Never Married"
    }]
  },
  "contact" : [{
    "relationship" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
        "code" : "U"
      }],
      "text" : "Friend of family"
    }],
    "name" : {
      "text" : "Joe Smith"
    }
  }],
  "generalPractitioner" : [{
    "reference" : "Practitioner/ex-Practitioner-IPS-SimoneHeps",
    "display" : "Heps, Simone"
  }]
}

```
