# Artifacts Summary - IHE Pharmacy Medication Overview v1.0.0-preview

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [Medication Overview Consumer](CapabilityStatement-MedicationOverviewConsumer.md) | CapabilityStatement for the Medication Overview Consumer actor in the IHE PHARM MEOW profile.The Consumer is a client that queries a Medication Overview Repository or Creator to retrieve a patient's medication overview. It supports PHARM-11 (Query Medication Resources) as a required capability, and optionally PHARM-12 (Retrieve Medication Document) when the Document Option is declared. |
| [Medication Overview Responder](CapabilityStatement-MedicationOverviewResponder.md) | CapabilityStatement for the Medication Overview Responder actor in the IHE PHARM MEOW profile.The Responder is a server that stores and/or assembles medication overview data for patients and serves it in response to Consumer requests. It supports PHARM-11 (Query Medication Resources) as a required capability, and optionally PHARM-12 (Retrieve Medication Document) when the Document Option is declared.How the Responder obtains its data (continuous store, on-demand aggregation, document assembly) is an implementation concern outside the scope of this profile. |

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Dosaging (model)](StructureDefinition-DosagingInformation.md) | Logical model for usage instructions for administring the requested product. Based on FHIR Dosage complex data type. |
| [Medication Overview (model)](StructureDefinition-MedicationOverviewLM.md) | Logical model for the whole medication overview (medication schema) |
| [Medication Treatment (model)](StructureDefinition-MedicationTreatmentLM.md) | Logical model for subgroups of treatment lines that are somehow related to eachother (the same purpose, other) |
| [Medication Treatment Line (model)](StructureDefinition-MedicationTreatmentLineLM.md) | Logical model for representing one line/medication in medication overview. |
| [Medicinal product (model)](StructureDefinition-MedicinalProductLM.md) | Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and treatment lines. Each of those may have different restrictions in FHIR profile. |
| [Patient (model)](StructureDefinition-PatientLM.md) | Logical model for patient (basic data relevant for this use case) |
| [Practitioner (model)](StructureDefinition-PractitionerLM.md) | Logical model for practitioner (basic data relevant for this use case) |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Medication Overview Bundle](StructureDefinition-MedicationOverview.md) | The profile for the full Medication overview as a Bundle type Document |
| [Medication Overview Composition](StructureDefinition-MedicationOverviewComposition.md) | The profile for how to organize the information in a medication overview |
| [Medication Treatment](StructureDefinition-MedicationTreatment.md) | The profile for Medication Treatment in a Medication Record - a set of treatment lines/items |
| [Medication Treatment Line](StructureDefinition-MedicationTreatmentLine.md) | The profile for Medication Treatment Line - a single recorded item/line of a medication treatment |
| [Medicinal product](StructureDefinition-IHEMedication.md) | Medication for clinical use cases. This could be a branded product or a generic concept, also allowing describing pack size and components of complex products. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Medication - Classification](StructureDefinition-ihe-ext-medication-classification.md) | Medication classification/category. Allows the product to be classified by various systems, e.g ATC, narcotic class, legal status of supply, etc.. |
| [Medication - Device](StructureDefinition-ihe-ext-medication-device.md) | Device, typically an administration device, included in the medicinal product. |
| [Medication - Product Name](StructureDefinition-ihe-ext-medication-productname.md) | Name of the medicinal product. Optionally the type of name (Full official name, prescribing name, invented name) and language of the name can be specified. The extension is a simplified approach of what is used in MedicinalProductDefinition resource. |
| [Medication - Size of Item](StructureDefinition-ihe-ext-medication-sizeofitem.md) | Size of a manufactured item or unit of presentation. For example, size of one vial in a package that may contain several vials. |
| [MedicationStatement - Substitution](StructureDefinition-ihe-ext-medicationstatement-substitution.md) | Whether and which type of substitution is allowed for this medication treatment line |
| [MedicationStatement - Verification Information](StructureDefinition-ihe-ext-medicationstatement-verificationinformation.md) | Verification of medication line. The overview is verified as a whole, but each line is equipped with the information. The actual functional meaning and impact of this validation depends on the implementation. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [01A-Cefuroxime1500GenericExplicit](Medication-01A-Cefuroxime1500GenericExplicit.md) | 1A. Cefuroxime 1500mg (1.5g) powder for solution in a vial. Generic product, defined by attributes. |
| [01B-Cefuroxime1500GenericConcept](Medication-01B-Cefuroxime1500GenericConcept.md) | 1B. Cefuroxime 1500mg (1.5g) powder for solution in a vial. Generic product, defined by a code system (receiving system is expected to have access to the code system for additional attributes or display names). |
| [01C-Cefuroxime1500Branded](Medication-01C-Cefuroxime1500Branded.md) | 1C. Cefuroxime 1500mg (1.5g) powder for solution in a vial. Branded packaged product, defined by attributes. |
| [02A-ClotrimazoleCanifugCremolum](Medication-02A-ClotrimazoleCanifugCremolum.md) | 2A. Clotrimazole cream 10mg/g and 6 pessaries 100g. Branded packaged product, consisting of different medication items. Defined by attributes. |
| [02A1-CanifugCremolumCreamItem](Medication-02A1-CanifugCremolumCreamItem.md) | 2A2. Clotrimazole cream (10mg/g, 1 tube of 20g) as part of Canifug Cremolum product (ISO IDMP manufactured item) |
| [02A2-CanifugCremolumPessaryItem](Medication-02A2-CanifugCremolumPessaryItem.md) | 2A1. Clotrimazole pessary (6 pessaries of 100mg) as part of Canifug Cremolum product (ISO IDMP manufactured item) |
| [03B-VitaminBComplexBranded](Medication-03B-VitaminBComplexBranded.md) | 3B. Milgamma N, B-vitamin complex. Branded packaged product, defined by attributes. |

