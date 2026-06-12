# HL7 v2 Example - De-Identification Handbook v2.0.0-comment

* [**Table of Contents**](toc.md)
* **HL7 v2 Example**

## HL7 v2 Example

### HL7 2.x Messages for secondary use

HL7 Version 2.x is a widely adopted messaging standard for exchanging clinical and administrative data between healthcare systems. HL7 2.x messages use a pipe-delimited format with segments (like PID for patient identification, OBR for observation requests) containing fields that often include patient identifiers and other sensitive information. In secondary use, HL7 2.x messages are repurposed beyond direct patient care for public health surveillance, biosurveillance, quality reporting, and research. This involves de-identifying messages while preserving their utility for analysis. Secondary use of HL7 2.x data enables population health monitoring, outbreak detection, and healthcare quality improvement, while ensuring compliance with privacy regulations like HIPAA.

HL7 2.x provides several mechanisms to support de-identification:

**Table: HL7 2.x De-identification Mechanisms**

| | |
| :--- | :--- |
| Field Removal | Complete removal of segments or fields containing identifiers |
| Field Masking | Replacing field values with empty strings or placeholder values (e.g., "U" for unknown) |
| Pseudonymization | Replacing identifiers with consistent pseudonyms to maintain message integrity |
| Generalization | Replacing precise values with ranges or categories (e.g., date precision reduction) |
| Value Substitution | Replacing actual values with dummy or synthetic values |

### Two stages of de-identification for secondary use of HL7 2.x

In this example, we assume a dedicated anonymization service is deployed in an environment serving secondary HL7 2.x data use, which is separated from the environment where the operational healthcare system is deployed. The de-identification at the source system typically follows basic pseudonymization practices (processing direct identifiers like patient names, contact information, and medical record numbers). In this example, we assume the de-identification behavior can be customized as a pseudonymization policy. Anonymizing the quasi-identifiers, like patient age and geographic location, will be processed by the dedicated anonymization service.

**Process Steps: Stage 1**

1. Enable pseudonymization policy on the source system. The source system supports customization of the de-identification behavior to enable a pseudonymization policy. The pseudonymization policy covers all the attributes which are direct identifiers, like PID-5 (Patient Name), PID-3 (Patient Identifier List), PID-13/PID-14 (Phone Numbers), PID-11 (Patient Address), and message control IDs.
1. Export pseudonymized HL7 2.x messages. After properly setting the pseudonymization policy, an authorized user initiates a data export. The source system performs de-identification by following the pseudonymization policy, and then exports the pseudonymized HL7 2.x messages. The messages are exported to a secure storage location or message queue.
1. Transfer the pseudonymized data to the anonymization environment. The pseudonymized HL7 2.x messages are transferred via a secure network connection (e.g., HTTPS, SFTP) or through encrypted portable media to the research data center. Access is controlled through authentication and authorization mechanisms.

**Process Steps: Stage 2**

1. Import the pseudonymized HL7 2.x messages. The research data center imports the pseudonymized HL7 2.x messages into the dedicated de-identification system. The system validates the message structure and prepares them for advanced anonymization processing.
1. Select anonymization policy. An anonymization policy needs to be selected and applied to the pseudonymized HL7 2.x messages. The anonymization policy describes the behavior of processing quasi-identifiers, such as PID-7 (Date of Birth), PID-11 (Patient Address postal codes), and PID-8 (Administrative Sex). The processing behavior cannot be unified to fit the requirements of all data collection cases. For example, patient age usually needs to be transformed into a ranged value from the original birth date, but the range scope may be different for different cases. Some require 5-year ranges, others may require 10-year ranges or age categories. Geographic data may need to be generalized to 3-digit ZIP codes for some studies or to state level for others. Therefore, ideally, the anonymization policy is customized and approved in a case-by-case manner based on the research protocol and IRB requirements.
1. Process pseudonymized HL7 2.x messages with anonymization policy. The anonymization service applies the selected policy to transform quasi-identifiers:
* **Temporal data**: Apply date-shifting to all date/time fields (PID-7, OBR-7, OBR-8, etc.) while maintaining relative time intervals between related events
* **Geographic data**: Generalize PID-11 (Patient Address) postal codes to 3-digit ZIP codes or remove entirely
* **Demographic data**: Convert PID-7 (Date of Birth) to age ranges, retain PID-8 (Administrative Sex) if low risk
* **Free-text content**: Apply NLP-based redaction to NTE segments and other text fields
* **Identifiers**: Ensure all patient identifiers (PID-3) and visit numbers (PV1-19) use pseudonymized values consistently

