# ex-Patient-secondaryUse-pandemicIPS - De-Identification Handbook v2.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ex-Patient-secondaryUse-pandemicIPS**

## Example Patient: ex-Patient-secondaryUse-pandemicIPS

Profile: [Patient (IPS)](http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Patient-uv-ips.html)

Patricia Jordana(official) Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.21367.2011.2.5.5639#IHEEX-33159)

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Deceased: | 2024-06-30 |
| Marital Status: | Never Married | | |
| Contact Detail | * ph: 07 850 9900(Mobile)
* Grenzstraße Oberhausen 46045 GM (home)
 | | |
| Unknown: | * Joe Smith
 | | |
| Links: | * General Practitioner: [Heps, Simone](Practitioner-ex-Practitioner-IPS-SimoneHeps.md)
 | | |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ex-Patient-secondaryUse-pandemicIPS",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips"]
  },
  "identifier" : [{
    "system" : "urn:oid:1.3.6.1.4.1.21367.2011.2.5.5639",
    "value" : "IHEEX-33159"
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "text" : "Patricia Jordana",
    "family" : "Jordana",
    "given" : ["Patricia"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "07 850 9900",
    "use" : "mobile"
  }],
  "gender" : "female",
  "birthDate" : "1996-05-01",
  "deceasedDateTime" : "2024-06-30",
  "address" : [{
    "use" : "home",
    "line" : ["Grenzstraße"],
    "city" : "Oberhausen",
    "postalCode" : "46045",
    "country" : "GM"
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
