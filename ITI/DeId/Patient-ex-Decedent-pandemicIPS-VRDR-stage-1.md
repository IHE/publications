# ex-Decedent-pandemicIPS-VRDR-stage-1 - De-Identification Handbook v2.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ex-Decedent-pandemicIPS-VRDR-stage-1**

## Example Patient: ex-Decedent-pandemicIPS-VRDR-stage-1

Profiles: [Decedent](http://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-vrdr-decedent.html), [Patient - Vital Records](http://hl7.org/fhir/us/vr-common-library/STU2/StructureDefinition-Patient-vr.html), [Patient](http://hl7.org/fhir/R4/patient.html)

PseudoFamily(anonymous) Female, DoB: 1996-05-01 ( Social Beneficiary Identifier: SSN#123456789)

-------

| | |
| :--- | :--- |
| Marital Status: | Never Married |
| Contact Detail | * ph: 07 850 9900(Mobile)
* Grenzstraße Oberhausen 46045 GM (home)
 |
| Unknown: | * Joe Smith
 |
| Links: | * General Practitioner: [Yaser, Joseph](Bundle-e817cefe-a7c4-487a-8116-be23cf865f3f.md#http-//example.org/Practitioner/ex-Practitioner-pandemicIPS-VRDR-stage-1)
 |
| [NVSS SexAtDeath](http://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-NVSS-SexAtDeath.html) | Female |
| [Spouse Is Alive](http://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-SpouseAlive.html) | Yes |
| [Patient Birth Place](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-birthPlace.html) | Roanoke VA US |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ex-Decedent-pandemicIPS-VRDR-stage-1",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent",
    "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Patient-vr",
    "http://hl7.org/fhir/StructureDefinition/Patient"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/us/vrdr/StructureDefinition/SpouseAlive",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0136",
        "code" : "Y"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/us/vrdr/StructureDefinition/NVSS-SexAtDeath",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/administrative-gender",
        "code" : "female",
        "display" : "Female"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-birthPlace",
    "valueAddress" : {
      "city" : "Roanoke",
      "state" : "VA",
      "country" : "US"
    }
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "SB",
        "display" : "Social Beneficiary Identifier"
      }]
    },
    "system" : "http://hl7.org/fhir/sid/us-ssn",
    "value" : "123456789"
  }],
  "name" : [{
    "use" : "anonymous",
    "text" : "PseudoFamily",
    "family" : "PseudoFamily",
    "given" : ["PseudoGiven"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "07 850 9900",
    "use" : "mobile"
  }],
  "gender" : "female",
  "birthDate" : "1996-05-01",
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
    "reference" : "http://example.org/Practitioner/ex-Practitioner-pandemicIPS-VRDR-stage-1",
    "display" : "Yaser, Joseph"
  }]
}

```
