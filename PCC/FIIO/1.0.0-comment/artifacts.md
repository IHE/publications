# Artifacts Summary - FHIR International Patient Summary v1.0.0-comment

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [IPS Content Consumer](CapabilityStatement-IHE.IPS.Content-Consumer.md) | The IPS[Content Consumer](volume-1.md#Content-Consumer) |
| [IPS Content Creator](CapabilityStatement-IHE.IPS.Content-Creator.md) | The IPS[Content Creator](volume-1.md#Content-Creator) |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [FHIR International Patient Summary Implementation Options - Complete Option Composition](StructureDefinition-IHE.FIPS.IO.Complete.Option.Composition.md) | An International Patient Summary Document that makes all of the optional sections deffined by HL7 into Must support sections. |
| [IHE FHIR IPS Complete Option Bundle](StructureDefinition-IHE.FIPS.Complete.Option.Bundle.md) | This FHir IPS Bundle Incorperates the Complete Testing option for IPS. This Structure definition binds the Complete Option Composition to the bundle, where all optional sections (e.g., Advanced Directives, Functional Status, History of Past Illnesses, History of Pregnancy, Plan of Care, Social History, and Vital Signs) are now Must Support sections. |
| [IHE FHIR IPS ODH Option Bundle](StructureDefinition-IHE.FIPS.ODH.Option.Bundle.md) | This Bundle Deffines the additional requirements of the Occupational Data For Health (ODH) Data Elements that may be incorperated into a patient's IPS Bundle.These data Elements utilize the International Labor Organization Codes for to occupation and industry.In addition to the Entry requirments of IPS this Bundle requires the support of at least one of the following ODH Data Elements:* Past or Present Job
* Usual Work
It also allows optional support for the following ODH Data Elements:* Employment Status
* Retirement Date
* CombatZone Period
 |
| [International Patient Summary Occupational Data For Health Implementation Option Composition](StructureDefinition-IHE.FIPS.IO.ODH.Option.Composition.md) | An International Patient Summary Document that contains the Occupational Data for Health Information within the Social History Section. This composition builds off of the origional IPS Composition deffined by HL7 with the additional constraint of the Social History section now being a Must Support section and the additonal requirement that the Occupational Data for health observations in the section are conformant to the ODH specification. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [International Patient Summary](Composition-313df1ad-9094-4a93-a0cc-64ee25d3d327.md) | This Example Composition Represents the IPS Compsition Structure that expresses data in every section in the patient's IPS Document, conformant to the Complete Data Implementaion Option. |
| [Patient Summary of Frank MissingData](Composition-567f7a70-6f0d-49c5-a6ca-20eff88e7c8e.md) | This Example Composition is used to represent the Representation of Missing Data in a patient's IPS Composition. |
| [Patient Summary of Genny Works](Composition-2a7a5f03-9581-4677-ba18-fbd3b221f601.md) | This Example Composition Represents the IPS Composition Structure that expresses Occupation Data in the patient's record, conformant to the ODH Implementaion Option. |
| [ex-Bundle-IPS-Frank-MissingData](Bundle-ex-bundle-ips-frank-missingdata.md) | This Example Bundle is used to represent the Representation of Missing Data in a patient's IPS Bundle. |
| [ex-Bundle-IPS-ODH-Genny-Works](Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.md) | This Example Bundle Represents the IPS Bundle Structure that expresses Occupation Data in the patient's record, conformant to the ODH Implementaion Option |
| [ex-Bundle-secondaryUse-pandemnicIPS-Patricia-Jordana](Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.md) | This Example Bundle Represents the IPS Bundle Structure that expresses data inin every section in the patient's IPS Document, conformant to the Complete Data Implementaion Option. |