1. Perform risk assessment. The anonymization service performs a quantitative re-identification risk assessment (e.g., k-anonymity analysis) on the processed dataset to ensure it meets the acceptable risk threshold defined in the project requirements.
1. Mark de-identification status. The anonymization service adds appropriate indicators to document the de-identification status. This may include adding custom Z-segments or maintaining metadata in accompanying documentation to indicate the message has been de-identified.
1. Export anonymized HL7 2.x messages. After successful anonymization and risk assessment, the service exports the anonymized HL7 2.x messages to the research environment. The messages can be exported as individual files, batched messages, or loaded into a message repository for analysis.

### Example: HL7 2.x ADT^A08 Message De-identification

**Before De-identification (Identified Data):**

```
MSH|^~\&|PROACCESS5|DHIN|BIOSENSE|CDC01|20080808290000||ADT^A08|1437549872|P|2.5||

PID|123|12345|00000123456|123A|Public^""^Corbin^""^""^""||19900123|M||I|Somestreet^1^Nieuwegein^^84063^""|US|+1-801-555-1212|+1-801-555-1212|Eng|S|Catholic|MRN1234|123-45-6789|UTDL12345|ID1234|EthnicGrp|Dayton,OH|""

ZPI|1||||DoctorDr.^^""^""^""|||||||""

PV1|1|O|||

IN1||Plan123|PART|InsureCo|Address1|Admin|+1-801-555-1212|Group12|GroupNm|EmpID|CoNm|20080101|20081231|Auth|TypeP|Spencer^Royce|Son|19990101|Addr|AOB|COB|||||||||||||||||""

```

**After Stage 1 (Pseudonymized Data):**

```
MSH|^~\&|PROACCESS5|DHIN|BIOSENSE|CDC01|20080808290000||ADT^A08|111122223333|P|2.5||

PID|SID|PID|PIDLIST|ALTPID|FamilyName^""^GivenName^""^""^""||19900123|M||I|""^""^""^^84063^""|US|HomePh|BusPh|Eng|S|Catholic|PSEUDO1234||||EthnicGrp|Dayton,OH|""

ZPI|1||||DoctorDr.^^""^""^""|||||||""

PV1|1|O|||

IN1||Plan123|PART|InsureCo|Address1|Admin|+1-801-555-1212|Group12|GroupNm|EmpID|CoNm|20080101|20081231|Auth|TypeP|Spencer^Royce|Son|19990101|Addr|AOB|COB|||||||||||||||||""

```

**After Stage 2 (Anonymized Data):**

"U" chars indicate empty content where data has been removed for privacy

```
MSH|^~\&|PROACCESS5|DHIN|BIOSENSE|CDC01|20080808290000||ADT^A08|111122223333|P|2.5||

PID|SID|PID|PIDLIST|ALTPID|FamilyName^""^GivenName^""^""^""||19900113|U|Alias|U|""^""^""^^840??^""|US|HomePh|BusPh|U|U|U|PSEUDO1234|U|U|U|U|U|""

ZPI|1||||DoctorDr.^^""^""^""|||||||""

PV1|1|O|||

IN1||Plan123|PART|InsureCo|Address1|Admin|+1-801-555-1212|Group12|GroupNm|EmpID|CoNm|20080101|20081231|Auth|TypeP|Spencer^Royce|Son|19990101|Addr|AOB|COB|||||||||||||||||""

```

