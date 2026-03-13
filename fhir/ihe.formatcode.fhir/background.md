# Background - IHE FormatCode Vocabulary v1.5.1-current

* [**Table of Contents**](toc.md)
* **Background**

## Background

The code specifying the detailed technical format of the document. Along with the mimeType, it should provide sufficient information to allow potential consumer to know if it will be able to process the document.

The mimeType indicates the base format; the formatCode indicates the detailed-level technical structure and profiled constraints. Together with the mimeType, the formatCode used shall be sufficiently specific to ensure processing/display by identifying a document encoding, structure and template (e.g., for a CDA Document, the fact that it complies with a CDA schema, possibly a template and the choice of a content-specific style sheet).

The formatCode is often an indicator of the IHE Document Content Profile to which the document conforms.

The mimeTypeSufficient formatCode of EV("urn:ihe:iti:xds:2017:mimeTypeSufficient", "1.3.6.1.4.1.19376.1.2.3") may be used when the mimeType is sufficient to identify the technical format of the document, or where there are no constaints imposed on the content by a profile. Format codes may be specified by multiple organizations. Format codes for Document Content Profiles defined by the ITI domain shall be in URN format and have names with the prefix `urn:ihe:iti:`

Format codes defined by other IHE domains shall have names with the prefix

`urn:ihe:{domain initials}:`

IHE and HL7 have worked together to transition the HL7 defined codes for C-CDA into the HL7 codesystem management. Thus these codes are now indicated as deprecated in the IHE CodeSystem, as they now exist in [HL7 CodeSystem](https://terminology.hl7.org/CodeSystem-v3-HL7DocumentFormatCodes.html) `http://terminology.hl7.org/CodeSystem/v3-HL7DocumentFormatCodes`. Note that prior versions of the HL7 CodeSystem were known as `http://terminology.hl7.org/CodeSystem/v3-HL7DocumentFormatCodes`.

Prior versions of IHE codes were published on the IHE Wiki, and the CodeSystem were known as `http://ihe.net/fhir/ValueSet/IHE.FormatCode.codesystem`. This canonical URI was changed due to the fact that it improperly included `ValueSet` in the canonical URI path when it was actually a `CodeSystem`.

IHE co-chairs must follow the instructions for submitting change to the IHE FormatCode vocabulary as documented on the [IHE GitHub repository](https://github.com/IHE/FormatCode) for this FormatCode implementation guide.

