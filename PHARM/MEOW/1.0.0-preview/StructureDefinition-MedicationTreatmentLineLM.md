# Medication Treatment Line (model) - IHE Pharmacy Medication Overview v1.0.0-preview

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication Treatment Line (model)**

## Logical Model: Medication Treatment Line (model) 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicationTreatmentLineLM | *Version*:1.0.0-preview |
| Active as of 2026-06-26 | *Computable Name*:MedicationTreatmentLineLM |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
Logical model for representing one line/medication in medication overview. 

**Usages:**

* Use this Logical Model: [Medication Overview (model)](StructureDefinition-MedicationOverviewLM.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.pharm.meow|current/StructureDefinition/StructureDefinition-MedicationTreatmentLineLM.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MedicationTreatmentLineLM.csv), [Excel](StructureDefinition-MedicationTreatmentLineLM.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MedicationTreatmentLineLM",
  "extension" : [{
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-target",
    "valueBoolean" : true
  }],
  "url" : "https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicationTreatmentLineLM",
  "version" : "1.0.0-preview",
  "name" : "MedicationTreatmentLineLM",
  "title" : "Medication Treatment Line (model)",
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
  "description" : "Logical model for representing one line/medication in medication overview.",
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
  "type" : "https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicationTreatmentLineLM",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "MedicationTreatmentLineLM",
      "path" : "MedicationTreatmentLineLM",
      "short" : "Medication Treatment Line (model)",
      "definition" : "Logical model for representing one line/medication in medication overview."
    },
    {
      "id" : "MedicationTreatmentLineLM.identifier",
      "path" : "MedicationTreatmentLineLM.identifier",
      "short" : "Unique business identifier(s) for the medication treatment line",
      "definition" : "Unique business identifier(s) for the medication treatment line",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.subject",
      "path" : "MedicationTreatmentLineLM.subject",
      "short" : "The patient for whom the medication treatment line applies",
      "definition" : "The patient for whom the medication treatment line applies",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.medication[x]",
      "path" : "MedicationTreatmentLineLM.medication[x]",
      "short" : "Medicinal product for which the treatment line refers to. Identification or sufficient description of the product.",
      "definition" : "Medicinal product for which the treatment line refers to. Identification or sufficient description of the product.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicinalProductLM"]
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.status",
      "path" : "MedicationTreatmentLineLM.status",
      "short" : "Status of the treatment line entry",
      "definition" : "Status of the record, not the status of the treatment.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/medication-statement-status"
      }
    },
    {
      "id" : "MedicationTreatmentLineLM.version",
      "path" : "MedicationTreatmentLineLM.version",
      "short" : "Business version of the treatment line",
      "definition" : "Business version of the treatment line",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.timestamp",
      "path" : "MedicationTreatmentLineLM.timestamp",
      "short" : "Timestamp of the version of the treatment line",
      "definition" : "Timestamp of the version of the treatment line",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.treatmentStatus",
      "path" : "MedicationTreatmentLineLM.treatmentStatus",
      "short" : "The state of the actual treatment - taking, not taken...",
      "definition" : "The state of the actual treatment - taking, not taken...",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.treatmentStatusReasonCode",
      "path" : "MedicationTreatmentLineLM.treatmentStatusReasonCode",
      "short" : "The reason - coded - for the treatment status - i.e. adverse events, refusal...",
      "definition" : "The reason - coded - for the treatment status - i.e. adverse events, refusal...",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.treatmentStatusReasonText",
      "path" : "MedicationTreatmentLineLM.treatmentStatusReasonText",
      "short" : "The reason - free text - for the treatment status - i.e. adverse events, refusal...",
      "definition" : "The reason - free text - for the treatment status - i.e. adverse events, refusal...",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.effectivePeriod",
      "path" : "MedicationTreatmentLineLM.effectivePeriod",
      "short" : "The period of time the treatment is in effect",
      "definition" : "The period of time the treatment is in effect",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.verificationInformation",
      "path" : "MedicationTreatmentLineLM.verificationInformation",
      "short" : "Verification of medication line",
      "definition" : "Verification of medication line. The overview is verified as a whole, but each line is equipped with the information. The actual functional meaning and impact of this validation depends on the implementation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.verificationInformation.verifier",
      "path" : "MedicationTreatmentLineLM.verificationInformation.verifier",
      "short" : "HCP (or device, if authorized) verifying the treatments/overview",
      "definition" : "HCP (or device, if authorized) verifying the treatments/overview",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.verificationInformation.verificationTime",
      "path" : "MedicationTreatmentLineLM.verificationInformation.verificationTime",
      "short" : "The date and time when this medication treatment line was verified",
      "definition" : "The date and time when this medication treatment line was verified",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.category",
      "path" : "MedicationTreatmentLineLM.category",
      "short" : "Whatever category for the treatment line. Categorisation of treatment lines is implementation-specific.",
      "definition" : "Whatever category for the treatment line. Categorisation of treatment lines is implementation-specific.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.medicationTreatment",
      "path" : "MedicationTreatmentLineLM.medicationTreatment",
      "short" : "Reference or identifier of the group of lines that belong together",
      "definition" : "Reference or identifier of the group of lines that belong together",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicationTreatmentLM"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.indication",
      "path" : "MedicationTreatmentLineLM.indication",
      "short" : "Reason why the product has been prescribed to the patient, or why the patient claims to be taking it",
      "definition" : "Reason why the product has been prescribed to the patient, or why the patient claims to be taking it",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.indicationText",
      "path" : "MedicationTreatmentLineLM.indicationText",
      "short" : "Textual explanation for why the medication has been prescribed or why the patient is taking it. This might not be allowed by some implementations.",
      "definition" : "Textual explanation for why the medication has been prescribed or why the patient is taking it. This might not be allowed by some implementations.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.intendedUse",
      "path" : "MedicationTreatmentLineLM.intendedUse",
      "short" : "Intended Use of the medication - prophylaxis, therapy...",
      "definition" : "Intended Use of the medication - prophylaxis, therapy...",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.usageInstructions",
      "path" : "MedicationTreatmentLineLM.usageInstructions",
      "short" : "Instructions about administration of the product",
      "definition" : "Instructions about requested or actual administration of the product. This is repeatable to support complex or concurrent dosage instructions. e.g. take 1 per day for 3 weeks; 2x PRN",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/DosagingInformation"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.preparationInstructions",
      "path" : "MedicationTreatmentLineLM.preparationInstructions",
      "short" : "Additional instructions about preparation or dispense",
      "definition" : "Additional instructions about preparation or dispense",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.comment",
      "path" : "MedicationTreatmentLineLM.comment",
      "short" : "Comment on the individual line",
      "definition" : "Comment on the individual line",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.comment.author",
      "path" : "MedicationTreatmentLineLM.comment.author",
      "short" : "Author of the comment (Pharmacist, doctor, social carer, patient, device, related person)",
      "definition" : "Author of the comment (Pharmacist, doctor, social carer, patient, device, related person)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.comment.date",
      "path" : "MedicationTreatmentLineLM.comment.date",
      "short" : "time of comment",
      "definition" : "time of comment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.comment.commentText",
      "path" : "MedicationTreatmentLineLM.comment.commentText",
      "short" : "content of the comment",
      "definition" : "content of the comment",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.substitution",
      "path" : "MedicationTreatmentLineLM.substitution",
      "short" : "Whether and which type of substitution is allowed for this medication treatment line",
      "definition" : "Whether and which type of substitution is allowed for this medication treatment line",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.substitution.substitutionType",
      "path" : "MedicationTreatmentLineLM.substitution.substitutionType",
      "short" : "The type of substitution that is allowed.",
      "definition" : "The type of substitution that is allowed.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.substitution.substitutionTypeReason",
      "path" : "MedicationTreatmentLineLM.substitution.substitutionTypeReason",
      "short" : "Coded reason for the substitution requirement",
      "definition" : "Coded reason for the substitution requirement",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.substitution.substitutionTypeReasonText",
      "path" : "MedicationTreatmentLineLM.substitution.substitutionTypeReasonText",
      "short" : "Textual reason for the substitution requirement",
      "definition" : "Textual reason for the substitution requirement",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.recordingMetadata",
      "path" : "MedicationTreatmentLineLM.recordingMetadata",
      "short" : "Metadata about reporting/authoring of the treatment line",
      "definition" : "Metadata about reporting/authoring of the treatment line",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.recordingMetadata.recorder",
      "path" : "MedicationTreatmentLineLM.recordingMetadata.recorder",
      "short" : "Person entering the statement by initiating a treatment or documenting a statement by a patient or another professional. The recorder may be different from the author.",
      "definition" : "Person entering the statement by initiating a treatment or documenting a statement by a patient or another professional. The recorder may be different from the author.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.recordingMetadata.recordedTime",
      "path" : "MedicationTreatmentLineLM.recordingMetadata.recordedTime",
      "short" : "Time of creation of the treatment line",
      "definition" : "Time of creation of the treatment line",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.recordingMetadata.patientReported",
      "path" : "MedicationTreatmentLineLM.recordingMetadata.patientReported",
      "short" : "The treatment line has been documented according to patient's statement",
      "definition" : "The treatment line has been documented according to patient's statement",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.recordingMetadata.responsibleAuthor",
      "path" : "MedicationTreatmentLineLM.recordingMetadata.responsibleAuthor",
      "short" : "HCP who takes the clinical decision for the medication treatment line. If an author is not present, the responsibility of the medication line is with the recorder.",
      "definition" : "HCP who takes the clinical decision for the medication treatment line. If an author is not present, the responsibility of the medication line is with the recorder.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/PractitionerLM"]
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.recordingMetadata.authoringTime",
      "path" : "MedicationTreatmentLineLM.recordingMetadata.authoringTime",
      "short" : "The time the clinical decision was made by the responsibleAuthor. Normally, the same time as recording time when it's the same person.",
      "definition" : "The time the clinical decision was made by the responsibleAuthor. Normally, the same time as recording time when it's the same person.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.derivedFrom",
      "path" : "MedicationTreatmentLineLM.derivedFrom",
      "short" : "Any data object that this treatment line is derived from",
      "definition" : "Any data object that this treatment line is derived from",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.derivedFrom.request",
      "path" : "MedicationTreatmentLineLM.derivedFrom.request",
      "short" : "Prescriptions that have been the source for creating the unverified treatment line",
      "definition" : "Prescriptions that have been the source for creating the unverified treatment line",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.derivedFrom.statement",
      "path" : "MedicationTreatmentLineLM.derivedFrom.statement",
      "short" : "Medication-related statements from patients, pharmacists, or other HCPs, that are the source for creating the unverified treatment line",
      "definition" : "Medication-related statements from patients, pharmacists, or other HCPs, that are the source for creating the unverified treatment line",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.derivedFrom.dispensation",
      "path" : "MedicationTreatmentLineLM.derivedFrom.dispensation",
      "short" : "Related dispensations that are not necessarily related to existing prescriptions/requests/statements.",
      "definition" : "Related dispensations that are not necessarily related to existing prescriptions/requests/statements.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.derivedFrom.administration",
      "path" : "MedicationTreatmentLineLM.derivedFrom.administration",
      "short" : "Related administrations that are not necessarily related to existing prescriptions/requests/statements.",
      "definition" : "Related administrations that are not necessarily related to existing prescriptions/requests/statements.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "MedicationTreatmentLineLM.derivedFrom.other",
      "path" : "MedicationTreatmentLineLM.derivedFrom.other",
      "short" : "Other related sources of information - CarePlan, Immunizations, Documents (e.g. Discharge letters)...",
      "definition" : "Other related sources of information - CarePlan, Immunizations, Documents (e.g. Discharge letters)...",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    }]
  }
}

```
