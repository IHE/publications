# Dosaging (model) - IHE Pharmacy Medication Overview v1.0.0-preview

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dosaging (model)**

## Logical Model: Dosaging (model) 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/DosagingInformation | *Version*:1.0.0-preview |
| Active as of 2026-06-26 | *Computable Name*:DosagingInformation |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
Logical model for usage instructions for administring the requested product. Based on FHIR Dosage complex data type. 

**Usages:**

* Use this Logical Model: [Medication Treatment Line (model)](StructureDefinition-MedicationTreatmentLineLM.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.pharm.meow|current/StructureDefinition/StructureDefinition-DosagingInformation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DosagingInformation.csv), [Excel](StructureDefinition-DosagingInformation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DosagingInformation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-target",
    "valueBoolean" : true
  }],
  "url" : "https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/DosagingInformation",
  "version" : "1.0.0-preview",
  "name" : "DosagingInformation",
  "title" : "Dosaging (model)",
  "status" : "active",
  "date" : "2026-06-26T22:35:12+02:00",
  "publisher" : "Integrating the Healthcare Enterprise (IHE)",
  "contact" : [{
    "name" : "Integrating the Healthcare Enterprise (IHE)",
    "telecom" : [{
      "system" : "url",
      "value" : "http://ihe.net"
    },
    {
      "system" : "email",
      "value" : "secretary@ihe.net"
    }]
  },
  {
    "name" : "Jose Costa Teixeira",
    "telecom" : [{
      "system" : "email",
      "value" : "jose.a.teixeira@gmail.com",
      "use" : "work"
    }]
  }],
  "description" : "Logical model for usage instructions for administring the requested product. Based on FHIR Dosage complex data type.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "IHE http://www.ihe.net/Governance/#Intellectual_Property",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/DosagingInformation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "DosagingInformation",
      "path" : "DosagingInformation",
      "short" : "Dosaging (model)",
      "definition" : "Logical model for usage instructions for administring the requested product. Based on FHIR Dosage complex data type."
    },
    {
      "id" : "DosagingInformation.sequence",
      "path" : "DosagingInformation.sequence",
      "short" : "Order of the dosage instruction, in case one treatment consists of several dosaging schemes",
      "definition" : "Order of the dosage instruction, in case one treatment consists of several dosaging schemes",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "DosagingInformation.text",
      "path" : "DosagingInformation.text",
      "short" : "Free text usage/dosage instructions",
      "definition" : "Free text usage/dosage instructions",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "DosagingInformation.additionalInstruction",
      "path" : "DosagingInformation.additionalInstruction",
      "short" : "Coded instructions, e.g warnings to the patient, like 'may cause drowsiness' etc",
      "definition" : "Coded instructions, e.g warnings to the patient, like 'may cause drowsiness' etc",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "DosagingInformation.patientInstruction",
      "path" : "DosagingInformation.patientInstruction",
      "short" : "Patient oriented instructions as free text",
      "definition" : "Patient oriented instructions as free text",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "DosagingInformation.doseAndRate",
      "path" : "DosagingInformation.doseAndRate",
      "short" : "Amount of medication administered per one dose (= one timing)",
      "definition" : "Amount of medication administered per one dose (= one timing)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "DosagingInformation.doseAndRate.type",
      "path" : "DosagingInformation.doseAndRate.type",
      "short" : "The kind of dose or rate specified (e.g calculated, ordered, etc).",
      "definition" : "The kind of dose or rate specified (e.g calculated, ordered, etc).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "DosagingInformation.doseAndRate.dose",
      "path" : "DosagingInformation.doseAndRate.dose",
      "short" : "!Range or SimpleQuantity. Amount of medication per one dose. (1 tablet, 2-3 tablets, 20ml)",
      "definition" : "!Range or SimpleQuantity. Amount of medication per one dose. (1 tablet, 2-3 tablets, 20ml)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "DosagingInformation.doseAndRate.rate",
      "path" : "DosagingInformation.doseAndRate.rate",
      "short" : "!Ratio, Range or SimpleQuantity. Time period during which one defined dose is administered (per 1 hour, per 5-10 minutes)",
      "definition" : "!Ratio, Range or SimpleQuantity. Time period during which one defined dose is administered (per 1 hour, per 5-10 minutes)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Ratio"
      }]
    },
    {
      "id" : "DosagingInformation.timing",
      "path" : "DosagingInformation.timing",
      "short" : "When medication should be administered (period, time of day, frequency, etc)",
      "definition" : "When medication should be administered (period, time of day, frequency, etc)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "DosagingInformation.timing.event",
      "path" : "DosagingInformation.timing.event",
      "short" : "Exact date and/or time of the administration",
      "definition" : "Exact date and/or time of the administration",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "DosagingInformation.timing.code",
      "path" : "DosagingInformation.timing.code",
      "short" : "Timing abbreviation (AM - morning, Q4H - once in every 4 hours, BID - twice a day, etc)",
      "definition" : "Timing abbreviation (AM - morning, Q4H - once in every 4 hours, BID - twice a day, etc)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "DosagingInformation.timing.repeat",
      "path" : "DosagingInformation.timing.repeat",
      "short" : "Repetition of the administration.",
      "definition" : "Repetition of the administration.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "DosagingInformation.timing.repeat.bounds",
      "path" : "DosagingInformation.timing.repeat.bounds",
      "short" : "Time bounds for the treatment (current dosaging scheme). Only one of the following can exist.",
      "definition" : "Time bounds for the treatment (current dosaging scheme). Only one of the following can exist.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "DosagingInformation.timing.repeat.bounds.duration",
      "path" : "DosagingInformation.timing.repeat.bounds.duration",
      "short" : "Number of time units, e.g 10 days",
      "definition" : "Number of time units, e.g 10 days",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "DosagingInformation.timing.repeat.bounds.range",
      "path" : "DosagingInformation.timing.repeat.bounds.range",
      "short" : "A range of numbers of time units, 5-10 days",
      "definition" : "A range of numbers of time units, 5-10 days",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }]
    },
    {
      "id" : "DosagingInformation.timing.repeat.bounds.period",
      "path" : "DosagingInformation.timing.repeat.bounds.period",
      "short" : "Start and end date, 05.08.2023 - 10.08.2023",
      "definition" : "Start and end date, 05.08.2023 - 10.08.2023",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "DosagingInformation.timing.repeat.count",
      "path" : "DosagingInformation.timing.repeat.count",
      "short" : "Number of times to repeat, exact or range",
      "definition" : "Number of times to repeat, exact or range",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "DosagingInformation.timing.repeat.count.count",
      "path" : "DosagingInformation.timing.repeat.count.count",
      "short" : "Number of times (e.g 'once', '10 times')",
      "definition" : "Number of times (e.g 'once', '10 times')",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "DosagingInformation.timing.repeat.count.countMax",
      "path" : "DosagingInformation.timing.repeat.count.countMax",
      "short" : "Maximum number of times (e.g 'maximum 10 times')",
      "definition" : "Maximum number of times (e.g 'maximum 10 times')",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "DosagingInformation.timing.repeat.duration",
      "path" : "DosagingInformation.timing.repeat.duration",
      "short" : "Duration of one administration, exact or range",
      "definition" : "Duration of one administration, exact or range",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "DosagingInformation.timing.repeat.duration.duration",
      "path" : "DosagingInformation.timing.repeat.duration.duration",
      "short" : "Duration of administration (e.g '5 minutes', '1 hour')",
      "definition" : "Duration of administration (e.g '5 minutes', '1 hour')",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "DosagingInformation.timing.repeat.duration.durationMax",
      "path" : "DosagingInformation.timing.repeat.duration.durationMax",
      "short" : "Maximum duration of administration (e.g 'maximum 1 hour')",
      "definition" : "Maximum duration of administration (e.g 'maximum 1 hour')",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "DosagingInformation.timing.repeat.frequency",
      "path" : "DosagingInformation.timing.repeat.frequency",
      "short" : "Frequency of intake/administration (e.g 'three times a day')",
      "definition" : "Frequency of intake/administration (e.g 'three times a day')",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "DosagingInformation.timing.repeat.frequency.numberOfTimes",
      "path" : "DosagingInformation.timing.repeat.frequency.numberOfTimes",
      "short" : "Number of times per period (e.g '3 times')",
      "definition" : "Number of times per period (e.g '3 times')",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "DosagingInformation.timing.repeat.frequency.maxNumberOfTimes",
      "path" : "DosagingInformation.timing.repeat.frequency.maxNumberOfTimes",
      "short" : "Maximum number of times per period (e.g. 'maximum 3 times')",
      "definition" : "Maximum number of times per period (e.g. 'maximum 3 times')",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "DosagingInformation.timing.repeat.frequency.period",
      "path" : "DosagingInformation.timing.repeat.frequency.period",
      "short" : "Duration to which the frequency applies (e.g '... / 1 day')",
      "definition" : "Duration to which the frequency applies (e.g '... / 1 day')",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "DosagingInformation.timing.repeat.frequency.periodMax",
      "path" : "DosagingInformation.timing.repeat.frequency.periodMax",
      "short" : "Upper limit of the period (e.g ... / 4-6 hours)",
      "definition" : "Upper limit of the period (e.g ... / 4-6 hours)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "DosagingInformation.timing.repeat.dayOfWeek",
      "path" : "DosagingInformation.timing.repeat.dayOfWeek",
      "short" : "The day of the week of administration, e.g Mon, Tue, etc",
      "definition" : "The day of the week of administration, e.g Mon, Tue, etc",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "DosagingInformation.timing.repeat.timeOfDay",
      "path" : "DosagingInformation.timing.repeat.timeOfDay",
      "short" : "Time of day of administration (e.g '10:00')",
      "definition" : "Time of day of administration (e.g '10:00')",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "DosagingInformation.timing.repeat.eventTime",
      "path" : "DosagingInformation.timing.repeat.eventTime",
      "short" : "An event the administration is bound to, e.g 'before meal', '30 min before meal'",
      "definition" : "An event the administration is bound to, e.g 'before meal', '30 min before meal'",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "DosagingInformation.timing.repeat.eventTime.when",
      "path" : "DosagingInformation.timing.repeat.eventTime.when",
      "short" : "Time period or event ('before meal', 'immediately', 'morning')",
      "definition" : "Time period or event ('before meal', 'immediately', 'morning')",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "DosagingInformation.timing.repeat.eventTime.offset",
      "path" : "DosagingInformation.timing.repeat.eventTime.offset",
      "short" : "minutes from event, before or after (?not sure how to show before/after with only positive integers)",
      "definition" : "minutes from event, before or after (?not sure how to show before/after with only positive integers)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "DosagingInformation.asNeeded",
      "path" : "DosagingInformation.asNeeded",
      "short" : "Take as needed",
      "definition" : "Take as needed",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "DosagingInformation.asNeededFor",
      "path" : "DosagingInformation.asNeededFor",
      "short" : "Take as needed for the coded reason",
      "definition" : "Take as needed for the coded reason",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "DosagingInformation.bodySite",
      "path" : "DosagingInformation.bodySite",
      "short" : "Body site of administration",
      "definition" : "Body site of administration",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "DosagingInformation.routeOfAdministration",
      "path" : "DosagingInformation.routeOfAdministration",
      "short" : "Route of administration",
      "definition" : "Route of administration",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "DosagingInformation.methodOfAdministration",
      "path" : "DosagingInformation.methodOfAdministration",
      "short" : "Method of administration",
      "definition" : "Method of administration",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "DosagingInformation.maxDose",
      "path" : "DosagingInformation.maxDose",
      "short" : "Maximum dose for the patient",
      "definition" : "Maximum dose for the patient",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "DosagingInformation.maxDose.maxDosePerPeriod",
      "path" : "DosagingInformation.maxDose.maxDosePerPeriod",
      "short" : "Upper limit on medication per unit of time",
      "definition" : "Upper limit on medication per unit of time",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Ratio"
      }]
    },
    {
      "id" : "DosagingInformation.maxDose.maxDosePerAdministration",
      "path" : "DosagingInformation.maxDose.maxDosePerAdministration",
      "short" : "Upper limit on medication per one administration",
      "definition" : "Upper limit on medication per one administration",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "DosagingInformation.maxDose.maxDosePerLifetime",
      "path" : "DosagingInformation.maxDose.maxDosePerLifetime",
      "short" : "Upper limit on medication per lifetime of the patient",
      "definition" : "Upper limit on medication per lifetime of the patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    }]
  }
}

```
