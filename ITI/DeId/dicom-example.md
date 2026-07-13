# DICOM Example - De-Identification Handbook v2.0.0-comment

* [**Table of Contents**](toc.md)
* **DICOM Example**

## DICOM Example

### DICOM data for secondary use

DICOM (Digital Imaging and Communications in Medicine) is a standard for storing, transmitting, and managing medical imaging data, such as X-rays, MRIs, and CT scans. In secondary use, DICOM data is repurposed beyond its primary clinical applications, such as diagnosis and treatment planning, for research, education, and analytics. This involves extracting de-identified data for studies, training AI models, or quality improvement initiatives. Secondary use leverages the rich metadata and imaging information in DICOM files to advance medical research, improve healthcare outcomes, and develop innovative tools, while ensuring compliance with privacy regulations like HIPAA.

The DICOM standard has defined a set of confidentiality options for common de-identification situations. These apply directly to many real world situations, and can be used as the starting point for specialized adaptation to other situations. Many clinical trial plans and RFPs require use of these standard de-identification methods, and the DICOM standard is recognized by the FDA.

[DICOM](references.md#DICOM) defines standard actions. The following is the subset that used in the example below.

**Table: DICOM Algorithms (Subset for example)**

| | |
| :--- | :--- |
| D | replace with a non-zero length value that may be a dummy value and consistent with the value representation (VR) |
| X | Remove |
| K | keep (unchanged for non-sequence attributes, cleaned for sequences) |
| C | clean, that is replace with values of similar meaning known not to contain identifying information and consistent with the VR |
| X/D | X unless D is required to maintain IOD conformance (Type 3 versus Type 1) |

[DICOM PS 3.15, Annex E](references.md#DICOM-part-15-annex-e) specifies in a rather large table (Table E.1-1. Application Level Confidentiality Profile Attributes) with every possible attribute that should be de-identified. There is a default de-identification profile and several common options that modify that default. An extract is shown below as an example of how to read that table.

**Table: Table E.1-1. Application Level Confidentiality Profile Attributes (Subset for example)**

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Patient's Age | (0010,1010) | X | … | K | … |
| Patient's Sex | (0010,0040) | Z | … | K | … |

The snippet above shows that the default profile requires the removal of (Action code: X) Patient's Age (0010,1010) and Patient's Sex (0010,0040). However, in some cases such as AI Model training, or regulatory requirements it may be necessary to keep the patient demographic information. Such attributes can be retained by enabling patient retention option (Rtn. Pat. Chars. Opt.), but the utility of the data may be affected when other attributes are removed by default. Therefore, for the example in this chapter, we apply a two-stage of de-identification to make sure privacy risk and data utility are well managed.

### Teaching File and Clinical Trial Export

The Teaching File and Clinical Trial Export (TCE) Profile facilitates the selection and export of DICOM instances, series, or studies—such as images, key image notes, reports, evidence documents, and presentation states for use in teaching files or clinical trials. It specifies an Export Selection actor, typically integrated with an Image Display or Acquisition Modality, and an Export Processing actor, which must support configurable de-identification of exported instances. The profile also offers options for de-identifying pixel data, remapping identifiers to pseudonymous values, including additional teaching file information, and delaying export for various reasons[(IHE RAD TF Vol1)](references.md#IHE_RAD_TF_Vol1). The TCE introduces three actors, Export Selector, Export Manager, and Receiver. The Export Selector selects and makes DICOM instances available to the Export Manager for exporting. The Export Manager performs the task of de-identifying DICOM data before sending it to the Receiver.

### Two stages of de-identification for secondary use of DICOM

In this example, we assume a dedicated anonymization service is deployed in an environment that serves secondary DICOM use in an environment that is separate from where the medical modality is deployed. The de-identification on the modality usually follows [(DICOM PS 3.15, Annex E)](https://dicom.nema.org/medical/dicom/current/output/chtml/part15/chapter_e.html). In this example, we assume the de-identification behavior can be customized as a pseudonymization policy (only processing direct identifiers such as all types of iD/UIDs, patient's id etc). Anonymizing the quasi-identifiers such as patient age will be processed by the dedicated anonymization service, which is based on the TCE profile. The diagram below shows the workflow of the resulting two stages of de-identification. In the diagram, we use the same actor names (export selector, export manager) introduced in the TCE profile just for illustration, meaning the modality does not need to implement their de-identification function by following the transactions required by the TCE profile.

**Two stages of de-identification based on TCE Profile **
**Process Steps: Stage 1**

1. Enable pseudonymization policy on the modality. In this example, it is assumed the modality supports customization of the de-identification behavior to enable a pseudonymization policy. The pseudonymization policy covers all the attributes that are direct identifiers such as UIDs, Patient ID.
1. Export pseudonymized DICOM to a portable media. After properly setting the pseudonymization policy, a user selects and exports the DICOM data to a portable media. The modality performs de-identification by following the pseudonymization policy, and then exports the pseudonymized DICOM file to a portable media. It is assumed that the modality exports the pseudonymized DICOM data to the portable media by following the Portable Data for Imaging Integration Profile (PDI) specified in [(IHE RAD TF Vol1)](references.md#IHE_RAD_TF_Vol1).
1. Transfer the portable media to environment of anonymization. In this example the transfer activity is performed by a human using the portable media, however, an alternative solution is to transfer the pseudonymized DICOM via a secure network.

**Process Steps: Stage 2**

1. Import the pseudonymized DICOM data. After receiving the portable media, the user can import the pseudonymized DICOM data stored on it. It is assumed that the dedicated de-identification system adopted the Portable Media Creator defined in the Portable Data for Imaging Integration Profile (PDI) specified in [(IHE RAD TF Vol1)](references.md#IHE_RAD_TF_Vol1).
1. Select anonymization policy. An anonymization policy needs to be selected and sent to the Export Manager together with the selected pseudonymized DICOM data. In some cases, a default anonymization policy could be deployed together with the Export Manager. Anonymization policy describes the behavior of processing quasi-identifiers such as Patient's Age or Patient's Sex. The processing behavior cannot be unified to fit the requirements of all data collection cases. For example, patient age usually needs to be transformed into a ranged value from the original value, but the range may be different for different cases, some requiring a 5-year range (20-25, 25-30,..) and others requiring a 3-year range. Therefore, ideally, the anonymization policy is customized and approved in a case-by-case manner.
1. Store pseudonymized DICOM data and Anonymization Policy. The Export Selector selects the imported pseudonymized DICOM data and the selected anonymization policy then send them to the Export Manager. According to the TCE profile, the DICOM data can be sent using the transaction Store Export Selection [RAD-51], and the anonymization policy can be sent using the transaction Store Additional Teaching File Information [RAD-52].
1. Perform anonymization. The Export Manager performs the anonymization after receiving the pseudonymized DICOM data and anonymization policy, and then sends the anonymized DICOM data to the Receiver via the transaction Export Instances [RAD-53].
1. Export anonymized DICOM to a portable media. After receiving the anonymization, the Receiver triggers the grouped Portable Media Creator to perform a task of exporting the anonymized DICOM data to a portable media. It is assumed that the Portable Data for Imaging Integration Profile (PDI) specified in [(IHE RAD TF Vol1)](references.md#IHE_RAD_TF_Vol1) is followed.

### Marking De-identification Status in DICOM

According to the DICOM standard, when de-identification has been performed, specific attributes must be added or modified to indicate that patient identity has been removed and to document the de-identification method used.

**Required Attributes for De-identified DICOM Data:**

The Attribute Patient Identity Removed (0012,0062) shall be replaced or added to the Data Set with a value of YES. Additionally, one or more codes from CID 7050 "De-identification Method" corresponding to the Profile and Options used shall be added to De-identification Method Code Sequence (0012,0064), and/or a text string describing the method used shall be inserted in or added to De-identification Method (0012,0063).

| | | | |
| :--- | :--- | :--- | :--- |
| Patient Identity Removed | (0012,0062) | CS | Indicates that the patient's identity has been removed. Value shall be YES |
| De-identification Method | (0012,0063) | LO | Free-text description of the de-identification method used |
| De-identification Method Code Sequence | (0012,0064) | SQ | Coded values from CID 7050 "De-identification Method" |

**DICOM CID 7050 De-identification Method Codes (Subset):**

| | | |
| :--- | :--- | :--- |
| 113100 | Basic Application Confidentiality Profile | Basic profile from DICOM PS3.15 Annex E |
| 113101 | Clean Pixel Data Option | Pixel data has been cleaned of burnt-in annotations |
| 113102 | Clean Recognizable Visual Features Option | Facial features and other recognizable features removed |
| 113103 | Clean Graphics Option | Graphics overlays removed |
| 113104 | Clean Structured Content Option | Structured content cleaned |
| 113105 | Clean Descriptors Option | Descriptive text cleaned |
| 113106 | Retain Longitudinal Temporal Information Full Dates Option | Original dates retained |
| 113107 | Retain Longitudinal Temporal Information Modified Dates Option | Dates modified but temporal relationships preserved |
| 113108 | Retain Patient Characteristics Option | Patient demographic characteristics retained |
| 113109 | Retain Device Identity Option | Device identity retained |
| 113110 | Retain UIDs Option | UIDs retained |
| 113111 | Retain Safe Private Option | Safe private attributes retained |

### Example: DICOM Attribute De-identification

The following examples show key DICOM attributes at each stage of the de-identification process.

**Before De-identification (Identified Data):**

```
(0008,0018) SOP Instance UID: 1.2.840.113619.2.55.3.123456789.987654321
(0010,0010) Patient's Name: Smith^John^Robert
(0010,0020) Patient ID: MRN123456
(0010,0030) Patient's Birth Date: 19850315
(0010,0040) Patient's Sex: M
(0010,1010) Patient's Age: 038Y
(0010,1040) Patient's Address: 123 Main Street, Springfield, IL 62701
(0010,2154) Patient's Telephone Numbers: +1-555-123-4567
(0020,000D) Study Instance UID: 1.2.840.113619.2.55.3.123456789.111111111
(0020,000E) Series Instance UID: 1.2.840.113619.2.55.3.123456789.222222222
(0032,1032) Requesting Physician: Jones^Mary^A
(0008,0090) Referring Physician's Name: Brown^David^L
(0008,1030) Study Description: CT Chest with Contrast
(0008,103E) Series Description: Axial Images

```

**After Stage 1 (Pseudonymized Data):**

```
(0012,0062) Patient Identity Removed: YES
(0012,0063) De-identification Method: Stage 1 Pseudonymization - Direct identifiers replaced
(0012,0064) De-identification Method Code Sequence:
  >Item 1:
    (0008,0100) Code Value: 113111
    (0008,0102) Coding Scheme Designator: DCM
    (0008,0104) Code Meaning: Retain Safe Private Option
  >Item 2:
    (0008,0100) Code Value: 113108
    (0008,0102) Coding Scheme Designator: DCM
    (0008,0104) Code Meaning: Retain Patient Characteristics Option

(0008,0018) SOP Instance UID: 2.25.123456789012345678901234567890123456
(0010,0010) Patient's Name: [REMOVED]
(0010,0020) Patient ID: STUDY-PSEUDO-12345
(0010,0030) Patient's Birth Date: 19850315
(0010,0040) Patient's Sex: M
(0010,1010) Patient's Age: 038Y
(0010,1040) Patient's Address: [REMOVED]
(0010,2154) Patient's Telephone Numbers: [REMOVED]
(0020,000D) Study Instance UID: 2.25.234567890123456789012345678901234567
(0020,000E) Series Instance UID: 2.25.345678901234567890123456789012345678
(0032,1032) Requesting Physician: [REMOVED]
(0008,0090) Referring Physician's Name: [REMOVED]
(0008,1030) Study Description: CT Chest with Contrast
(0008,103E) Series Description: Axial Images

```

**After Stage 2 (Anonymized Data):**

```
(0012,0062) Patient Identity Removed: YES
(0012,0063) De-identification Method: Stage 2 Anonymization - Basic Profile with Patient Characteristics and Modified Dates Options
(0012,0064) De-identification Method Code Sequence:
  >Item 1:
    (0008,0100) Code Value: 113100
    (0008,0102) Coding Scheme Designator: DCM
    (0008,0104) Code Meaning: Basic Application Confidentiality Profile
  >Item 2:
    (0008,0100) Code Value: 113108
    (0008,0102) Coding Scheme Designator: DCM
    (0008,0104) Code Meaning: Retain Patient Characteristics Option
  >Item 3:
    (0008,0100) Code Value: 113107
    (0008,0102) Coding Scheme Designator: DCM
    (0008,0104) Code Meaning: Retain Longitudinal Temporal Information Modified Dates Option

(0008,0018) SOP Instance UID: 2.25.123456789012345678901234567890123456
(0010,0010) Patient's Name: [REMOVED]
(0010,0020) Patient ID: STUDY-PSEUDO-12345
(0010,0030) Patient's Birth Date: 1985
(0010,0040) Patient's Sex: M
(0010,1010) Patient's Age: 035Y-039Y
(0010,1040) Patient's Address: [REMOVED]
(0010,2154) Patient's Telephone Numbers: [REMOVED]
(0020,000D) Study Instance UID: 2.25.234567890123456789012345678901234567
(0020,000E) Series Instance UID: 2.25.345678901234567890123456789012345678
(0032,1032) Requesting Physician: [REMOVED]
(0008,0090) Referring Physician's Name: [REMOVED]
(0008,1030) Study Description: CT Chest
(0008,103E) Series Description: Axial Images

```

**Key De-identification Actions Applied:**

**Stage 1 (Pseudonymization):**

* Patient's Name (0010,0010): Removed
* Patient ID (0010,0020): Replaced with study-specific pseudonym
* Patient's Address (0010,1040): Removed
* Patient's Telephone Numbers (0010,2154): Removed
* UIDs (0008,0018, 0020,000D, 0020,000E): Replaced with new pseudonymous UIDs
* Physician Names (0032,1032, 0008,0090): Removed
* Patient's Birth Date, Sex, Age: Retained for Stage 2 processing
* Patient Identity Removed (0012,0062): Set to YES
* De-identification Method Code Sequence (0012,0064): Added with codes 113111 and 113108

**Stage 2 (Anonymization):**

* Patient's Birth Date (0010,0030): Generalized to year only
* Patient's Age (0010,1010): Generalized to 5-year range
* Study Description (0008,1030): Generalized (removed "with Contrast")
* Patient Identity Removed (0012,0062): Remains YES
* De-identification Method (0012,0063): Updated with Stage 2 description
* De-identification Method Code Sequence (0012,0064): Updated with codes 113100, 113108, and 113107

These attributes provide transparency about the de-identification process and help data recipients understand what transformations have been applied to the dataset. The codes from CID 7050 allow for standardized, machine-readable documentation of the specific de-identification profile and options used.

