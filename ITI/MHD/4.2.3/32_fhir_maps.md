# 3:4.5 FHIR Maps - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* **3:4.5 FHIR Maps**

## 3:4.5 FHIR Maps

| |
| :--- |
| Editor, please Add Section 4.5 |

## 3:4.5 FHIR Representation of Document Sharing Metadata

This section documents the mapping between IHE [Document Sharing Metadata](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1) and the FHIR Resources.

### 3:4.5.1 Metadata Object Types mapped to FHIR

For details on FHIR resources and data types see HL7 FHIR [FHIR index.html](http://hl7.org/fhir/R4/index.html).

Some Document Sharing Metadata attributes must be treated as `contained` FHIR Resources. These are indicated in with a "Note 1” and the word `contained`. The details of the FHIR `contained` mechanism is found at [FHIR references.html#contained](http://hl7.org/fhir/R4/references.html#contained).

When encoding XDS identifiers into FHIR Resource data elements of type Identifier, the FHIR notation of OIDs and UUIDs uses the system identifier of `urn:ietf:rfc:3986`. For more details and examples, see [ITI TF-2: Appendix E.3 “FHIR Identifier Type”](https://profiles.ihe.net/ITI/TF/Volume2/ch-E.html#E.3).

#### 3:4.5.1.1 DocumentEntry Metadata Attributes

The documented [mapping of the metadata elements](StructureDefinition-IHE.MHD.Minimal.DocumentReference-mappings.md) associated with a [Document Sharing DocumentEntry object](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.2) attributes.

Note: FHIR contains an informative mapping that is intended to be equivalent and can be found at [FHIR documentReference XDS mapping](http://hl7.org/fhir/R4/documentreference-mappings.html#xds). For the purposes of IHE MHD conformance the mapping documented here (in IHE) are normative.

#### 3:4.5.1.2 DocumentReference StructureDefinition

The conformance requirements are different between a Provide Document Bundle [ITI-65](ITI-65.md) transaction and a Find Document References [ITI-67](ITI-67.md) transaction, and between Minimal Metadata, Comprehensive Metadata, and UnContained References.

The conformance requirements are different between Comprehensive, minimal, and UnContained References. The canonical URI is found as the "Defining URL:":

* [Comprehensive DocumentReference Metadata](StructureDefinition-IHE.MHD.Comprehensive.DocumentReference.md)
* [Comprehensive DocumentReference UnContained References](StructureDefinition-IHE.MHD.UnContained.Comprehensive.DocumentReference.md)
* [Minimal DocumentReference Metadata](StructureDefinition-IHE.MHD.Minimal.DocumentReference.md)
* Minimal DocumentReference does not include `contained` requirements

Resources are not required to carry the meta.profile element and may only carry the profile element defined for the Provide Document Bundle [ITI-65] transaction, as the Receiver is not required to add the profile tags. The value of the meta.profile is a soft indicator of conformance expectation. Receivers may choose to validate actual conformance and fail transactions due to non-conformance.

### 3:4.5.2 SubmissionSet Metadata Attributes

The documented [mapping of the metadata elements](StructureDefinition-IHE.MHD.Minimal.SubmissionSet-mappings.md) associated with a [Document Sharing SubmissionSet object](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.3) attributes.

#### 3:4.5.2.1 SubmissionSet List StructureDefinition

The conformance requirements are different between Comprehensive, Minimal, and UnContained References. The canonical URI is found as the "Defining URL:":

* [Comprehensive SubmissionSet Metadata](StructureDefinition-IHE.MHD.Comprehensive.SubmissionSet.md)
* [Comprehensive SubmissionSet UnContained References](StructureDefinition-IHE.MHD.UnContained.Comprehensive.SubmissionSet.md)
* [Minimal SubmissionSet Metadata](StructureDefinition-IHE.MHD.Minimal.SubmissionSet.md)
* Minimal SubmissionSet Metadata does not include `contained` requirements

Resources are not required to carry the meta.profile element and may only carry the profile element defined for the Provide Document Bundle [ITI-65](ITI-65.md) transaction, as the Receiver is not required to add the profile tags. The value of the meta.profile is a soft indicator of conformance expectation. Receivers may choose to validate actual conformance and fail transactions due to non-conformance.

### 3:4.5.3 Folder Metadata Attributes

The documented [mapping of the metadata elements](StructureDefinition-IHE.MHD.Minimal.Folder-mappings.md) associated with a [Document Sharing Folder object](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.4) attributes.

Note that FHIR List Resource in the FHIR core specification does not include a Mapping to XDS.

#### 3:4.5.3.1 Folder StructureDefinition

The conformance requirements are different between Comprehensive and Minimal metadata. The canonical URI is found as the "Defining URL:":

* [Comprehensive Folder Metadata](StructureDefinition-IHE.MHD.Comprehensive.Folder.md)
* Comprehensive Folder Metadata does not include `contained` requirements
* [Minimal Folder Metadata](StructureDefinition-IHE.MHD.Minimal.Folder.md)
* Minimal Folder Metadata does not include `contained` requirements

Resources are not required to carry the meta.profile element and may only carry the profile element defined for the Provide Document Bundle [ITI-65](ITI-65.md) transaction, as the Receiver is not required to add the profile tags. The value of the meta.profile is a soft indicator of conformance expectation. Receivers may choose to validate actual conformance and fail transactions due to non-conformance.

