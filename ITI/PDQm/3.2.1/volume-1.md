# 1:38 Patient Demographics Query for Mobile (PDQm) - Patient Demographics Query for Mobile (PDQm) v3.2.1

* [**Table of Contents**](toc.md)
* **1:38 Patient Demographics Query for Mobile (PDQm)**

## 1:38 Patient Demographics Query for Mobile (PDQm)

The Patient Demographics Query for Mobile (PDQm) Profile defines a lightweight RESTful interface to a patient demographics supplier leveraging technologies readily available to mobile applications and lightweight browser based applications.

The functionality is similar to the [PDQ](https://profiles.ihe.net/ITI/TF/Volume1/ch-8.html) and [PDQv3](https://profiles.ihe.net/ITI/TF/Volume1/ch-24.html) Profiles. The differences are driven by the use of HL7 [FHIR](http://hl7.org/fhir/). The profile leverages HTTP transport, and the JavaScript Object Notation (JSON), Simple-XML, and Representational State Transfer (REST). The payload format is defined by the HL7 [FHIR](http://hl7.org/fhir/) standard.

The following list provides a few examples of how PDQm might be leveraged by implementers:

* A health portal securely exposing demographics data to browser-based plugins
* Medical devices which need to access patient demographic information
* Mobile devices used by physicians (example bedside eCharts) which need to establish patient context by scanning a bracelet
* Web based EHR/EMR applications which wish to provide dynamic updates of patient demographic information such as a non-postback search, additional demographic detail, etc.
* Any low resource application which exposes patient demographic search functionality
* Any application using the MHD Profile to access documents MAY use PDQm to find an appropriate patient identifier

This implementation guide is intended to be fully compliant with the HL7 [FHIR](http://hl7.org/fhir/) specification, providing only use-case driven constraints to aid with interoperability, deterministic results, and compatibility with existing PDQ and PDQv3 Profiles.

## 1:38.1 PDQm Actors, and Transactions

Figure 1:38.1-1 shows the actors directly involved in the Patient Demographics Query for Mobile Profile and the relevant transactions between them. Note that the actors in this profile are the same as the actors defined in the PDQ Profile [ITI TF-1: 8.1](https://profiles.ihe.net/ITI/TF/Volume1/ch-8.html#8.1).

**Figure 1:38.1-1: PQDm Actor Diagram**

| | | |
| :--- | :--- | :--- |
| Patient Demographics Consumer | [Mobile Patient Demographics Query [ITI-78]](ITI-78.md) | O |
| [Patient Demographics Match [ITI-119]](ITI-119.md) | O | |
| Patient Demographics Supplier | [Mobile Patient Demographics Query [ITI-78]](ITI-78.md) | R |
| [Patient Demographics Match [ITI-119]](ITI-119.md) | O | |

**Note 1:** The Mobile Patient Demographics Query [[ITI-78]](ITI-78.md) and Patient Demographics Match [[ITI-119]](ITI-119.md) transactions correspond to the transactions used in the [PDQ](https://profiles.ihe.net/ITI/TF/Volume1/ch-8.html) and [PDQv3](https://profiles.ihe.net/ITI/TF/Volume1/ch-24.html) Profiles and provide similar functionality. There is no transaction which corresponds to the Patient Demographics and Visit Query [ITI-22]. See [ITI TF-2: Appendix M.4](https://profiles.ihe.net/ITI/TF/Volume2/ch-M.html#M.4) for a mapping of query fields for PDQ, PDQv3, and PDQm transactions.

**Note 2:** The Patient Demographics Consumer SHALL implement at least one of the Mobile Patient Demographics Query [ITI-78] or Patient Demographics Match [ITI-119] transactions.

### 1:38.1.1 Actor Descriptions and Actor Profile Requirements

#### 1:38.1.1.1 Patient Demographics Consumer

Two `requirements` CapabilityStatements are provided for the Patient Demographics Consumer. The [Patient Demographics Consumer Implementing the Patient Search Option](CapabilityStatement-IHE.PDQm.PatientDemographicsConsumerQuery.md) statement shows the query parameters available and the requirements that need to be implemented by a Patient Demographics Consumer implementing the Patient Search Option. The [Patient Demographics Consumer Implementing the Match Operation Option](CapabilityStatement-IHE.PDQm.PatientDemographicsConsumerMatch.md) describes support for the [PDQm $Match operation](OperationDefinition-PDQmMatch.md).

#### 1:38.1.1.2 Patient Demographics Supplier

Two `requirements` CapabilityStatements are provided for the Patient Demographics Supplier. The [Patient Demographics Supplier](CapabilityStatement-IHE.PDQm.PatientDemographicsSupplier.md) statement shows the query parameters to be supported by all Patient Demographics Suppliers. The [Patient Demographics Supplier Implementing Match Operation Option](CapabilityStatement-IHE.PDQm.PatientDemographicsSupplierMatch.md) shows the additional capabilities of a Patient Demographics Supplier that implements the Match Operation Option, including support for the [PDQm $Match operation](OperationDefinition-PDQmMatch.md).

The Patient Demographics Supplier SHALL publish an `instance` CapabilityStatement at the metadata endpoint following [ITI Appendix Z.3](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.3-capabilitystatement-resource) using the [FHIR capabilities interaction](http://hl7.org/fhir/R4/http.html#capabilities). All supported search parameters and search methods (GET, POST) SHALL be specified. The [search parameters defined in [ITI-78]](ITI-78.md#23784121-search-parameters) SHALL be supported, other parameters MAY be supported. The [PDQm $Match Operation](OperationDefinition-PDQmMatch.md) SHALL also be supported if the Match Operation Option is declared.

This capabilities response will typically include all of the capabilities inclusive of all grouped actors and additional functionality.

### 1:38.1.2 Transaction Descriptions

The transactions in this profile are summarized in the sections below.

#### 1:38.1.2.1 Mobile Patient Demographics Query Transaction

Mobile Patient Demographics Query is used by the Patient Demographics Consumer to search for information about patients whose demographics data match data provided in the query parameters on the request message. The request is received by the Patient Demographics Supplier. The Patient Demographics Supplier processes the search and returns a response in the form of demographics information for the matching patients.

For more details see the detailed [transaction description](ITI-78.md).

#### 1:38.1.2.2 Patient Demographics Match Transaction

Patient Demographics Match is used by the Patient Demographics Consumer to request that the Patient Demographics Supplier identify Patient records that match the demographics supplied in the request message. The request is received by the Patient Demographics Supplier. The Patient Demographics Supplier processes the request according to its internal matching algorithm and returns a response in the form of demographics information for the matching patients.

For more details, see the detailed [transaction description](ITI-119.md).

## 1:38.2 PDQm Actor Options

Options that MAY be selected for each actor in this profile, if any, are listed in Table 1:38.2-1. Dependencies between options when applicable are specified in notes.

**Table 1:38.2-1: Patient Demographics Query for Mobile - Actors and Options**

| | | |
| :--- | :--- | :--- |
| Patient Demographics Consumer | Patient Search | 1:38.2.1 |
| Patient Demographics Consumer | Match Operation | 1:38.2.2 |
| Patient Demographics Supplier | Match Operation | 1:38.2.2 |

### 1:38.2.1 Patient Search Option

The Patient Search Option is declared by Patient Demographics Consumers that search for patient information using the FHIR Search operation. This option uses the [Mobile Patient Demographics Query transaction](ITI-78.md). The Patient Demographics Supplier is REQUIRED to support the Mobile Patient Demographics Query transaction, and thus there is no Patient Search Option on the Patient Demographics Supplier.

### 1:38.2.2 Match Operation Option

The Match Operation Option is declared by Patient Demographics Consumers that use, and Patient Demographics Suppliers that support locating patient information using the [PDQm $Match Operation](OperationDefinition-PDQmMatch.md).

Because this option is available for both the Patient Demographics Consumer and the Patient Demographics Supplier, Patient Demographics Consumers that implement the Match Operation Option but not the Patient Search Option can only interoperate with Patient Demographics Suppliers that implement the Match Operation Option.

## 1:38.3 PDQm Required Actor Grouping

No REQUIRED groupings.

The Security Considerations page describes some OPTIONAL groupings that MAY be of interest for security considerations.

Cross-Profile Considerations describes some OPTIONAL groupings in other related profiles.

## 1:38.4 PDQm Overview

### 1:38.4.1 Concepts

The PDQm Profile supports all of the use cases of PDQ while keeping the technology as lightweight as possible. Example uses include:

* Mobile devices used by physicians (for example: a mobile app for electronic patient charts) which need to establish patient context by scanning a bracelet,
* Web based EHR/EMR applications which wish to provide dynamic updates of patient demographic information such as a non-postback search, additional demographic detail, etc.
* A document source/consumer wishing to perform an operation in the IHE Mobile access to Health Documents (MHD) Profile, where patient ID in the appropriate patient ID domain needs to be resolved by the source/consumer,
* A health portal securely exposing demographics data to browser-based plugins,
* Medical devices which need to access patient demographic information. Each of these specific use cases is generalized into two general use cases. The first is one where a system needs to obtain patient demographics to populate a user interface via a known demographic field (such as bracelet ID) or search parameters provided by a user. The second is as a prerequisite step whereby an application needs to obtain an identifier from another patient ID domain in order to complete another workflow. This profile is applicable for use by any application which requires access to patient demographics where lightweight REST/JSON or REST/XML is a more suitable technology than traditional PDQ or PDQv3 Profiles.

### 1:38.4.2 Use Cases

#### 1:38.4.2.1 Use Case #1: Patient Information Entering at Bedside

In this use case an admitted patient is assigned a bed and might not be able to provide positive ID information. The nurse uses the PDQm Profile to establish patient context.

##### 1:38.4.2.1.1 Patient Information Entering at Bedside Use Case Description

An admitted patient is assigned to a bed. The patient might or might not be able to provide positive ID information. The nurse needs to enter patient identity information into some bedside equipment to establish the relationship of the assigned bed to the patient. The equipment issues a query for a patient pick list to a patient demographics supplier that provides data for a patient pick list. Search criteria entered by the nurse might include one or more of the following:

* Partial or complete patient name (printed on the patient record or told by the patient)
* Patient ID (this might be obtained from printed barcode, a bed-side chart, etc.)
* Patient ID entry or scan
* Date of birth / age range

The system returns a list of patients showing Patient ID, full name, age, sex and displays the list to the nurse. The nurse then selects the appropriate record to enter the patient identity information into the bedside equipment application.

#### 1:38.4.2.2 Use Case #2: Patient Identity Information Entering in Physician Offices

In this use case a patient visits a physician for the first time. The physician system will use the PDQm Profile to import demographics information into the local application.

###### 1:38.4.2.2.1 Patient Identity Information Entering in Physician Offices Use Case Description

A patient visits a physician office for the first time. The nurse needs to register the patient; in doing so, it is desired to record the patient’s demographic data in the practice management information system (PMIS). The physician office is connected to a hospital enterprise’s central patient registry. The nurse issues a patient query request to the central patient registry acting as a Patient Demographics Supplier, with some basic patient demographics data as search criteria. In the returned patient list, she picks an appropriate record for the patient, including the hospital’s Patient ID, to enter into the PMIS. (Note the PMIS uses a different Patient ID domain than that of the central patient registry.)

#### 1:38.4.2.3 Use Case #3: Patient Demographics Query in an Enterprise with Multiple Patient ID Domains

In this use case a lab system obtains identities from multiple Patient ID domains for the purpose of reporting results.

##### 1:38.4.2.3.1 Patient Demographics Query in an Enterprise with Multiple Patient ID Domains Use Case Description

A lab technician enters some basic demographics data (e.g., patient name) into a lab application to query a patient demographics supplier to identify a patient for his lab exams. As the application also needs the patient identifier in another Patient ID Domain in the enterprise for results delivery, the application is configured to query for Patient IDs from other domains in the query response.

#### 1:38.4.2.4 Use Case #4: Patient Demographics Query by Known Business Identifier

In this use case, a known and reliable business identifier is used to locate the Patient record.

#### 1:38.4.2.4.1 Patient Demographics Query by Known Business Identifier Description

A patient visits the office of the general practitioner they see regularly. The general practitioner needs to retrieve the patient's electronic medical record from the jurisdictional central database. In the local jurisdiction, patients are issued photo ID cards by the local jurisdictional authority that include identifiers unique to the patient. These identifiers end with a [check digit](https://en.wikipedia.org/wiki/Check_digit) using a strong algorithm, such as the modulo-11 algorithm. The practitioner's office clerk uses the unique identifier on the patient's photo ID card to locate and retrieve the patient's record from the jurisdictional database.

### 1:38.4.3 Use Case Analysis

#### 1:38.4.3.1 Comparison Between the Mobile Patient Demographics Query [ITI-78] and Patient Demographics Match [ITI-119] transactions

The Mobile Patient Demographics Query [ITI-78] and Patient Demographics Match [ITI-119] transactions serve similar purposes in that they enable a Patient Demographics Consumer with a set of patient demographics to ask that the Patient Demographics Supplier identify patients with matching demographics. However, they are based on entirely different FHIR interactions, and thus the semantic behavior is different between the two.

The Mobile Patient Demographics Query [ITI-78] transaction follows the semantics of the [FHIR Search](http://hl7.org/fhir/R4/search.html) and [FHIR Read](http://hl7.org/fhir/R4/http.html#read) interactions. When using the search interaction, the Patient Demographics Supplier will perform a comparison for each query parameter. Patient records that are returned will be all those, and only those, that match each search parameter as specified by the Patient Demographics Consumer. This means the Patient Demographics Consumer is responsible for querying with known, accurate demographics, and then performing its own logic to filter the results. The read interaction is used when the Patient Demographics Consumer has knowledge of the FHIR Resource ID of the needed Patient resource.

The Patient Demographics Match [ITI-119] transaction, on the other hand, follows the semantics of the FHIR [$match](http://hl7.org/fhir/R4/patient-operation-match.html) operation. This FHIR operation provides [Master Patient Index (MPI)](https://en.wikipedia.org/wiki/Enterprise_master_patient_index) style search functionality. This interaction gives the Patient Demographics Supplier full authority to implement the patient matching algorithm of its choice, rather than following the strict rules of the FHIR search interaction. These types of systems will often use a scoring algorithm to match patients to the given demographics, and return results that meet or exceed a threshold. The algorithm might assign partial credit to demographics that match partially, such as names with alternate spellings or identifiers with transposed digits. Thus, this is a more powerful search that puts responsibility on the Patient Demographics Supplier to perform the complex patient matching logic. The Patient Demographics Consumer can even request that only 'certain' matches be returned, ensuring that weak matches are not even presented.

The [FHIR Patient Resource Page](http://hl7.org/fhir/R4/patient.html#match) has an informative and detailed description on the differences between performing a Patient Search and a $match interaction.

#### 1:38.4.3.2 Match Based Process Flow in Patient Demographics Query for Mobile Profile

The Mobile Patient Demographics Match [ITI-119] transaction tends to be appropriate when:

* The Patient Demographics Consumer wishes to rely on the Patient Demographics Supplier's MPI based matching algorithm.
* The Patient Demographics Consumer has low confidence that its demographics are exactly matched to those of the Patient Demographics Supplier.
* The Patient Demographics Consumer wants to only encounter high quality matches to its query.
* The Patient Demographics Consumer might know a business identifier for the patient, but it does not have full confidence in that identifier, such that additional logic to confirm demographics is desired.

This process flow is aligned most closely with use cases #1 and #2.

 **Figure 1:38.4.3.2-1: Match Based Process Flow in PDQm Profile**

#### 1:38.4.3.3 Search Based Process Flow using Patient Search or Read

The Mobile Patient Demographics Query [ITI-78] transaction tends to be appropriate when:

* The Patient Demographics Consumer is looking to search for a group of different patients that have a property in common, such as a specific age range (search).
* The Patient Demographics Consumer wishes to present its user with a list of patients based on literal search parameter matching (search).
* The Patient Demographics Consumer has a high degree of confidence that the demographics it is searching on will match those of the Patient Demographics Supplier (search).
* The Patient Demographics Consumer knows a business identifier unique to the Patient, such as an MRN (search). Note that searching only by identifier might be unsafe if the identifier assigning authority does not protect against corrupt or mistyped identifiers by including a checksum or similar mechanism.
* The Patient Demographics Consumer already knows the FHIR Resource ID of the needed Patient Resource, and needs only to retrieve the full Patient information (read).

This process flow is aligned most closely with use case #4.

 **Figure 1:38.4.3.3-1: Search Based Process Flow in PDQm Profile Using Patient Search or Read**

## 1:38.5 PDQm Security Considerations

Actors are expected to follow the recommendations and requirements found in [ITI TF-2: Appendix Z.8 "Mobile Security Considerations"](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations).

Actors have requirements in the [ITI-78] [Security Considerations Section](ITI-78.md#23785-security-considerations) and the [ITI-119] [Security Considerations Section](ITI-119.md#231195-security-considerations) including requirements for Audit Logging when grouped with [ATNA Secure Node or Secure Application](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), and Authentication and Authorization when grouped with [Internet User Authorization (IUA)](https://profiles.ihe.net/ITI/IUA/index.html) Actors.

## 1:38.6 PDQm Cross-Profile Considerations

When the PDQm Patient Demographics Supplier is grouped with actors in other IHE profiles that perform patient information reconciliation activities (e.g., the ADT Actor in the IHE Radiology Scheduled Workflow.b Profile), the Patient Demographics Supplier MAY use the updated information to respond to PDQm Queries. In addition, the Patient Demographics Query for Mobile Profile MAY play an integral workflow role in conjunction with other IHE profiles. A discussion of the various IHE profiles involved in patient identity management and how they relate to one another can be found in the [Enabling Document Sharing Health Information Exchange Using IHE Profiles White Paper](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html#5-patient-identity-management).

Those systems that manage patient demographics could implement the Patient Demographics Supplier in all three profiles: PDQ, PDQv3, and PDQm. In this way the Patient Demographics Consumer can choose the technology stack that best fits. [ITI TF-2: Appendix M.4](https://profiles.ihe.net/ITI/TF/Volume2/ch-M.html#M.4) provides additional details about Patient Demographics Query Profiles and their relationship with one another.

Figure 1:38.6-1 shows one example of how a PDQm Patient Demographics Supplier might act as a proxy to an existing PDQ or PDQv3 environment.

 **Figure 1:38.6-1: Implementing PDQm as a Gateway**

Note that this is but one possibility, other configurations are also possible.

When a person’s gender identity, pronouns or recorded sex or gender are to be represented within the Patient resource, actors implementing this capability SHALL encode them using the R4-compatible versions of the extensions defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/).

