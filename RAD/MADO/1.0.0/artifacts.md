# Artifacts Summary - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Requirements: Actor Definitions 

The following artifacts define the types of individuals and/or systems that will interact as part of the use cases covered by this implementation guide.

| | |
| :--- | :--- |
| [ActorDefinition: Imaging Manifest Responder](ActorDefinition-MadoImagingManifestResponder.md) | The actor responsible for producing the Imaging Manifest resources. |

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [MADO Document Consumer (client)](CapabilityStatement-IHE.RAD.MADO.DocumentConsumer.md) | IHE RAD Manifest based Access to DICOM Objects(MADO) - Document Consumer (client). It extends MHD [Document Consumer (client)](https://build.fhir.org/ig/IHE/ITI.MHD/CapabilityStatement-IHE.MHD.DocumentConsumer.html). |
| [MADO Document Responder (server)](CapabilityStatement-IHE.RAD.MADO.DocumentResponder.md) | IHE RAD Manifest based Access to DICOM Objects(MADO) - Document Responder (server). It extends MHD [Document Responder (client)](https://build.fhir.org/ig/IHE/ITI.MHD/CapabilityStatement-IHE.MHD.DocumentResponder.html). |

### Behavior: Search Parameters 

These define the properties by which a RESTful server can be searched. They can also be used for sorting and including related resources.

| | |
| :--- | :--- |
| [SearchParameterDocumentReferenceAccessionNumber](SearchParameter-SearchParameterDocumentReferenceAccessionNumber.md) | Searches for document references with a specific Accession Number. |
| [SearchParameterDocumentReferenceBodySite](SearchParameter-SearchParameterDocumentReferenceBodySite.md) | Searches for document references with a specific anatomical region. |
| [SearchParameterDocumentReferenceModality](SearchParameter-SearchParameterDocumentReferenceModality.md) | Searches for document references with a specific modality. |
| [SearchParameterDocumentReferenceStudyInstanceUid](SearchParameter-SearchParameterDocumentReferenceStudyInstanceUid.md) | Searches for document references with a specific Study Instance UID. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Endpoint: MADO WADO endpoint](StructureDefinition-MadoWadoEndpoint.md) | This profile defines a WADO endpoint for accessing imaging study content. [MADO WADO Endpoint](Endpoint-wado-endpoint-with-url.md) holds an example of a endpoint with a `RetrieveLocationUid` and an address. |
| [Endpoint: MADO profile for Web Viewer endpoints](StructureDefinition-MadoWebViewerEndpoint.md) | This profile defines the Web Viewer endpoint for accessing imaging study content. The URL in the Endpoint SHALL be a fully populated URL that contains all the information required to the launch the viewer to this study. |
| [MADO Composition](StructureDefinition-MadoComposition.md) | A FHIR Composition profile for MADO manifests is needed as FHIR Bundles of type `document` require a `Composition` resource as the first entry. Instances of this profile can be rendered in normal document based system without the need for the Client to understand the MADO-specific profiles, while still allowing to represent the essential information of the manifest such as patient, modality, and anatomical region. |
| [MADO Creator](StructureDefinition-MadoCreator.md) | A profile for the Device resource that represents the creator of an FHIR Imaging Study Manifest. The primary goal is to communicate the fields:* type = MadoDeviceType#mado-creator "MADO Creator"
* manufacturer
* owner (Reference to MadoCreatorOrganization)
 |
| [MADO Creator Organization](StructureDefinition-MadoCreatorOrganization.md) | Profile on Organization that specifies the required elements for the organization that creates MADO manifests. |
| [MADO FHIR Imaging Study Manifest Bundle](StructureDefinition-MadoFhirBundle.md) | Profile for FHIR Bundles used as an FHIR Imaging Study Manifest in the MADO context. It includes constraints and extensions specific to FHIR Imaging Study Manifest, such as the type of study, the clinical specialty, and the anatomical region of interest. |
| [MADO Imaging Study](StructureDefinition-MadoImagingStudy.md) | Profile for ImagingStudy resources that represent the imaging studies manifest in the MADO context. It includes additional constraints and extensions specific to the MADO context, such as the study modality, the clinical specialty, the anatomical region of interest, the presence of significant images. |
| [MADO MHD DocumentReference Profile for DICOM KOS Imaging Manifests](StructureDefinition-MadoDicomKosDocumentReference.md) | MADO specific profile for the IHE-MHD Document Reference for MADO DICOM KOS Manifests that includes the MADO specific content format, the extensions related to body-site and modality, and the definition on where `StudyInstanceUID` and `AccessionNumber` are stored.This profile requires `context.period` and copies most of the restrictions defined in the [MHD DocumentReference Comprehensive](https://profiles.ihe.net/ITI/MHD/StructureDefinition-IHE.MHD.Comprehensive.DocumentReference.html) profiles (except `securityLabel`). |
| [MADO MHD DocumentReference Profile for FHIR Imaging Study Manifest](StructureDefinition-MadoFhirDocumentReference.md) | MADO specific profile for the IHE-MHD Document Reference for FHIR Imaging Study Manifest that includes the MADO specific content format, the extensions related to body-site and modality, and the definition on where `StudyInstanceUID` and `AccessionNumber` are stored.This profile requires `context.period` and copies most of the restrictions defined in the [MHD DocumentReference Comprehensive](https://profiles.ihe.net/ITI/MHD/StructureDefinition-IHE.MHD.Comprehensive.DocumentReference.html) profiles (except `securityLabel`). |
| [MADO Patient](StructureDefinition-MadoPatient.md) | Profile on Patient that specifies the required elements for the patient that is the subject of the manifest. |
| [MADO Requested Procedure](StructureDefinition-MadoRequestedProcedure.md) | A profile for the ServiceRequest resource that represents the Requested Procedure (see 6.X.2.8.1 Referenced Request Macro Description). |

### Structures: Data Type Profiles 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [MADO Accession Number Identifier](StructureDefinition-MadoAccessionNumberIdentifier.md) | Profile for the Accession Number Identifier used in the MADO context. This profile is used for the Identifier that represents the Accession Number in the MADO context. It includes additional constraints and extensions specific to the MADO context, such as the value set for the type of identifier and the fixed value for the system of the identifier. |
| [MADO Referenced Accession Number Identifier](StructureDefinition-MadoReferencedAccessionNumberIdentifier.md) | Profile for the Reference that contains the Accession Number Identifier used in the MADO context. This profile is used for the Reference that contains the Identifier that represents the Accession Number in the MADO context. It includes additional constraints and extensions specific to the MADO context, such as the value set for the type of identifier and the fixed value for the system of the identifier. |
| [MADO Referenced Study Instance UID Identifier](StructureDefinition-MadoReferencedStudyInstanceUidIdentifier.md) | Profile for the Reference that contains the Study Instance UID Identifier used in the MADO context. This profile is used for the Reference that contains the Identifier that represents the Study Instance UID in the MADO context. It includes additional constraints and extensions specific to the MADO context, such as the value set for the type of identifier and the fixed value for the system of the identifier. |
| [MADO Study Instance UID Identifier](StructureDefinition-MadoStudyInstanceUidIdentifier.md) | Profile for the Study Instance UID Identifier used in the MADO context. This profile is used for the Identifier that represents the Study Instance UID in the MADO context. It includes additional constraints and extensions specific to the MADO context, such as the value set for the type of identifier and the fixed value for the system of the identifier. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Extension: Anatomical Region](StructureDefinition-MadoAnatomicalRegionExtension.md) | The anatomical region in an ImagingStudy instance. This is additional information next to ImagingStudy.series.bodySite. |
| [Extension: DocumentReference.bodySite](StructureDefinition-ext-R5-DocumentReference.bodySite.md) | Carries the R5 DocumentReference.bodySite.concept (CodeableReference) for use in R4. Imported locally because hl7.fhir.uv.xver-r5.r4#0.1.0 does not include an extension for it. Only the `concept` field has been mapped as this is the only element we need in this IG. |
| [Extension: DocumentReference.modality (R5 cross-version)](StructureDefinition-ext-R5-DocumentReference.modality.md) | Carries the R5 DocumentReference.modality element for use in R4. Imported locally because hl7.fhir.uv.xver-r5.r4#0.1.0 does not publish a DocumentReference.modality cross-version extension. |
| [Extension: MADO Document Title of Key Object Selection documents](StructureDefinition-MadoKeyObjectDocumentTitle.md) | The document title code of the Key Object Selection document [TID 2010](https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_tid_2010.html) this instance refers to. |
| [Extension: Number of Frames](StructureDefinition-MadoNumberOfFrames.md) | The number of frames in an ImagingStudy instance. |
| [Extension: Retrieve Location UID](StructureDefinition-MadoRetrieveLocationUIDExtension.md) | The location UID of the source of the WADO URL. See XC-WADO and [Part03 table_A.35.4-1](https://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_A.35.4.3.html#table_A.35.4-1). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ValueSet: Anatomical Region](ValueSet-ValueSetAnatomicalRegion.md) | A shortlist of anatomical regions that can be used for searching reports and manifests. This set is defined in Table 6.X.6.4-1. In this case discrepancies, the values in the table have prevalence. It is planned to move this ValueSet to IHE terminologies. When that is done, this definition will be removed. |
| [ValueSet: Imaging Procedure Type](ValueSet-ProcedureEuImagingType.md) | This value set includes all imaging procedure types defined in SNOMED CT. The codes represent combinations of the modality to be used and the procedure to be performed. |
| [ValueSet: Non-empty Narrative status codes](ValueSet-MadoNarrativeNotEmpty.md) | This value set includes all Narrative status codes that are not empty. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [MADO Device Type Code System](CodeSystem-MadoDeviceType.md) | Code system for the type of device used in the MADO context. This code system is used to specify the type of device used in the MADO context, such as the type of device used as the author of an ImagingStudy in the MADO context. |
| [MADO Endpoint Connection Types Code System](CodeSystem-MadoEndpointConnectionTypes.md) | Code system for the MADO-specific Endpoint connection types used in the MADO context. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Bundle: MADO FHIR document](Bundle-mado-bundle-589331894518000.md) | An example of an FHIR Imaging Study Manifest. |
| [Device: MADO creator](Device-MadoCreatorDeviceExample.md) | Example of a Device that represents the system that creates the MADO content. |
| [DocumentReference Example for DICOM KOS manifests](DocumentReference-DocumentReferenceKOS.md) | DocumentReference Example for DICOM KOS manifests |
| [DocumentReference Example for DICOM KOS manifests](DocumentReference-DocumentReferenceKOSwithTransform.md) | DocumentReference Example for DICOM KOS manifests |
| [DocumentReference Example for DICOM KOS manifests and no related reference to the FHIR Imaging Study Manifest example](DocumentReference-DocumentReferenceKOSNoRelated.md) | DocumentReference Example for DICOM KOS manifests with no related reference to the FHIR Imaging Study Manifest example |
| [DocumentReference Example for FHIR Imaging Study Manifest](DocumentReference-DocumentReferenceFHIR.md) | DocumentReference Example for FHIR Imaging Study Manifest |
| [DocumentReference Example for FHIR Imaging Study Manifest with transform](DocumentReference-DocumentReferenceFHIRwithTransform.md) | DocumentReference Example for FHIR Imaging Study Manifest with transform service called to transform the KOS manifest into an FHIR Imaging Study Manifest |
| [Endpoint: MADO WADO Endpoint](Endpoint-wado-endpoint-with-url.md) | Example of a DICOM web endpoint supporting WADO. |
| [Endpoint: MADO WADO Endpoint example with no URL](Endpoint-EndpointWadoExampleNoAddress.md) | Example implementation of an WADO endpoint holding a RetrieveLocationUID and no address. |
| [Endpoint: MADO Web Viewer Endpoint](Endpoint-webviewer-endpoint-example.md) | Example of a web viewer endpoint whose address launches a viewer on the imaging study. |
| [Example of an organization that generated the manifest](Organization-MadoCreatorOrganizationExample.md) |  |
| [Example patient](Patient-ExamplePatient.md) | Example patient |
| [Requested Procedure Example with Placer and Filler](ServiceRequest-MadoRequestedProcedureExample.md) | Example of a MADO Requested Procedure (ServiceRequest) carrying the Accession Number, Placer Order Number, and Filler Order Number identifiers. |

### Other 

These are resources that are used within this implementation guide that do not fit into one of the other categories.

| | |
| :--- | :--- |
| [dicom-kos-mado--2047166865](Binary-dicom-kos-mado--2047166865.md) |  |
| [dicom-kos-mado--2047166866](Binary-dicom-kos-mado--2047166866.md) |  |
| [mado-bundle--2047166865](Bundle-mado-bundle--2047166865.md) |  |
| [mado-bundle--2047166866](Bundle-mado-bundle--2047166866.md) |  |
| [mado-documentreference-fhir--2047166865](DocumentReference-mado-documentreference-fhir--2047166865.md) | Imaging Manifest for Imaging Study: Head CT on CT of Head, KO (urn:oid:1.2.250.1.59.40211.22756022.2.1.102) |
| [mado-documentreference-fhir--2047166866](DocumentReference-mado-documentreference-fhir--2047166866.md) | Imaging Manifest for Imaging Study: Head CT on CT of Head (urn:oid:1.2.250.1.59.40211.22756022.2.1.101) |
| [mado-documentreference-kos--2047166865](DocumentReference-mado-documentreference-kos--2047166865.md) | Imaging Manifest for Imaging Study: Head CT on CT of Head, KO (urn:oid:1.2.250.1.59.40211.22756022.2.1.102) |
| [mado-documentreference-kos--2047166866](DocumentReference-mado-documentreference-kos--2047166866.md) | Imaging Manifest for Imaging Study: Head CT on CT of Head (urn:oid:1.2.250.1.59.40211.22756022.2.1.101) |
| [pat-mrn--1097192655](Patient-pat-mrn--1097192655.md) |  |

