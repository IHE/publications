# 1:49 Patient Master Identity Registry (PMIR) Profile Volume 1 - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* **1:49 Patient Master Identity Registry (PMIR) Profile Volume 1**

## 1:49 Patient Master Identity Registry (PMIR) Profile Volume 1

The Patient Master Identity Registry (PMIR) Profile is intended for use in an environment where each patient has a single “Golden Patient record”, such as in Low and Middle Income Countries (LMIC) or in Organization for Economic Cooperation and Development (OECD) settings. PMIR supports creating, updating, and deprecating patient identity information about a subject of care, as well as subscribing to changes, using HL7 FHIR resources and RESTful transactions.

**PMIR Concepts and Defined Terms:**

In PMIR, a patient has a single “Patient Master Identity” (a.k.a., Golden Patient record) that is comprised of identifying information, such as business identifiers, name, phone, gender, birth date, address, marital status, photo, contacts, preference for language, and links to other patient identities (e.g., a mother’s identity linked to a newborn).

A “Master Patient Identification Domain" is a collection of Patient Master Identities shared among a set of PMIR Patient Identity Source and Patient Identity Consumer Actors using the services of a single Patient Identity Registry.

A patient’s Patient Master Identity is managed by the Patient Identity Sources in the domain according to policies and business rules that determine when those Sources create, update, or delete a Patient Master Identity, or merge two Patient Master Identities in the Registry. The policies may include authorization needed for a Patient Identity Consumer to access Patient Master Identities. These policies vary by domain and are not constrained by this profile.

PMIR also enables resolution of cases where two or more Patient Master Identities have mistakenly been established for the same person. There is a patient safety risk that health data (possibly conflicting) may be associated with each identity, and these disparate data may need to be reconciled. This profile addresses how these multiple Patient Master Identities can be merged into a single Patient Master Identity, and how this merge flows down to data custodians so that they take appropriate actions. It is outside the scope of this profile to define how references from other data to a subsumed Patient Master Identity should be handled. Other IHE profiles, such as Mobile Health Document Sharing (MHDS), address these requirements.

## 1:49.1 PMIR Actors, Transactions, and Content Modules

