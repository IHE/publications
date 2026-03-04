# 1:XX FHIR International Patient Summary - FHIR International Patient Summary v1.0.0-comment

* [**Table of Contents**](toc.md)
* **1:XX FHIR International Patient Summary**

## 1:XX FHIR International Patient Summary

**This IPS profile uses the Health Level 7's FHIR International Patient Summary (IPS) that realizes the CEN EN 17269 IPS dataset to profile additional implementation options that can be incorporated into the IPS document. This is a Content Module profile that defines these additional Implementation options.**

## 1:XX.1 FHIR IPS Actors, Transactions, and Content Modules

This section defines the actors, transactions, and/or content modules in this implementation guide. General definitions of actors are given in the Technical Frameworks General Introduction [Appendix A](https://profiles.ihe.net/GeneralIntro/ch-A.html). IHE Transactions can be found in the Technical Frameworks General Introduction [Appendix B](https://profiles.ihe.net/GeneralIntro/ch-B.html). Both appendices are located at [https://profiles.ihe.net/GeneralIntro/](https://profiles.ihe.net/GeneralIntro/).

### 1:XX.1.1 Actors

The actors in this profile are described in more detail in the sections below.

* [IPS Content Creator](https://profiles.ihe.net/ITI/sIPS/pcc.html#31-document-sharing-pcc-1)
* [IPS Content Consumer](https://profiles.ihe.net/ITI/sIPS/pcc.html#31-document-sharing-pcc-1)

#### 1:XX.1.1.1 Content Creator

The [IPS Content Creator](https://profiles.ihe.net/ITI/sIPS/pcc.html#31-document-sharing-pcc-1) creates the [FHIR IPS Content](http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips), [FHIR IPS ODH](https://profiles.ihe.net/PCC/FIIO/StructureDefinition/IHE.FIPS.IO.ODH.Option.Composition), or [FHIR IPS Complete](https://profiles.ihe.net/PCC/FIIO/StructureDefinition/IHE.FIPS.IO.Complete.Option.Composition) in accordance to the Implementation option selected. The [IPS Content Creator](https://profiles.ihe.net/ITI/sIPS/pcc.html#31-document-sharing-pcc-1) then shares it using one of the methods defined in the [IHE Document Sharing Health Information Exchange](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html).

#### 1:XX.1.1.2 Content Consumer

The [IPS Content Consumer](https://profiles.ihe.net/ITI/sIPS/pcc.html#31-document-sharing-pcc-1) consumes the [FHIR IPS Content](http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips), [FHIR IPS ODH](https://profiles.ihe.net/PCC/FIIO/StructureDefinition/IHE.FIPS.IO.ODH.Option.Composition), or [FHIR IPS Complete](https://profiles.ihe.net/PCC/FIIO/StructureDefinition/IHE.FIPS.IO.Complete.Option.Composition) in accordance to the Implementation option selected. The [IPS Content Consumer](https://profiles.ihe.net/ITI/sIPS/pcc.html#31-document-sharing-pcc-1) obtains the IPS document using one of the methods defined in the [IHE Document Sharing Health Information Exchange](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html).

## 1:XX.2 FHIR IPS Actor Options

Options that may be selected for each actor in this implementation guide, are listed in Table XX.2-1 below. Dependencies between options when applicable are specified in notes.

**Table 1:XX.2-1: Actor Options**

| | |
| :--- | :--- |
| Content Creator | HL7 FHIR IPS Option |
|   | Complete Option |
|   | Occupational Data for Health Option |
| Content Consumer | View Option |
|   | Document Import Option |
|   | Section Import Option |
|   | Discrete Data Import Option |
|   | Complete Discrete Data Import Option |

Note 1: The Content Creator must be able to support at least one of these options. Note 2: The Content Consumer must implement at least one of these options.

### 1:XX.2.1 HL7 FHIR IPS Option

This option defines the processing requirements placed on the Content Creators for producing a FHIR document version of the International Patient Summary defined by HL7's [FHIR IPS Implementation Guide](https://www.hl7.org/fhir/uv/ips/). This Included the requirement to implement and support all Section and entry data elements defined as Must Support. These Details can be found in the [HL7 FHIR IPS Bundle](http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips) and [HL7 FHIR IPS Composition](http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips) structure definitions.

The following sections MUST always be present. If the system does not support the collection and storage of this content, the appropriate flavors of null SHALL indicate such. Mandatory:

* Medications
* Allergies
* Problems

The following sections are expected to be included in an HL7 FHIR IPS Document if the system supports the collections and storage of the content. Must Support:

* Immunizations
* Procedures
* Medical Devices
* Results

The Following sections are optional in the implementation of HL7's FHIR IPS Document. Optional:

* Vital Signs
* Past Illness History
* Functional Status
* Plan of Care
* Social History
* Pregnancy History
* Advance Directives
* Alerts
* Patient Story

### 1:XX.2.2 Complete Option

This option defines the International Patient Summary modeled by HL7, where all of the optional sections(e.g., Advanced Directives, Functional Status, History of Past Illnesses, History of Pregnancy, Plan of Care, Social History, and Vital Signs) will become Must Support sections. The processing requirements placed on the Content Creators for producing a Complete FHIR IPS Document is detailed in the [IPS Complete Option](https://profiles.ihe.net/PCC/FIIO/StructureDefinition/IHE.FIPS.IO.Complete.Option.Composition). This option specifies that the following sections defined as optional in the [HL7 FHIR IPS Composition](http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips) Have a New optionality of Must Support. This applies to the following sections:

* IPS Advance Directives
* IPS Functional Status
* IPS History of Past Illness
* IPS History of Pregnancy
* IPS Plan of Care
* IPS Social History
* IPS Vital Signs
* IPS Patient Story
* IPS Alerts

### 1:XX.2.3 Occupational Data for Health Option

Content Creators implementing this option shall create Occupational Data for Health information that complies with the [Occupational Data for Health IG](https://profiles.ihe.net/PCC/ODH/index.html) as entries to the Social History Section. The details are defined in the [ODH Option](https://profiles.ihe.net/PCC/FIIO/StructureDefinition/IHE.FIPS.IO.ODH.Option.Composition).

This option stipulates that the Social History Section has the new optionality of Must Support. Minimally, a system claiming the Occupational Data for Health Option SHALL include an entry for [Usual Work](https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-UsualWork) of [Past Or Present Job](https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-PastOrPresentJob), or Both. If the system collects any of the following work observations, these shall also be supported as Must Support:

* Usual Occupation Duration
* Past or present job Start/End Dates
* Employer
* Supervisory Level
* Occupational Hazard
* Job Duty
* Work Schedule
* Work Classification
* Weekly Work Days
* Daily Work Hours

Those data elements are defined in the [Occupational Data for Health IG](https://profiles.ihe.net/PCC/ODH/index.html).

### 1:XX.2.4 Complete Discrete Data Import Option

The Content Consumer implementing this option shall be able to discretely import all relevant content provided by the Content Creator as defined by the [IPS Complete Option](https://profiles.ihe.net/PCC/FIIO/StructureDefinition/IHE.FIPS.IO.Complete.Option.Composition).

## 1:XX.3 FHIR IPS Required Actor Groupings

There are no Actor Groupings for this profile.

## 1:XX.4 FHIR IPS Overview

This profile describes how to use the HL7 FHIR IPS to support multiple international use cases, allowing for testing and deployment in commercial products for expanded implementation options.

### 1:XX.4.1 Concepts

Patients that are traveling to other jurisdictions may be seeking care or in need of care during their travel. The listed use case scenarios describe a variety of care needs that can be supported by implementation options in this content profile.

### 1:XX.4.2 Use Cases

#### 1:XX.4.2.1 Use Case #1: On Demand Single Source IPS Document for Emergency Care

This Use case describes unscheduled emergency care of a patient where the healthcare provider is able to access an on demand HL7 IPS Document from an HIE.

##### 1:XX.4.2.1.1 On Demand Single Source IPS Document for Emergency Care

A person has gotten into a motor vehicle accident and Emergency services are called to care for them. When the emergency care team arrives at the patient's side, they are able to use the information available on their identification to query their HIE for an on demand IPS document. With the summary available, information on the patient's sever allergy to NSAIDs and antibiotics are noted and their history of Stroke and blood thinners are utilized to make immediate treatment interventions. The patient is transported to the local hospital to continue care. The treatment interventions, assessments, and administered medications can be made available for the next provider.

##### 1:XX.4.2.1.2 On Demand Single Source IPS Document for Emergency Care Process Flow

**Figure 1:XX.4.2.1.2-1: On Demand Single Source IPS Document for Emergency Care Process Flow**


**Pre-conditions**:

* An on demand IPS document has been registered in the HIE
* The patient Has an on demand IPS available in the HIE
* The HIE uses the [IPS $summary Operation](http://hl7.org/fhir/uv/ips/OperationDefinition-summary.html) to respond to IPS document requests
* The emergency system is connected to an HIE that has access to the on demand IPS record
* The emergency services system has query access to the HIE for patient summaries
* The patient needs immediate medical care and the provider system for that patient can consume an IPS document

**Main Flow**:

* The emergency provider finds the patient in the HIE
* The emergency provider performs the $Summary request in the query
* When the On-Demand entry is requested by the emergency provider system the HIE
* The HIE generates an IPS for the patient and the provider to view
* Based on this information the provider is able to make informed decisions on their interventions.
* The Emergency provider system can utilize the information provided in the patient’s IPS to complete their patient

**Post-conditions:**

* The clinical information from both the Emergency provider system and the treatment center can then be available through the IHE

#### 1:XX.4.2.6 Use Case #2: Patient Portal with Limited Source Data

Represents how some systems should represent missing data for required if known section in the IPS documents that are generated due to limitations of the system.

##### 1:XX.4.2.2.1 Patient Portal with Limited Source Data

A patient arrives at a treatment clinic that is looking for their patient history information. The patient provides portal information when being seen by a provider with a link to their primary provider portal. It generates an IPS for the reviewing provider, for informed care and treatment. The patient's provider portal is limited and does not have access to procedure, device, or Lab data. when the IPS is generated, those sections are labeled No information available tags. The receiving provider sees this and knows that they may need to utilize a different resource to collect this data on the patient and is informed that there is a gap in their data.

##### 1:XX.4.2.2.2 Patient Portal with Limited Source Data

**Figure 1:XX.4.2.1.2-1: On Demand Single Source IPS Document for Emergency Care Process Flow**


**Pre-conditions:**

* The provider system is able to generate an IPS
* The provider system does not have access to Lab or Procedure information

**Main Flow:**

* There is a request for the provider system to generate an IPS
* The IPS document is generated
* The Results and Procedures sections are present with the 'No information available' entry available
* The receiving provider is clearly able to distinguish that the data that is missing is absent due to being unavailable rather than absent due to relevant data

**Post-conditions:**

* The receiving providers are aware that they may need to use an alternative source to identify any relevant Labs and Procedures associated with the patient

#### 1:XX.4.2.3 Use Case #3: Managing Work-Related Illness While Working Abroad

This use case describes a scheduled, cross border care scenario, with the Occupational Data for Health Option.

##### 1:XX.4.2.3.1 Managing Work-Related Illness While Working Abroad Use Case Description

A 43-year-old woman is assigned to train personnel in another country to demonstrate use of a polyurethane foam product in hospitals. After 4 months, she develops respiratory symptoms and is found to have new-onset asthma. The attending clinician reviews her IPS that implements the Occupational Data for Health Option, which includes information about her new job. The clinician infers the causal link between the new work and the asthma and recommends changes in her job activities.

##### 1:XX.4.2.3.2 Managing Work-Related Illness While Working Abroad Process Flow

**Figure XX.4.2.3.2-1: Managing Work-Related Illness While Working Abroad Process Flow**


**Pre-conditions**:

* A patient is sent to another country for work by her company
* She has a medical exam prior to arriving in the new country where her medical record is updated

**Main Flow**:

* The patient develops asthma symptoms and consults a provider in the country she is working.
* Using the patient’s international patient summary with occupational health data included, the provider is able to see that exposure from work is causing these symptoms. The provider recommends a change in work practice to avoid further exposure and prescribes inhalers to the patient.

**Post-conditions:**

* The engineering company provides portable ventilation exhaust systems to reduce exposures to other workers. The woman provides training to others without engaging in direct demonstration of foam production.
* The new diagnosis of asthma related to this occupational hazard is added to the patient’s EMR for the care provider’s EMR.

#### 1:XX.4.2.4 Use Case #4: Patient Mediated and Edited IPS Utilizing a Portal

This use case describes how a patient can request the generation of an IPS and mask a portion of the data for personal privacy reasons and contribute to some of the data displayed. [Open issue FIPS_012](issues.md)

##### 1:XX.4.2.4.1 Patient Mediated and Edited IPS Utilizing a Portal

A patient is preparing their personal Health Summary in case it is needed for their care. They are in the third trimester of their pregnancy and has recently been diagnosed with preeclampsia and is preparing for any emergencies ahead. They access their patient portal and generate an IPS. When reviewing the IPS, the patient makes sure that the preeclampsia and birth plan are flagged, lab results, adds some of the over the counter medication that isn't a part of the record, and adds some more information into the Patient Story section to provide more information and personal concerns that providers should be aware about the pregnancy. When these edits are completed, the patient finishes the generation of the IPS, ready to make available when it is needed for future care.

##### 1:XX.4.2.4.2 Patient Mediated and Edited IPS Utilizing a Portal Process Flow

**Figure 1:XX.4.2.3.2-1: Managing Work-Related Illness While Working Abroad Process Flow**


**Pre-conditions:**

* A patient has a patient healthcare portal that contains their current health information.
* The portal is capable of generating an IPS document.
* The patient portal does not have access to laboratory data.

**Main Flow:**

* The patient requests within their portal that an IPS needs to be generated.
* the portal collects the information needed to formulate and IPS.
* The Patient reviews the IPS document.
* They notice that some information is missing from the record and adds it.
* They review the contents and identify that their Mental Health condition noted in their problems section. They wish to keep this information private and choose to mask that information before the final IPS document version is completed.

**Post-conditions:**

* The Problems Section now has an entry that indicates that one of entries in this list is masked.
* The IPS now contains a patient story narrative that others can read where they had stated there was an immunization missing.
* The IPS is now ready for sharing with another healthcare provider.

#### 1:XX.4.2.5 Use Case #5: Managing Chronic Conditions Across Borders - Provider Mediated

In this use case, an IPS document is created by a care Provider. This use case highlights the provider’s decision to include only relevant content in the IPS document and the use of multiple sources for an On Demand Document.
 In some jurisdictions (e.g. France, others) there is funding available to care Providers to cover the cost of regularly preparing a patient summary document for their patients. It is typically expected that such a document will be leveraged to support cross-border care delivery as described in other use cases. In the development of a Provider-mediated IPS, the patient’s health data content is curated by the Provider, whose judgement is used to answer the question: “what is the health data relevant to supporting the patient’s (likely unplanned) care?”

##### 1:XX.4.2.5.1 Managing Chronic Conditions Across Borders Use Case Description

A patient with cancer has indicated to their provider that they will be spending several months outside of the country and has requested that a summary be available to them in the event that unplanned care takes place. Due to the complexity of their condition the provider generates an IPS document reflecting the current health information and relevant conditions, medications, labs, results, and imaging are available in the record, for informed care of the patient and their condition. The results section is ensured to contain the relevant pathology and imaging results relative to the patient’s cancer. The IPS is stored somewhere until it is needed. While the patient is on their trip, they have an unplanned visit to the local Health clinic with concerns that it is related to their cancer. Their IPS document is made available to the provider that is seeing to their care, and it is able to inform the care of the patient as they investigate any linkages this condition has to their chronic condition.

##### 1:XX.4.2.5.2 Managing Chronic Conditions Across Borders Process Flow

**Figure 1:XX.4.2.2-1: Provider-mediated IPS Process Flow**


**Pre-conditions**:

* The necessary IPS content must exist and be available to the Provider.
* The Provider establishes their access to this content by authenticating themselves to the relevant systems and by establishing their access authority using the systems that (collectively) act as the Consent Management service.

**Main Flow**:

* The Provider leverages a point of service (POS) system such as an EMR to query for the patient’s health data. If these data reside on multiple source systems, the Provider will execute multiple queries to obtain all of the relevant information.
* Once the content has been retrieved to the POS, the Provider curates this information. Selecting the relevant lab reports, imaging, and vitals relevant to the patient’s conditions and excluding labs and results within the patient’s record that are irrelevant to their immediate care.
* The Provider generates an IPS reflecting their clinical judgement regarding what information is important to supporting care continuity for their Patient.
* The provider ensures that the IPS document is made available for retrieval or use when it is needed. (May be provided to the patient electronically, in a media format, or provides a way for the record to be available for retrieval by another system, or forward the record to another system or provider.)

**Post-conditions:**

* The Provider-mediated IPS document resides on the POS. The IPS document content reflects appropriate attribution (e.g. provenance) regarding the Provider as the curator of the content.
* When needed, the IPS document is made available to a receiving provider system

#### 1:XX.4.2.6 Use Case #6: Secondary Use of IPS for Standardized Data Exchange

The use case describes the use of the standard IPS format for patient summary data to convey de-identified study data content from the primary care environment for secondary use purposes. This use case reflects the Complete Option for testing.

##### 1:XX.4.2.6.1 Secondary Use of IPS for Standardized Data Exchange

The permitted purpose for this example is Public Interest research in Public/Occupational Health to study co-morbidities, mortality, occupational risks, and treatment effects. The dataset must be minimized and de-identified to preserve utility (longitudinal trends, outcomes, medication impacts) while controlling re-identification risk per permit conditions. In this fictitious use case, the region is under threat of outbreak for a novel virus causing influenza-like-symptoms. An approved public health monitoring program wishes to review primary health information from across multiple jurisdictions for impacts of co-morbidities, mortality rates, and occupational health risks. The study also intends to review the population health impact for medication treatments, including vaccination. The purpose of the research request reflects a permitted purpose of use, Public Interest in the area of Public, Occupational Health. Data for this study represents categories from Healthcare, Medicinal products, Areas of Public Health, Areas of Occupational Health, and possibly Serious cross-border threats.

##### 1:XX.4.2.6.2 Secondary Use of IPS for Standardized Data Exchange Process Flow

**Figure 1:XX.4.2.7.2-1: Secondary Use of IPS for Standardized Data Exchange Process Flow**


**Pre-conditions:** Before the research data can be de-identified and shared, the Researcher conducts data discovery to identify data that is available for the study, and an application for a data permit is submitted and approved according to the region’s policy for secondary use. The Health Data Access Body (HDAB) determines that the information is available within the HDAB Information Resources, indicating data is available in a standard International Patient Summary (IPS).

* Information on the type and format of the data requested, indicates International Patient Summary format for the data, indicating: 
* The researcher also provides a date range of access needed for a 3-year period
* Access justifications are provided indicating the value of the proposed research
* The purpose of use is indicated as Scientific Research
* Data elements requested that are sensitive include de-identification methods to be used that will retain sufficient information for the research study.
 

**Main Flow:** The Patient data for the research cohort is extracted from the primary care use environment using the standard IPS format. At this stage, the data is under the control of the Health Data Access Body, which may be the care provider, a formal data access body, or a trusted third party.

1. The identifiable primary care data for the study cohort is processed to remove direct identifiers using the approaches specified by the IHE De-Identification Handbook and in accordance with the approved de-identification method for direct identifiers (stage 1), resulting in a pseudonymized IPS with all clinical content still remaining.
1. The pseudonymized primary care data for the study cohort is processed to remove, mask, or obfuscate indirect identifiers using the approaches specified by the IHE De-Identification Handbook and in accordance with the approved de-identification method for indirect identifiers (stage 2) resulting in a de-identified IPS records with sufficient clinical content to conduct the research study. This de-identified cohort is delivered to the researcher using the standard IPS format.

**Post-conditions:** The Researcher has retrieved or received the de-identified research study data in the standard IPS format.

## 1:XX.5 IPS Security Considerations

See ITI TF-2: [Appendix Z.8 "Mobile Security Considerations"](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations)

Consider the ISO 22857:2013 Health informatics — Guidelines on data protection to facilitate trans-border flows of personal health data for trans-border information exchange security considerations. A minimum security and privacy environment has been established across all participants. There must exist security policies regarding the use of training, agreements, risk management, business continuity and network security that need to be already in place prior to the implementation.

EMR systems should be thoughtfully designed so that providers are able to review and verify information before it is imported into their EMR system, and that positive user acknowledgements are made before import, and audit trails are recorded when imports occur.

Imported information should be traceable both to the source [the sharing EMR], and the receiver that accepted it into the EMR system. XDS Affinity domain policies should support policies and procedures for tracing information flows between EMR systems.

Because the information being transferred is in XML, it will be common that different EMR systems utilize different transformations to render the contents into human readable form. A Content Creator should make available the transforms used by the sending provider to review the documents, and a Content Consumer must support rendering the information as seen by the sending provider, allowing both providers to see what was sent in its original rendered form.

Health Information Exchange: Enabling Document Sharing Health Information Exchange Using IHE Profiles White Paper [IHE Document Sharing Health Information Exchange](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html).

## 1:XX.6 IPS Cross-Profile Considerations

Consider the IHE [Sharing of IPS (sIPS)](https://profiles.ihe.net/ITI/sIPS/index.html) for methods of exchanging the [HL7 International Patient Summary (IPS)](http://hl7.org/fhir/uv/ips/), using [IHE Document Sharing Health Information Exchange](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html).

The use of the IHE XD* family of transactions is encouraged to support standards-based interoperability between systems acting as the IPS Content Creator and IPS Content Consumer. However, this profile does not require any groupings with ITI XD* actors to facilitate transport of the content document it defines.

A Document Source in XDS.b, a Portable Media Creator in XDM, or a Document Source in XDR might be grouped with the IPS Content Creator. A Document Consumer in XDS.b, a Portable Media Importer in XDM, or a Document Recipient in XDR might be grouped with the PCS Content Consumer. A registry/repository-based infrastructure is defined by the IHE Cross Enterprise Document Sharing (XDS.b).

The On-Demand Documents Option of the XDS.b Profile may be considered or required by local implementations to assure summary documents include a composite summary of information for the patient.

XDW may be used to define workflow for international patient care management of trans border patient care using Cross-Enterprise Document Workflow Content Profile to manage and track the tasks related to patient-centric workflows.

A reliable messaging-based infrastructure is defined by the IHE Cross Enterprise Document Reliable Interchange (XDR) Profile. A Document Source in XDR might be grouped with the IPS Content Creator. A Document Recipient in XDR might be grouped with the IPS Content Consumer.

Detailed descriptions of these transactions can be found in [IHE ITI TF-2](https://profiles.ihe.net/ITI/TF/Volume2/index.html).

