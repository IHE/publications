# Mappings between MADO FHIR and MADO DICOM KOS - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Volume 3**](volume-3.md)
* **Mappings between MADO FHIR and MADO DICOM KOS**

## Mappings between MADO FHIR and MADO DICOM KOS

The mapping between the DICOM KOS and FHIR format is presented in the table below. In order to make it clear what concept is addressed, the first column contains a short characterization of the concept. The other two columns show the corresponding FHIR and DICOM KOS fields. In the case that more than one field is presented, it is expected that the concept will be present in each of them.

In the FHIR column, the expression `Resource.field1.field2` means within the resource `Resource`, there is an element called `field1` that contains the element `field2`. The expression `field1->resource` means that `field1` is a reference that points to the resource `resource`.

In the KOS column the expression `sequence->field` means that within the sequence `sequence` there is a field called `field`. The expression `SR:EV(aaa,DCM,"name")->EV(bbb,DCM,"name")` means that within the DICOM SR ContentSequence there is a SR node with the code `aaa` that contains the SR node `bbb`.

**Table 4.3-1: MADO DICOM KOS <-> FHIR mapping**

| | | |
| :--- | :--- | :--- |
| Study Instance UID | MadoImagingStudy.identifier[study-instance-uid] | StudyInstanceUID (0020,000D) |
|   |   | Referenced Request Macro (0040.A370) -> Study Instance UID (0020,000D) |
| Study Modalities | MadoImagingStudy.modality | SR: EV(111028,DCM,"Image Library") -> EV(121139, DCM, "Modality") |
| Study Started | MadoImagingStudy.started | StudyDate (0008,0020) & StudyTime (008,0030) |
|   |   | SR: EV(111028,DCM,"Image Library") -> EV(126200,DCM,"Image Library Group") -> EV(111060,DCM,"Study Date") & EV (111060,DCM,"Study Time") |
| Study anatomical region | MadoImagingStudy.extension[anatomical-region] | SR: EV(111028,DCM,"Image Library") -> EV(123014, DCM, "Target Region") |
| Study procedureCodes | MadoImagingStudy.procedureCode | SR: EV(121023,DCM,"ProcedureCode") |
| Study description | MadoImagingStudy.description | StudyDescription (0008,1030) |
| Study numberOfSeries | MadoImagingStudy.numberOfSeries | SR: EV(111028,DCM,"Image Library") -> EV (131565, DCM, “Number of Study Related Series”) |
| Study display endpoint | MadoImagingStudy.endpoint -> MadoWebViewerEndpoint.address | CurrentRequestedProcedureEvidenceSequence (0040,8375) -> DisplayURI (0040,E012) |
| Study series | MadoImagingStudy.series | SR: EV(111028,DCM,"Image Library") -> EV(126200,DCM,"Image Library `Group") |
| Study series.seriesUid | MadoImagingStudy.series.uid | SR: EV(111028,DCM,"Image Library") -> EV(126200,DCM,"Image Library Group") -> EV(112002, DCM, “Series Instance UID”) |
| Study series.number | MadoImagingStudy.series.number | SR: EV(111028,DCM,"Image Library") -> EV(126200,DCM,"Image Library Group") -> EV (113607, DCM, “Series Number”) |
| Study series.seriesModality | MadoImagingStudy.series.modality | SR: EV(111028,DCM,"Image Library") -> EV(126200,DCM,"Image Library Group") -> EV (121139, DCM, "Modality") |
| Study series.description | MadoImagingStudy.series.description | SR: EV(111028,DCM,"Image Library") -> EV(126200,DCM,"Image Library Group") -> EV (131563, DCM, “Series Description”) |
| Study series.started | MadoImagingStudy.series.started | SR: EV(111028,DCM,"Image Library") -> EV(126200,DCM,"Image Library Group") -> EV (131561, DCM, “Series Date”) & EV (131562, DCM, “Series Time”) |
| Study series.numberOfInstances | MadoImagingStudy.series.numberOfInstances | SR: EV(111028,DCM,"Image Library") -> EV(126200,DCM,"Image Library Group") -> EV (131564, DCM, “Number of Series Related Instances”) |
| Study series.bodySite | MadoImagingStudy.series.bodySite | SR: EV(111028,DCM,"Image Library") -> EV(126200,DCM,"Image Library Group") -> EV (123014, DCM, "Target Region") |
| Study series.laterality | MadoImagingStudy.series.laterality | SR: EV(111028,DCM,"Image Library") -> EV(126200,DCM,"Image Library Group") -> EV (111027, DCM, "Image Laterality") |
| Study series.seriesRetrieveEndpoint.retrieveUrl | MadoImagingStudy.series.endpoint -> MadoWadoEndpoint.address | CurrentRequestedProcedureEvidenceSequence (0040,8375) -> ReferencedSeriesSequence (0008,1115) -> RetrieveUrl (0008,1190) |
| Study series.seriesRetrieveEndpoint.locationUID | MadoImagingStudy.series.endpoint -> MadoWadoEndpoint.extension[retrieve-location-uid] | CurrentRequestedProcedureEvidenceSequence (0040,8375) -> ReferencedSeriesSequence (0008,1115) -> RetrieveLocationUid (0040,E011) |
| Study series.instancesInTheSeries.instanceUid | MadoImagingStudy.series.instance.uid | SR: EV(111028,DCM,"Image Library") -> EV(126200,DCM,"Image Library Group") -> Image Library Entry (IMAGE or COMPOSITE) -> Referenced SOP Sequence (0008,1199) -> Referenced SOP Instance UID (0008,1150) |
| Study series.instancesInTheSeries.sopClass | MadoImagingStudy.series.instances.sopClass | SR: EV(111028,DCM,"Image Library") -> EV(126200,DCM,"Image Library Group") -> Image Library Entry (IMAGE or COMPOSITE) -> Referenced SOP Sequence (0008,1199) -> Referenced SOP Class UID (0008,1155) |
| Study series.instancesInTheSeries.instanceNumber | MadoImagingStudy.series.instance.number | SR: EV(111028,DCM,"Image Library") -> EV(126200,DCM,"Image Library Group") -> Image Library Entry (IMAGE) -> EV (113609, DCM, “Instance Number”) |
| Study series.instancesInTheSeries.number of frames | MadoImagingStudy.series.instance.extension[number-of-frames] | SR: EV(111028,DCM,"Image Library") -> EV(126200,DCM,"Image Library Group") -> Image Library Entry (IMAGE) -> EV (121140, DCM, “Number of Frames”) |
| Study series.instancesInTheSeries.key object document title | MadoImagingStudy.series.instance.extension[ko-document-title] | SR: EV(111028,DCM,"Image Library") -> EV(126200,DCM,"Image Library Group") -> Image Library Entry (COMPOSITE) EV (121144, DCM, "Document Title") |
| Study series.instancesInTheSeries.koDescription | MadoImagingStudy.series.instance.title | SR: EV(111028,DCM,"Image Library") -> EV(126200,DCM,"Image Library Group") -> Image Library Entry (COMPOSITE) EV (113012, DCM, “ Key Object Description" ) |
|   |   |   |
| Patient Name | MadoImagingStudy.subject->Patient.name | Patient Name (0010,0010) |
| Patient ID | MadoImagingStudy.subject->Patient.identifier | Patient ID (0010,0020) & Type of Patient ID (0010,0022) & Issuer of Patient ID Qualifiers Sequence (0010,0026) |
| Patient Birthdate | MadoImagingStudy.subject->Patient.birthdate | Patient Birth Date (0010,0030) |
| Patient Sex | MadoImagingStudy.subject->Patient.gender | Patient Sex (0010,0040) |
|   |   |   |
| RequestedProcedure Accession Number | MadoImagingStudy.basedOn[order].identifier | AccessionNumber (0008,0050) & Issuer of Accession Number Sequence (0008,0051) |
|   | basedOn[order]->ServiceRequest.identifier[accession-number] |   |
| RequestedProcedure Placer Order Number | basedOn[order]->ServiceRequest.identifier[placer] | Referenced Request Sequence (0040,A370) -> Order Placer Identifier Sequence (0040,0026) |
|   |   |   |
| MADO Author manufacturer | MadoComposition.author[source-device] -> MadoCreator.manufacturer | Manufacturer (0008,0070) |
| MADO Author institution name | MadoComposition.author[source-organization] -> MadoCreatorOrganization.name | Institution Name (0008,0080) (V2 XON encoding) |
| MADO Author institution id | MadoComposition.author[source-organization] -> MadoCreatorOrganization.identifier | Institution Name (0008,0080) (V2 XON encoding) |
| Document identifier | MadoFhirBundle.identifier | SOP Instance UID (0008,0018) |

Please note that in this table:

* Multiplicities are not indicated nor implied. Please refer to the base DICOM KOS Manifest or FHIR Imaging Study Manifest for information on multiplicities.
* The intention of this table is to present the location in the FHIR/DICOM manifest where the corresponding information element can be found. It is not intended as a definition on the construction of the FHIR/DICOM KOS manifest. In the case of discrepancies, the definitions of these formats have prevalence.
* In the case that for a concept the table lists multiple locations, this means that the same value is present at each location. Instances where those data elements differ are malformed.

