# Manifest Envelopes for IHE-MHD - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Volume 3**](volume-3.md)
* **Manifest Envelopes for IHE-MHD**

## Manifest Envelopes for IHE-MHD

When distributing a MADO imaging manifest in an [IHE-ITI-MHD](https://profiles.ihe.net/ITI/MHD/) environment, the `DocumentReference` profiles defined below apply.

* FHIR Imaging Study Manifest SHALL be packaged with an envelope defined in [MADO MHD DocumentReference Profile for FHIR Imaging Study Manifest](StructureDefinition-MadoFhirDocumentReference.md).
* DICOM KOS Manifest envelopes SHALL be packaged with an envelope defined in [MADO MHD DocumentReference Profile for DICOM KOS Imaging Manifests](StructureDefinition-MadoDicomKosDocumentReference.md).

An IHE-MHD infrastructure may choose to provide one manifest format and implement a mapping service to the alternate format. When such a mapping service is provided, the `address` field in the alternate `DocumentReference` includes a fully populated url to the mapping service that, when called, will return the manifest in the alternate format.

In the case the manifest is available in multiple formats, the Document Consumer SHOULD show to the user a single entry.

As is stated in section X.6.1, Manifest Creators will create the manifest in the format of their choice. The selection is made at deployment time.

The figure below shows the `MHD DocumentReference`s including the most relevant restrictions and their relationship with the manifests and each other.

**Figure: IHE-MHD envelope**

The main choices illustrated in the figure are:

* There are two different `DocumentReferences`, one for the FHIR ImagingStudy and one for the DICOM KOS representation. When both are present, the relatesTo field points to the other representation.
* FHIR Imaging Study Manifest: 
* A FHIR Imaging Study Manifest is represented as a FHIR JSON encoded [Bundle](http://hl7.org/fhir/R4/bundle.html) following the profile [MADO FHIR Imaging Study Manifest Bundle](StructureDefinition-MadoFhirBundle.md). This Bundle contains the [ImagingStudy](http://hl7.org/fhir/R4/imagingstudy.html) resource as well other resources such as the [Patient](http://hl7.org/fhir/R4/patient.html) and various [Endpoint](http://hl7.org/fhir/R4/endpoint.html)s.
* The FHIR DocumentReference SHALL include the identifier of the [MADO FHIR Imaging Study Manifest Bundle](StructureDefinition-MadoFhirBundle.md) as `masterIdentifier`.
 
* DICOM KOS manifest: 
* A KOS manifest is represented as an `application/dicom` encoded DICOM instance (see [8.7.3.1 Instance Media Types](https://dicom.nema.org/medical/dicom/current/output/html/part18.html#table_8.7.3-2)) following the MADO KOS profile.
* The DICOM KOS manifest DocumentReference SHALL include the `SOPInstanceUid` of the KOS instance as `masterIdentifier`.
 
* The `masterIdentifier` SHALL be part of the `identifier` list as well.

The FHIR Imaging Study Manifest can be translated into the KOS-manifest and vice-versa, allowing applications to provide alternate representations when needed (see [Mapping](mapping.md)).

### Related FHIR profiles

| | |
| :--- | :--- |
| Title | Description |
| [MADO MHD DocumentReference Profile for DICOM KOS Imaging Manifests](StructureDefinition-MadoDicomKosDocumentReference.md) | MADO specific profile for the IHE-MHD Document Reference for MADO DICOM KOS Manifests that includes the MADO specific content format, the extensions related to body-site and modality, and the definition on where `StudyInstanceUID` and `AccessionNumber` are stored.This profile requires `context.period` and copies most of the restrictions defined in the [MHD DocumentReference Comprehensive](https://profiles.ihe.net/ITI/MHD/StructureDefinition-IHE.MHD.Comprehensive.DocumentReference.html) profiles (except `securityLabel`). |
| [MADO MHD DocumentReference Profile for FHIR Imaging Study Manifest](StructureDefinition-MadoFhirDocumentReference.md) | MADO specific profile for the IHE-MHD Document Reference for FHIR Imaging Study Manifest that includes the MADO specific content format, the extensions related to body-site and modality, and the definition on where `StudyInstanceUID` and `AccessionNumber` are stored.This profile requires `context.period` and copies most of the restrictions defined in the [MHD DocumentReference Comprehensive](https://profiles.ihe.net/ITI/MHD/StructureDefinition-IHE.MHD.Comprehensive.DocumentReference.html) profiles (except `securityLabel`). |

### Capability Statements for MADO MHD Actors

| | |
| :--- | :--- |
| Title | Description |
| [MADO Document Consumer (client)](CapabilityStatement-IHE.RAD.MADO.DocumentConsumer.md) | IHE RAD Manifest based Access to DICOM Objects(MADO) - Document Consumer (client). It extends MHD [Document Consumer (client)](https://build.fhir.org/ig/IHE/ITI.MHD/CapabilityStatement-IHE.MHD.DocumentConsumer.html). |
| [MADO Document Responder (server)](CapabilityStatement-IHE.RAD.MADO.DocumentResponder.md) | IHE RAD Manifest based Access to DICOM Objects(MADO) - Document Responder (server). It extends MHD [Document Responder (client)](https://build.fhir.org/ig/IHE/ITI.MHD/CapabilityStatement-IHE.MHD.DocumentResponder.html). |

#### Imaging specific search parameters

Imaging specific search parameters include:

| | | |
| :--- | :--- | :--- |
| Name | Title | Description |
| [DocumentReferenceAccessionNumber](SearchParameter-SearchParameterDocumentReferenceAccessionNumber.md) |  | Searches for document references with a specific Accession Number. |
| [DocumentReferenceAnatomicalRegion](SearchParameter-SearchParameterDocumentReferenceBodySite.md) |  | Searches for document references with a specific anatomical region. |
| [DocumentReferenceModality](SearchParameter-SearchParameterDocumentReferenceModality.md) |  | Searches for document references with a specific modality. |
| [DocumentReferenceStudyInstanceUid](SearchParameter-SearchParameterDocumentReferenceStudyInstanceUid.md) |  | Searches for document references with a specific Study Instance UID. |

The expression below uses these search parameters to search for a FHIR Imaging Study Manifest with StudyInstanceUid=324.232.5.5.324.2.

```
DocumentReference/?study-instance-uid=urn:oid:324.232.5.5.324.2&format=urn:ihe:rad:MADO:fhir-manifest:2026

```

This uses the optional study-instance-uid search parameter. An alternative with standard search params would be as follows. As the study instance uid is an OID, in the identifier it is prefixed with `urn:oid:`.

```
DocumentReference/?related:identifier=urn:oid:324.232.5.5.324.2&format=urn:ihe:rad:MADO:fhir-manifest:2026

```

A similar query searching for DICOM KOS Manifests with accession number `12345` would look like:

```
DocumentReference/?related:identifier="12345"&format=1.2.840.10008.5.1.4.1.1.88.59

```

an alternative using the `accession-number` query is:

```
DocumentReference/?accession-number="12345"&format=1.2.840.10008.5.1.4.1.1.88.59

```

### DocumentReference examples

The list below presents various examples of MADO DocumentReferences.

| | | |
| :--- | :--- | :--- |
| Name | Title | Description |
| [DocumentReference Example for FHIR Imaging Study Manifest](DocumentReference-DocumentReferenceFHIR.md) |  | DocumentReference Example for FHIR Imaging Study Manifest |
| [DocumentReference Example for FHIR Imaging Study Manifest with transform](DocumentReference-DocumentReferenceFHIRwithTransform.md) |  | DocumentReference Example for FHIR Imaging Study Manifest with transform service called to transform the KOS manifest into an FHIR Imaging Study Manifest |
| [DocumentReference Example for DICOM KOS manifests](DocumentReference-DocumentReferenceKOS.md) |  | DocumentReference Example for DICOM KOS manifests |
| [DocumentReference Example for DICOM KOS manifests and no related reference to the FHIR Imaging Study Manifest example](DocumentReference-DocumentReferenceKOSNoRelated.md) |  | DocumentReference Example for DICOM KOS manifests with no related reference to the FHIR Imaging Study Manifest example |
| [DocumentReference Example for DICOM KOS manifests](DocumentReference-DocumentReferenceKOSwithTransform.md) |  | DocumentReference Example for DICOM KOS manifests |
| [mado-documentreference-fhir--2047166866](DocumentReference-mado-documentreference-fhir--2047166866.md) |  | Imaging Manifest for Imaging Study: Head CT on CT of Head (urn:oid:1.2.250.1.59.40211.22756022.2.1.101) |
| [mado-documentreference-fhir--2047166865](DocumentReference-mado-documentreference-fhir--2047166865.md) |  | Imaging Manifest for Imaging Study: Head CT on CT of Head, KO (urn:oid:1.2.250.1.59.40211.22756022.2.1.102) |
| [mado-documentreference-kos--2047166866](DocumentReference-mado-documentreference-kos--2047166866.md) |  | Imaging Manifest for Imaging Study: Head CT on CT of Head (urn:oid:1.2.250.1.59.40211.22756022.2.1.101) |
| [mado-documentreference-kos--2047166865](DocumentReference-mado-documentreference-kos--2047166865.md) |  | Imaging Manifest for Imaging Study: Head CT on CT of Head, KO (urn:oid:1.2.250.1.59.40211.22756022.2.1.102) |

The [DocumentReference Example for FHIR Imaging Study Manifest with transform](DocumentReference-DocumentReferenceFHIRwithTransform.md) example contains a FHIR MADO DocumentReference. The content section does not point to a FHIR file but to a transform service. The `content.attachment` section is presented below

The url points to a transform service and passes the link to the KOS manifest. This is just one example of such service. This specification does not specify the interface. Alternative implementations could pass the StudyInstanceUID and wado URL parameters, or some other set of data.

