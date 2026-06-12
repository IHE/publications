# ex-Decedent-pandemicIPS-VRDR-stage-2 - De-Identification Handbook v2.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ex-Decedent-pandemicIPS-VRDR-stage-2**

## Example Patient: ex-Decedent-pandemicIPS-VRDR-stage-2

Profiles: [Decedent](http://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-vrdr-decedent.html), [Patient - Vital Records](http://hl7.org/fhir/us/vr-common-library/STU2/StructureDefinition-Patient-vr.html), [Patient](http://hl7.org/fhir/R4/patient.html)

Pseudo Decedent(anonymous) Female, DoB: 1996-08-16 ( Social Beneficiary Identifier: United States Social Security Number#123456789)

-------

| | |
| :--- | :--- |
| Marital Status: | Unknown |
| Contact Detail | * ph: masked(Temp)
* null null 460 GM (temp)
 |
| Contact: | * masked
 |
| Links: | * General Practitioner: The information is not available due to security, privacy or related reasons.
 |
| [NVSS SexAtDeath](http://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-NVSS-SexAtDeath.html) | Female |
| [Spouse Is Alive](http://hl7.org/fhir/us/vrdr/STU3/StructureDefinition-SpouseAlive.html) | Yes |
| [Patient Birth Place](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-birthPlace.html) |  |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ex-Decedent-pandemicIPS-VRDR-stage-2",
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
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
        "valueCode" : "masked"
      }]
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
    "text" : "Pseudo Decedent",
    "family" : "PseudoFamily",
    "given" : ["PseudoGiven"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "masked",
    "_value" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
        "valueCode" : "masked"
      }]
    },
    "use" : "temp"
  }],
  "gender" : "female",
  "birthDate" : "1996-08-16",
  "address" : [{
    "use" : "temp",
    "_use" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
        "valueCode" : "masked"
      }]
    },
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
        "valueCode" : "masked"
      }]
    }],
    "_city" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
        "valueCode" : "masked"
      }]
    },
    "postalCode" : "460",
    "country" : "GM"
  }],
  "maritalStatus" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
      "valueCode" : "masked"
    }],
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-NullFlavor",
      "code" : "UNK",
      "display" : "Unknown"
    }]
  },
  "contact" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
      "valueCode" : "masked"
    }],
    "name" : {
      "text" : "masked"
    }
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