**Key De-identification Changes:**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| MSH-10 (Message Control ID) | 1437549872 | 111122223333 | 111122223333 | Pseudonymized |
| PID-3 (Patient ID) | 00000123456 | PIDLIST | PIDLIST | Pseudonymized |
| PID-5 (Patient Name) | Public^""^Corbin | FamilyName^""^GivenName | FamilyName^""^GivenName | Pseudonymized |
| PID-7 (Date of Birth) | 19900123 | 19900123 | 19900113 | Date-shifted |
| PID-8 (Administrative Sex) | M | M | U | Masked |
| PID-11 (Address) | Somestreet^1^Nieuwegein^^84063 | ""^""^""^^84063 | ""^""^""^^840?? | Generalized ZIP |
| PID-13/14 (Phone) | +1-801-555-1212 | HomePh/BusPh | HomePh/BusPh | Pseudonymized |
| PID-18 (Account Number) | MRN1234 | PSEUDO1234 | PSEUDO1234 | Pseudonymized |
| PID-19 (SSN) | 123-45-6789 | (removed) | U | Masked |

### HL7 CDA Documents for secondary use

HL7 Clinical Document Architecture (CDA) is an XML-based standard for encoding clinical documents such as discharge summaries, progress notes, and continuity of care documents. CDA documents contain structured and narrative clinical information, including patient demographics, clinical observations, procedures, and medications. In secondary use, CDA documents are repurposed beyond direct patient care for clinical research, quality measurement, public health reporting, and comparative effectiveness studies. This involves de-identifying documents while preserving their clinical utility for analysis. Secondary use of CDA data enables large-scale clinical studies, outcomes research, and healthcare quality improvement initiatives, while ensuring compliance with privacy regulations like HIPAA and GDPR.

CDA provides several mechanisms to support de-identification:

**Table: CDA De-identification Mechanisms**

| | |
| :--- | :--- |
| Element Removal | Complete removal of XML elements containing identifiers |
| Attribute Nullification | Setting nullFlavor attribute to indicate masked data |
| Pseudonymization | Replacing identifiers with consistent pseudonyms using extension attributes |
| Generalization | Replacing precise values with ranges or categories |
| Narrative Redaction | Removing or masking identifiers in human-readable narrative sections |

### Two stages of de-identification for secondary use of CDA

In this example, we assume a dedicated anonymization service is deployed in an environment serving secondary CDA data use, which is separated from the environment where the operational EHR system is deployed. The de-identification at the source EHR typically follows basic pseudonymization practices (processing direct identifiers like patient names, contact information, and medical record numbers). In this example, we assume the de-identification behavior can be customized as a pseudonymization policy. Anonymizing the quasi-identifiers, like patient age and geographic location, will be processed by the dedicated anonymization service.

**Process Steps: Stage 1**

1. Enable pseudonymization policy on the EHR system. The EHR system supports customization of the de-identification behavior to enable a pseudonymization policy. The pseudonymization policy covers all the attributes which are direct identifiers, like patient name elements, patient identifiers, telecom elements, and address details in the recordTarget section.
1. Export pseudonymized CDA documents. After properly setting the pseudonymization policy, an authorized user initiates a document export. The EHR system performs de-identification by following the pseudonymization policy, and then exports the pseudonymized CDA documents. The documents are exported to a secure storage location or document repository.
1. Transfer the pseudonymized data to the anonymization environment. The pseudonymized CDA documents are transferred via a secure network connection (e.g., HTTPS, SFTP) or through encrypted portable media to the research data center. Access is controlled through authentication and authorization mechanisms.

**Process Steps: Stage 2**

1. Import the pseudonymized CDA documents. The research data center imports the pseudonymized CDA documents into the dedicated de-identification system. The system validates the CDA structure and prepares them for advanced anonymization processing.
1. Select anonymization policy. An anonymization policy needs to be selected and applied to the pseudonymized CDA documents. For some cases, a default anonymization policy could be deployed together with the anonymization service. The anonymization policy describes the behavior of processing quasi-identifiers, such as patient birthTime, address postal codes, and administrative gender. The processing behavior cannot be unified to fit the requirements of all data collection cases. For example, patient age usually needs to be transformed into a ranged value from the original birthTime, but the range scope may be different for different cases. Some require 5-year ranges, others may require 10-year ranges or age categories. Geographic data may need to be generalized to 3-digit ZIP codes for some studies or to state level for others. Therefore, ideally, the anonymization policy is customized and approved in a case-by-case manner based on the research protocol and IRB requirements.
1. Process pseudonymized CDA documents with anonymization policy. The anonymization service applies the selected policy to transform quasi-identifiers:
* **Temporal data**: Apply date-shifting to all effectiveTime and birthTime elements while maintaining relative time intervals between related events
* **Geographic data**: Generalize addr/postalCode elements to 3-digit ZIP codes or remove entirely
* **Demographic data**: Convert birthTime to age ranges, retain administrativeGenderCode if low risk
* **Narrative content**: Apply NLP-based redaction to narrative text sections and comments
* **Clinical codes**: Review for rare or facility-specific codes that could identify the source
* **Identifiers**: Ensure all patient identifiers and document IDs use pseudonymized values consistently