This section defines the actors, transactions, and/or content modules in this profile. General definitions of actors are given in the [Technical Frameworks General Introduction Appendix A](https://profiles.ihe.net/GeneralIntro/ch-A.html). IHE Transactions can be found in the [Technical Frameworks General Introduction Appendix B](https://profiles.ihe.net/GeneralIntro/ch-B.html).

Figure 1:49.1-1 shows the actors directly involved in the PMIR Profile and the relevant transactions between them.

**Figure 1:49.1-1: PMIR Actor Diagram**

Table 1:49.1-1 lists the transactions for each actor directly involved in the PMIR Profile. To claim compliance with this profile, an actor shall support all required transactions (labeled “R”) and may support the optional transactions (labeled “O”).

**Table 1:49.1-1: PMIR Profile - Actors and Transactions**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Patient Identity Source | Mobile Patient Identity Feed [ITI-93] | Initiator | R | [ITI TF-2: 3.93](ITI-93.md) |
| Patient Identity Consumer | Mobile Patient Identity Feed [ITI-93] | Responder | R | [ITI TF-2: 3.93](ITI-93.md) |
| Patient Identity Registry | Mobile Patient Identity Feed [ITI-93] | Initiator and Responder | R | [ITI TF-2: 3.93](ITI-93.md) |
| Patient Identity Registry | Mobile Patient Identifier Cross-reference Query [ITI-83] | Responder | R | [ITI TF-2: 3.83](https://profiles.ihe.net/ITI/PIXm/ITI-83.html)(Note 1) |
| Patient Identity Registry | Mobile Patient Demographics Query [ITI-78] | Responder | R | [ITI TF-2: 3.78](https://profiles.ihe.net/ITI/PDQm/ITI-78.html)(Note 2) |
| Patient Identity Registry | Subscribe to Patient Updates [ITI-94] | Responder | R | [ITI TF-2: 3.94](ITI-94.md) |
| Patient Demographics Consumer | Mobile Patient Demographics Query [ITI-78] | Initiator | R | [ITI TF-2: 3.83](https://profiles.ihe.net/ITI/PIXm/ITI-83.html) |
| Patient Identifier Cross-reference Consumer | Mobile Patient Identifier Cross-reference Query [ITI-83] | Initiator | R | [ITI TF-2: 3.83](https://profiles.ihe.net/ITI/PIXm/ITI-83.html) |
| Patient Identity Subscriber | Subscribe to Patient Updates [ITI-94] | Initiator | R | [ITI TF-2: 3.94](ITI-94.md) |

> **Note 1**: The Patient Identity Registry shall respond to [ITI-83] queries using the requirements in that transaction for the Patient Identity Cross-Reference Manager.

> **Note 2**: The Patient Identity Registry shall respond to [ITI-78] queries using the requirements in that transaction for the Patient Demographics Supplier.

### 1:49.1.1 Actor Descriptions and Actor Profile Requirements

Most requirements are documented in ITI TF-2 Transactions. This section documents additional requirements on the profile’s actors.

#### 1:49.1.1.1 Patient Identity Registry

In PMIR, there is one and only one Patient Identity Registry in a Master Patient Identification Domain. The Patient Identity Registry is a passive store for shared (or golden) identities that are under the distributed control of Patient Identity Sources.

The Patient Identity Registry persists Patient Master Identities from the Patient Identity Sources in the Master Patient Identification Domain.

The Patient Identity Registry makes available the Patient Master Identity for each patient in the Patient Identification Domain:

* when responding to a [Mobile Patient Demographics Query [ITI-78]](https://profiles.ihe.net/ITI/PDQm/ITI-78.html) or [Mobile Patient Identifier Cross-reference Query [ITI-83]](https://profiles.ihe.net/ITI/PIXm/ITI-83.html)
* when sending [Mobile Patient Identity Feed [ITI-93]](ITI-93.md) to a Patient Identity Consumer

#### 1:49.1.1.2 Patient Identity Source

Patient Identity Sources are responsible for the accuracy of Patient Master Identities in the Patient Identity Registry.

All Patient Identity Source Actors in the Master Patient Identification Domain shall apply the domain’s policies and business rules for determining the accuracy of a patient’s Patient Master Identity and thus when to use Mobile Patient Identity Feed [ITI-93] to initiate a create, update, delete, or merge of Patient Master Identities. For example, during a patient encounter, a Patient Identity Source may group with a Patient Demographics Consumer to use PDQm Query [ITI-78] to find the patient’s Patient Master Identity. If more than one Patient Master Identity appears to refer to that same patient, it is the responsibility of that Patient Identity Source to decide, based on domain policy, whether it needs to initiate a merge of one of the Patient Master Identities into a single surviving Patient Master Identity.

## 1:49.2 PMIR Actor Options

Options that may be selected for each actor in this profile, if any, are listed in the Table 1:49.2-1. Dependencies between options, when applicable, are specified in notes.

**Table 1:49.2-1: PMIR – Actors and Options**

| | | |
| :--- | :--- | :--- |
| Patient Identity Source | None | -- |
| Patient Identity Consumer | None | -- |
| Patient Identity Registry | None | -- |
| Patient Demographics Consumer | None | -- |
| Patient Identifier Cross-reference Consumer | None | -- |
| Patient Identity Subscriber | None | -- |

## 1:49.3 PMIR Required Actor Groupings

**Table 1:49.3-1: PMIR Profile - Required Actor Groupings**

| | | | |
| :--- | :--- | :--- | :--- |
| Patient Identity Source | None | **–** | **–** |
| Patient Identity Consumer | None | **–** | **–** |
| Patient Identity Registry | None | **–** | **–** |
| Patient Demographics Consumer | None | **–** | **–** |
| Patient Identifier Cross-reference Consumer | None | **–** | **–** |
| Patient Identity Subscriber | None | **–** | **–** |

## 1:49.4 PMIR Overview

### 1:49.4.1 Intentionally Left Blank

### 1:49.4.2 Use Cases

#### 1:49.4.2.1 Use Case #1: Lookup Patient Identity

A client needs to lookup a patient master identity.

##### 1:49.4.2.1.1 Lookup Patient Identity Use Case Description

When a patient master identity is needed, a client uses a PIXm or PDQm query; then a patient master identity will be returned.

#### 1:49.4.2.2 Use Case #2: Create Patient Identity

A new client record is created in a demographic database.

##### 1:49.4.2.2.1 Create Patient Identity Use Case Description

Following a healthy pregnancy, Mosa gives birth to her new baby, Joshua. Information is captured about Joshua and about the relationship between him and his parents in the care facility’s electronic medical records (EMR) system. Leveraging the information in the EMR, a new patient master identity record is created for baby Joshua in the Ministry of Health’s (MOH) national client registry (CR).

Joshua’s patient master identity in the client registry establishes his unique identity across the care delivery network operated under the auspices of the MOH. Joshua’s data are also securely shared with the Civil Registration and Vital Statistics (CRVS) database maintained by the Ministry of Home Affairs in the country where Joshua was born. These data are used to generate a birth certificate for Joshua.

Some days after Mosa and Joshua return home from the care facility, Joshua’s health card and his birth certificate are delivered. Joshua now has his unique master identifier for health purposes and his birth certificate, which affords him a legal status in his country.

In Figure 1:49.4.2.2.2-1 below: The EMR acts as a Patient Identity Source. The CR acts as the Patient Identity Registry. The CRVS acts as a Patient Identity Consumer.

##### 1:49.4.2.2.2 Create Patient Identity Process Flow

**Figure 1:49.4.2.2.2-1: Process Flow for the Create Patient Identity Use Case**

**Pre-conditions:**

Joshua is born at a care facility. The details about his name, his gender, and his parental relationships are known. These are captured in the care facility’s EMR. Since this is a birth and the first time the record is entered in the EMR no queries are made to search for existing records.

**Main Flow:**

Joshua’s information in the care facility’s EMR is communicated to the MOH’s national Client Registry (CR). If the information is valid, the patient identity will be created on the CR. Joshua’s information in the CR is also communicated to the MOH’s national Civil Registration and Vital Statistics (CRVS) database.

**Post-conditions:**

If the Create message was valid, his new patient master identity will be established on the MOH’s CR and on the MOH’s CRVS. In time, Joshua will receive his health card and his birth certificate.

#### 1:49.4.2.3 Use Case #3: Update Patient Identity

An existing client identity is updated in an identity database.

##### 1:49.4.2.3.1 Update Patient Identity Use Case Description

Following a healthy childhood and after completing his schooling, Joshua leaves home to start a new job in a nearby city. As part of starting his new job at his new company, Joshua attends at a local community clinic in the new city to obtain a physical check-up as part of the process to become enrolled in the company’s health insurance plan.

Joshua’s identity details are created in the clinic’s EMR with his new address and his new mobile phone number. The EMR searches the CR for Joshua’s master patient identity and then updates the MOH CR with Joshua’s updated identity details.

In Figure 1:49.4.2.3.2-1 below: The EMR acts as a Patient Identity Supplier. The CR acts as the Patient Identity Registry.

##### 1:49.4.2.3.2 Update Patient Identity Process Flow

**Figure 1:49.4.2.3.2-1: Process Flow for the Update Patient Identity Use Case**

**Pre-conditions:**

Joshua has moved to the city and has a new address and mobile phone number. Joshua’s master patient identity is retrieved from the CR into the EMR and these updated details are captured in the community care facility’s EMR.

**Main Flow:**

Joshua’s information in the care facility’s EMR is communicated as an UPDATE to the MOH’s national Client Registry (CR).

**Post-conditions:**

If the EMR message was valid, his existing patient master identity will be updated on the MOH’s CR with the new, more up-to-date information that was captured in the community clinic’s EMR.

#### 1:49.4.2.4 Use Case #4: Merge Patient Identities

A **duplicate** patient master identity is detected, in an identity database. This duplicate patient master identity is merged with the pre-existing **correct** patient master identity and health data that has been captured against the duplicate patient master identity is corrected to the **surviving** patient master identity.

##### 1:49.4.2.4.1 Merge Patient Identities Use Case Description

Joshua becomes concerned and travels to a different city to visit a Voluntary Counseling and Testing (VCT) clinic to be tested for HIV. He pretends that he has forgotten his health card and provides inaccurate demographic information at the VCT, who set up a new record for him in their EMR. The EMR communicates this demographic information to the MOH’s CR where a new demographic record for Joshua is established.

Joshua completes the HIV rapid test, which is positive. A confirmatory test is taken, which must be sent to the regional lab for processing. Both the results of the rapid test and the results of the confirmatory test reference Joshua’s ****duplicate**** patient master identity. The test results are saved to the Shared Health Record (SHR) referencing the duplicate patient master identity.

When Joshua returns to the clinic to receive his confirmatory lab results, and after receiving counseling regarding confidentiality rules and the importance of care continuity, Joshua corrects his patient master identity. The EMR merges Joshua’s two patient master identities to a single patient master identity and sends a merge message to the national CR to do the same.

> Note: An unmerge would be handled as an administrative function and is out of scope for this profile.

The various databases that store health information about Joshua have subscribed to patient update transactions on the national CR. To ensure patient safety for Joshua, these systems ensure that a query using Joshua’s resolved patient master identity would, correctly, return all of the health information associated with him – whether it was originally persisted under his correct (surviving) patient master identity or under the duplicate (subsumed) patient master identity.

In Figure 1:49.4.2.4.2-1 below, the EMR acts as a Patient Identity Source. The LAB and SHR act as Patient Identity Consumers. The CR acts as the Patient Identity Registry.

##### 1:49.4.2.4.2 Merge Patient Identities Process Flow

**Figure 1:49.4.2.4.2-1: Process Flow for the Merge Patient Identities Use Case**

**Pre-conditions:**

Systems that maintain patient information subscribe to the Patient Identity Feed on the national Client Registry.

**Main Flow:**

A duplicate patient master identity is detected and when the error is found, the duplicate identities are merged on the EMR, and a transaction is executed to merge them on the CR. This triggers sending notifications to the health data systems that have subscribed to updates on the CR, which include updated information about the patient identities that were merged. Each of these health data systems updates their local health data to reflect the merged patient master identity.

**Post-conditions:**

Following the execution of the triggered merge message, each system that maintains health data about the subject of care has updated this local data to reflect the merge of the two patient identities. The subsumed patient identity is deprecated.

## 1:49.5 PMIR Security Considerations

The PMIR Profile is communicating patient identity information including identifiers, addresses, demographics, and contact information. This information includes personal identifiers, and the identity is linked to health information. Care must be taken to protect the privacy of the patient and the security of system.

See [ITI TF-2: Appendix Z.8](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations) for general FHIR security considerations.

## 1:49.6 PMIR Cross Profile Considerations

None.

