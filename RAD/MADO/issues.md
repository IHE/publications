# Significant Changes and Issues - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* **Significant Changes and Issues**

## Significant Changes and Issues

## Significant Changes

### Significant Changes from the previous Trial Implementation revision

* Refined the **FHIR Imaging Study Manifest Overview** figure: series and instances are shown as stacked sets, the WADO endpoint is referenced from the series (including its LocationUID), a viewer box is referenced from the study, and the XC-WADO endpoint box was removed.
* Reworked the "Related FHIR Profiles" tables so the link is carried on the profile title and the redundant name column was removed.
* Corrected the MADO FHIR Bundle slicing.
* Added the anatomical-region extension bound to the MADO anatomical region value set and aligned the DICOM KOS <-> FHIR mapping table accordingly.
* Added instance-level (KIN) information to the ImagingStudy manifest (instance title / key-object document title).
* Renamed the DocumentReference body-site search parameter to reference the anatomical region.

## Issues

### Submit an Issue

Issues can be submitted through the [IHE RAD.MADO GitHub issue tracker](https://github.com/IHE/RAD.MADO/issues).

### Open Issues

#### Cross-version (xver) extension package for DocumentReference body-site, modality and content.profile

The MADO FHIR DocumentReference profiles (`MadoFhirDocumentReference`, `MadoDicomKosDocumentReference`) use R5-on-R4 cross-version extensions from `hl7.fhir.uv.xver-r5.r4` for `DocumentReference.bodySite`, `DocumentReference.modality`, and `DocumentReference.content.profile`. The IG is currently pinned to `0.0.1-snapshot-2`. Two problems remain:

* Moving to the released `0.1.0` package is not backward compatible: `bodySite` loses its inline `concept` sub-extension (becomes `Reference(BodyStructure)` only), the `modality` extension is removed entirely, and the `content.profile` sub-slice is renamed from `value[x]` to `value`. All three break the current profiles and the body-site / modality SearchParameters.
* With the pinned snapshot, the IG publisher reports one persistent, non-suppressible error: `ImplementationGuide.dependsOn: The packageId hl7.fhir.uv.xver-r5.r4 points to the canonical http://hl7.org/fhir/uv/xver which is inconsistent with the stated canonical http://hl7.org/fhir/5.0/ImplementationGuide/hl7.fhir.uv.xver-r5.r4`. This originates in the xver package metadata and cannot be resolved from `sushi-config.yaml`.

**Discussion:** The IG stays on `hl7.fhir.uv.xver-r5.r4#0.0.1-snapshot-2` because it is the only version whose extensions match the current DocumentReference design (inline coded body-site, a modality extension, and the `value[x]` content-profile slice). Migrating to `0.1.0` would require redesigning the body-site to reference a `BodyStructure` resource, finding a replacement for the now-absent modality extension, and updating the content-profile slice name and the affected SearchParameters. The dependency-canonical error is acknowledged as an upstream xver package issue and is suppressed via `input/ignoreWarnings.txt`.

### Closed Issues

#### Representation of KIN information

The MADO profile allows for inclusion of KIN - key object information. The information elements include the KIN Document Title Code and description (at instance level).

**Resolution:** KIN information is represented at the instance level of the `ImagingStudy`. When a referenced instance represents a Key Object Selection document, `ImagingStudy.series.instance.extension[ko-document-title]` carries the Document Title code (bound to DICOM CID 7010, based on TID 2010) and `ImagingStudy.series.instance.title` carries the Key Object Description.

#### Need for an Accession Number Identifier profile

The spec introduces a Data Type Profile: MADO Accession Number Identifier. Why is this needed when it was not needed for the imaging report ?

**Resolution:** This profile (and the study-instance-uid profile) are added to clearly define the type field requirements when providing identifiers that represent these concepts. We will maintain the definition and require the dcm field.

#### Anatomical region: coded value vs. free text

The DICOM KOS "Target Region" may carry either a code or free text, but the FHIR manifest restricts the anatomical region to a coded value.

**Resolution:** The `ImagingStudy` anatomical-region extension keeps a `preferred` binding to the MADO anatomical region value set, so a coded value is expected but other codes remain allowed. The MHD DocumentReference body-site extension uses an `extensible` binding to the same value set.

#### Bundle type of the FHIR manifest (collection vs. document)

Should the FHIR Imaging Study Manifest be a `collection` Bundle or a `document` Bundle? A `document` Bundle is a better fit for MHD publication (ITI-65/ITI-105 are designed for document Bundles) but requires a `Composition` resource whose narrative reflects the study.

**Resolution:** The manifest SHALL always be a `document` Bundle. It includes a `Composition` that carries the document header fields and renders the study-level information (patient, study date/time, modalities, anatomical regions, number of series, institution name).

#### Author of the manifest (Provenance vs. MADO Creator)

How should the creator/author of the manifest be represented: via `Provenance`, `Composition.author` referencing the MADO Creator device/organization, `meta.source`, or a `Bundle.link`?

**Resolution:** Use a `Provenance` resource, as it is the standard pattern and is required if the document is to be signed. The MADO Creator device and organization profiles are retained so that manufacturer, type and owner can be required.

#### Mapping table refinements

Review comments identified several corrections to the DICOM KOS <-> FHIR mapping table, including: adding the StudyInstanceUID reference under `CurrentRequestedProcedureEvidenceSequence`; using `ReferencedSOPInstanceUID` for the instance UID; clarifying which `ServiceRequest.identifier` is intended for the order/accession number and using the MADO term "Placer Order Number / Imaging Service Request"; and confirming where "Number of Study-related Series" maps.

**Resolution:** The editorial corrections have been applied to the mapping table.

#### WADO endpoint at the study level

If all series point to the same WADO base URL, should the endpoint also be allowed at the study level?

**Resolution:** Keep it aligned with the DICOM KOS representation and reference the WADO endpoint at the series level (duplicated per series). An example with a WADO endpoint that has no URL is included and described in the text.

#### payloadMimeType on the WADO endpoint

Should `Endpoint.payloadMimeType` be kept, given it is not present in DICOM?

**Resolution:** Leave it as is.

#### XC WADO endpoint

XC-WADO end-point is not part of the MADO Profile. Remove XC-WADO Endpoint box from the Figure: FHIR Imaging Study Manifest Overview. Below remove the text about two endpoint formats, including: “The MADO FHIR XC-WADO Endpoint endpoint which provides an IHE-RAD-XC-WADO endpoint corresponding to the IHE-RAD-XC-WADO specification.

**Resolution:** We will better explain that this is a profile that defines how to encode XC-WADO information in the FHIR Imaging Study Manifest.

#### Improve overview picture

The Figure: FHIR Imaging Study Manifest Overview should be refined because some Bundle resources are referenced by the Imaging Study Resource (study-level part) other at the Series instance level (such as WADO Endpoint).

**Resolution:** The arrows to the WADO endpoint will come from the Series boxes. We will add a new box representing a viewer with an arrow coming from the study. Add MADO WADO - with location uid in picture. Add <<resourceType>> where not clear from the name. Add LocationUID to WADO endpoint - remove XC-WADO endpoint definition - add example for WADO with no URL and mention it in the text.

#### Circular dependencies between mapping and definition

Below the figure, the following text is inappropriate: “The Bundle SHALL contain all available data elements in the FHIR column in Table 4.3-1 (see DICOM KOS <-> FHIR mappings).” The mapping cannot be used to specify the Manifest Content. This creates a circular specification. Similar comment with the text: “What resources to include depends on the information to be included, see DICOM KOS <-> FHIR mappings for more information on when to include what resource.” which is also improper. Need a full FHIR explicit structured definition in this section.

**Resolution**: Flag them using MustSupport - add definition to manifest definition page.

#### Where to define the anatomical regions

Anatomical Regions in section https://build.fhir.org/ig/IHE/RAD.MADO/branches/call20260402/ValueSet-im-anatomical-region-valueset.html#root duplicate the value set defined in the MADO Profile. Should reference the MADO TI Table 6.X.6.4-1: CID IHE-MADO1 High-Level Anatomic Regions and Systems. This would avoid different display strings that are aligned with SNOMED (but not identical) and DICOM.

**Resolution**: Make comment in the ValueSet that the definition in the pdf has prevalence and that we plan to move this to IHE terminology.

#### Need for representing the performed procedure

The imaging Manifest includes both:

1. Bundle.entry:requested-procedure
1. Bundle.entry:performed-procedure which is not consistent, as this distinction does not appear explicitly in the DICOM Manifest? Nor in the mapping table with: “Procedure (scheduled or performed) procedureCode” which is correct at the study level, with a zero or more “Procedure” at the Study level.

**Resolution:** Remove the reference to performed procedure from the Bundle (we just need a procedure code)

#### MadoRepresentativeInstanceExtension

Not sure what this extension is about ?

MadoRepresentativeInstanceExtension

```
Extension: Representative Instance
An extension to indicate that a referenced instance on an ImagingStudy series is a representative instance for that series. This extension is used in the MADO context to indicate that a referenced instance on an ImagingStudy series is a representative instance for that series, which can be used for display purposes in the MADO context.
In the Manifest Envelope, the descriptive text (first five sentences and the text below the figure) for MHD needs a structure that sets a context about the MHD profile to better understand these technical statements (e.g. using the MHD actor profile names and associated MHD transactions).

```

**Resolution:** In (an earlier?) version of the MADO spec, in the KOS list of images, there was a remark that this should contain the representative images to be shown first. This extension was added to support those. This text is no longer present in the current spec, so this extension has been removed (disabled in the build).

#### Base resource for MHD DocumentReference

In the Manifest Envelope, section related FHIR Profile, it speaks about the related “MHD Minimal Document Reference”. However, in the use of MHD for imaging studies sharing, the “comprehensive MHD metadata” is used. That is clear in the “MADO MHD DocumentReference Profile for FHIR Imaging Study Manifest”. The rest of the section, that only list the imaging specific.

**Answer:** Minimal Document Reference has been chosen as this is the minimal MHD requirement and the one used in the EU Health Access API specification. I do not see a reason to add the restrictions in this profile to all deployments of MADO.

The comprehensive includes relevant fields that are needed in this context such as time, practiceSetting and facilityType

**Resolution:** Take over the fields from comprehensive except `securityLabel` and add Period.

#### What examples to include

The Examples should be “complete examples” not piece-wise resources as listed in: https://build.fhir.org/ig/IHE/RAD.ADO/branches/call20260402/artifacts.html#example-example-instances

**Resolution:** These were included to show examples of the individual artifacts. We can remove them and only support the Bundles.

#### Query parameter optionality

The use of the term “optional” in relationship with the query parameters, need to be made clearer when MHD is grouped with MADO. In the context of MADO, the support by MHD Doc Responder and MHD Doc Source has to be required, but optional for the MHD Document consumer.

**Resolution:** make the relation with MHD more apparent in the spec.