1. Perform risk assessment. The anonymization service performs a quantitative re-identification risk assessment (e.g., k-anonymity analysis) on the processed dataset to ensure it meets the acceptable risk threshold defined in the project requirements.
1. Mark de-identification status. The anonymization service adds appropriate confidentiality codes and metadata to indicate the de-identification status. This includes setting the confidentialityCode element and potentially adding custom extensions to document the de-identification process.
1. Export anonymized CDA documents. After successful anonymization and risk assessment, the service exports the anonymized CDA documents to the research environment. The documents can be exported as individual XML files or loaded into a document repository for query access.

### CDA nullFlavor for De-identification

When data elements are removed or masked during de-identification, CDA provides the nullFlavor attribute to indicate why the data is not present. This is analogous to FHIR's Data Absent Reason extension.

**nullFlavor Codes for De-identification:**

| | | |
| :--- | :--- | :--- |
| MSK | Masked | There is information on this item available but it has not been provided by the sender due to security, privacy or other reasons |
| UNK | Unknown | A proper value is applicable, but not known |

### Example: CDA Patient Demographics De-identification

**Before De-identification (Identified Data):**

```
<recordTarget>
  <patientRole>
    <id extension="MRN123456" root="2.16.840.1.113883.19.5"/>
    <id extension="123-45-6789" root="2.16.840.1.113883.4.1"/>
    <addr use="HP">
      <streetAddressLine>123 Main Street</streetAddressLine>
      <streetAddressLine>Apt 4B</streetAddressLine>
      <city>Springfield</city>
      <state>IL</state>
      <postalCode>62701</postalCode>
      <country>US</country>
    </addr>
    <telecom value="tel:+1-555-123-4567" use="HP"/>
    <telecom value="mailto:john.smith@example.com" use="HP"/>
    <patient>
      <name use="L">
        <given>John</given>
        <given>Robert</given>
        <family>Smith</family>
      </name>
      <administrativeGenderCode code="M" codeSystem="2.16.840.1.113883.5.1"/>
      <birthTime value="19850315"/>
    </patient>
  </patientRole>
</recordTarget>

```

**After Stage 1 (Pseudonymized Data):**

```
<recordTarget>
  <patientRole>
    <id extension="STUDY-PSEUDO-12345" root="2.16.840.1.113883.19.5"/>
    <addr use="HP">
      <state>IL</state>
      <postalCode>62701</postalCode>
      <country>US</country>
    </addr>
    <telecom nullFlavor="MSK"/>
    <patient>
      <name nullFlavor="MSK"/>
      <administrativeGenderCode code="M" codeSystem="2.16.840.1.113883.5.1"/>
      <birthTime value="19850315"/>
    </patient>
  </patientRole>
</recordTarget>

```

**After Stage 2 (Anonymized Data):**

```
<recordTarget>
  <patientRole>
    <id extension="STUDY-PSEUDO-12345" root="2.16.840.1.113883.19.5"/>
    <addr use="HP">
      <state>IL</state>
      <postalCode>627</postalCode>
      <country>US</country>
    </addr>
    <telecom nullFlavor="MSK"/>
    <patient>
      <name nullFlavor="MSK"/>
      <administrativeGenderCode code="M" codeSystem="2.16.840.1.113883.5.1"/>
      <birthTime nullFlavor="MSK">
        <!-- Age range: 35-39 years -->
      </birthTime>
    </patient>
  </patientRole>
</recordTarget>

```

