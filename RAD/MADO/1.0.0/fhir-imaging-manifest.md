# FHIR Imaging Manifest - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Volume 3**](volume-3.md)
* **FHIR Imaging Manifest**

## FHIR Imaging Manifest

The FHIR Imaging Study Manifest represents a summary of the data stored in a DICOM imaging study. It contains the information stored in a PACS expressed in FHIR. This page defines the FHIR encoding of such manifest. It is the '**document**' that is searched for and provides the URLs that allow download of the imaging content.

This section specifies the structure and format of an Imaging Study Manifest for the MADO Profile using the FHIR standard. It is based on the DICOM Key Object Selection (KOS) Document Information Object Definition (IOD) as specified in DICOM PS3.3 Section A.35.4 Key Object Selection Document IOD.

### FHIR Imaging Study Manifest overview

The FHIR Imaging Study Manifest is a FHIR document [Bundle](http://hl7.org/fhir/R4/bundle.html). The figure below presents an overview of the Bundle and the imaging manifest data that is included in it. In order to keep the diagram readable, not all references are included.

**Figure: FHIR Imaging Study Manifest Overview**

The FHIR Imaging Study Manifest is a FHIR bundle of type 'document' that SHALL conform to the [MADO FHIR Imaging Study Manifest Bundle](StructureDefinition-MadoFhirBundle.md) profile. This [Bundle](http://hl7.org/fhir/R4/bundle.html) includes the [MADO Composition](StructureDefinition-MadoComposition.md) resource, the [MADO Imaging Study](StructureDefinition-MadoImagingStudy.md) resource, the [MADO Patient](StructureDefinition-MadoPatient.md), [MADO Creator](StructureDefinition-MadoCreator.md) and [MADO Creator Organization](StructureDefinition-MadoCreatorOrganization.md), the [MADO Requested Procedure](StructureDefinition-MadoRequestedProcedure.md), and the endpoints [Endpoint: MADO WADO endpoint](StructureDefinition-MadoWadoEndpoint.md) and [Endpoint: MADO profile for Web Viewer endpoints](StructureDefinition-MadoWebViewerEndpoint.md).

The profiles for the [MADO FHIR Imaging Study Manifest Bundle](StructureDefinition-MadoFhirBundle.md) and the resources it contains have fields marked as `Must Support` (`MS`) (marked with an S in the **Flags** column), which SHALL be populated if the value is known.

The [MADO Composition](StructureDefinition-MadoComposition.md) is required in order to make it a FHIR document Bundle and can be used to present a rendering of the content of the manifest.

The [MADO Imaging Study](StructureDefinition-MadoImagingStudy.md) is the heart of the manifest and provides most of the information related to the imaging study including the modality, UIDs, series and instances.

The [MADO Patient](StructureDefinition-MadoPatient.md) resource holds the patient information.

The [MADO Creator](StructureDefinition-MadoCreator.md) and [MADO Creator Organization](StructureDefinition-MadoCreatorOrganization.md) resources provide information on the device and organization that created the manifest.

The [MADO Requested Procedure](StructureDefinition-MadoRequestedProcedure.md) provides information on the order for the imaging study, including the order specific identifiers: Accession Number, Placer Number and Filler number.

[Endpoint](http://hl7.org/fhir/R4/endpoint.html) resources contain the information that allows the client to access the DICOM data. The current model identifies different [Endpoint](http://hl7.org/fhir/R4/endpoint.html)s:

* On study level, the manifest MAY contain: 
* The [Endpoint: MADO profile for Web Viewer endpoints](StructureDefinition-MadoWebViewerEndpoint.md) which provides a web-based endpoint. The `address` defined in the endpoint opens a web viewer on the study.
 
* For each series, the manifest SHALL contain: 
* The [Endpoint: MADO WADO endpoint](StructureDefinition-MadoWadoEndpoint.md) whose `address` field holds the WADO base URL that allows access to the series information (see [IHE RAD TF-2](https://www.ihe.net/uploadedFiles/Documents/Radiology/IHE_RAD_TF_Vol2.pdf): 4.107 WADO-RS Retrieve [RAD-107]).
 

### Related FHIR profiles

The following links are provided for convenience, they list the different profiles defined in this IG as well as their descriptions. Please note this copies the description text from the profile, please interpret any normative language in these descriptions within the scope of the profile.

| | |
| :--- | :--- |
| Title | Description |
| [MADO Accession Number Identifier](StructureDefinition-MadoAccessionNumberIdentifier.md) | Profile for the Accession Number Identifier used in the MADO context. This profile is used for the Identifier that represents the Accession Number in the MADO context. It includes additional constraints and extensions specific to the MADO context, such as the value set for the type of identifier and the fixed value for the system of the identifier. |
| [Extension: Anatomical Region](StructureDefinition-MadoAnatomicalRegionExtension.md) | The anatomical region in an ImagingStudy instance. This is additional information next to ImagingStudy.series.bodySite. |
| [MADO Composition](StructureDefinition-MadoComposition.md) | A FHIR Composition profile for MADO manifests is needed as FHIR Bundles of type `document` require a `Composition` resource as the first entry. Instances of this profile can be rendered in normal document based system without the need for the Client to understand the MADO-specific profiles, while still allowing to represent the essential information of the manifest such as patient, modality, and anatomical region. |
| [MADO Creator](StructureDefinition-MadoCreator.md) | A profile for the Device resource that represents the creator of an FHIR Imaging Study Manifest. The primary goal is to communicate the fields:* type = MadoDeviceType#mado-creator "MADO Creator"
* manufacturer
* owner (Reference to MadoCreatorOrganization)
 |
| [MADO Creator Organization](StructureDefinition-MadoCreatorOrganization.md) | Profile on Organization that specifies the required elements for the organization that creates MADO manifests. |
| [Extension: DocumentReference.bodySite](StructureDefinition-ext-R5-DocumentReference.bodySite.md) | Carries the R5 DocumentReference.bodySite.concept (CodeableReference) for use in R4. Imported locally because hl7.fhir.uv.xver-r5.r4#0.1.0 does not include an extension for it. Only the `concept` field has been mapped as this is the only element we need in this IG. |
| [Extension: DocumentReference.modality (R5 cross-version)](StructureDefinition-ext-R5-DocumentReference.modality.md) | Carries the R5 DocumentReference.modality element for use in R4. Imported locally because hl7.fhir.uv.xver-r5.r4#0.1.0 does not publish a DocumentReference.modality cross-version extension. |
| [MADO FHIR Imaging Study Manifest Bundle](StructureDefinition-MadoFhirBundle.md) | Profile for FHIR Bundles used as an FHIR Imaging Study Manifest in the MADO context. It includes constraints and extensions specific to FHIR Imaging Study Manifest, such as the type of study, the clinical specialty, and the anatomical region of interest. |
| [MADO Imaging Study](StructureDefinition-MadoImagingStudy.md) | Profile for ImagingStudy resources that represent the imaging studies manifest in the MADO context. It includes additional constraints and extensions specific to the MADO context, such as the study modality, the clinical specialty, the anatomical region of interest, the presence of significant images. |
| [Extension: MADO Document Title of Key Object Selection documents](StructureDefinition-MadoKeyObjectDocumentTitle.md) | The document title code of the Key Object Selection document [TID 2010](https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_tid_2010.html) this instance refers to. |
| [Extension: Number of Frames](StructureDefinition-MadoNumberOfFrames.md) | The number of frames in an ImagingStudy instance. |
| [MADO Patient](StructureDefinition-MadoPatient.md) | Profile on Patient that specifies the required elements for the patient that is the subject of the manifest. |
| [MADO Referenced Accession Number Identifier](StructureDefinition-MadoReferencedAccessionNumberIdentifier.md) | Profile for the Reference that contains the Accession Number Identifier used in the MADO context. This profile is used for the Reference that contains the Identifier that represents the Accession Number in the MADO context. It includes additional constraints and extensions specific to the MADO context, such as the value set for the type of identifier and the fixed value for the system of the identifier. |
| [MADO Referenced Study Instance UID Identifier](StructureDefinition-MadoReferencedStudyInstanceUidIdentifier.md) | Profile for the Reference that contains the Study Instance UID Identifier used in the MADO context. This profile is used for the Reference that contains the Identifier that represents the Study Instance UID in the MADO context. It includes additional constraints and extensions specific to the MADO context, such as the value set for the type of identifier and the fixed value for the system of the identifier. |
| [MADO Requested Procedure](StructureDefinition-MadoRequestedProcedure.md) | A profile for the ServiceRequest resource that represents the Requested Procedure (see 6.X.2.8.1 Referenced Request Macro Description). |
| [Extension: Retrieve Location UID](StructureDefinition-MadoRetrieveLocationUIDExtension.md) | The location UID of the source of the WADO URL. See XC-WADO and [Part03 table_A.35.4-1](https://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_A.35.4.3.html#table_A.35.4-1). |
| [MADO Study Instance UID Identifier](StructureDefinition-MadoStudyInstanceUidIdentifier.md) | Profile for the Study Instance UID Identifier used in the MADO context. This profile is used for the Identifier that represents the Study Instance UID in the MADO context. It includes additional constraints and extensions specific to the MADO context, such as the value set for the type of identifier and the fixed value for the system of the identifier. |
| [Endpoint: MADO WADO endpoint](StructureDefinition-MadoWadoEndpoint.md) | This profile defines a WADO endpoint for accessing imaging study content. [MADO WADO Endpoint](Endpoint-wado-endpoint-with-url.md) holds an example of a endpoint with a `RetrieveLocationUid` and an address. |
| [Endpoint: MADO profile for Web Viewer endpoints](StructureDefinition-MadoWebViewerEndpoint.md) | This profile defines the Web Viewer endpoint for accessing imaging study content. The URL in the Endpoint SHALL be a fully populated URL that contains all the information required to the launch the viewer to this study. |

### Examples

The sections below show the various MADO data elements that are generated based on a DICOM study.

The Binary resource contains the DICOM KOS Manifest for the study. The `Bundle` resource contains the FHIR Imaging Study Manifest. The `DocumentReference` instances provide MHD DocumentReference instances that point to these manifests.

#### Study A

Based on the DICOM study A, ([Study_A.zip](https://raw.githubusercontent.com/IHE/RAD.MADO/master/examples/Dataset_A/Study_A.zip)), the following resources are created:

| | |
| :--- | :--- |
| Type | Id |
| Binary | [dicom-kos-mado--2047166865](Binary-dicom-kos-mado--2047166865.md) |
| Bundle | [mado-bundle--2047166865](Bundle-mado-bundle--2047166865.md) |
| DocumentReference | [mado-documentreference-fhir--2047166865](DocumentReference-mado-documentreference-fhir--2047166865.md) |
| DocumentReference | [mado-documentreference-kos--2047166865](DocumentReference-mado-documentreference-kos--2047166865.md) |

#### Study B

Based on the DICOM study B, ([Study_B.zip](https://raw.githubusercontent.com/IHE/RAD.MADO/master/examples/Dataset_B/Study_B.zip)), the following resources are created:

| | |
| :--- | :--- |
| Type | Id |
| Binary | [dicom-kos-mado--2047166866](Binary-dicom-kos-mado--2047166866.md) |
| Bundle | [mado-bundle--2047166866](Bundle-mado-bundle--2047166866.md) |
| DocumentReference | [mado-documentreference-fhir--2047166866](DocumentReference-mado-documentreference-fhir--2047166866.md) |
| DocumentReference | [mado-documentreference-kos--2047166866](DocumentReference-mado-documentreference-kos--2047166866.md) |

