# 1:33.4 Overview - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* **1:33.4 Overview**

## 1:33.4 Overview

* Actors 
* [Document Source](1331_actors_and_transactions.md#133111-document-source)
* [Document Recipient](1331_actors_and_transactions.md#133113-document-recipient)
* [Document Consumer](1331_actors_and_transactions.md#133112-document-consumer)
* [Document Responder](1331_actors_and_transactions.md#133114-document-responder)
 
* Transactions 
* [Provide Document Bundle [ITI-65]](ITI-65.md)
* [Find Document Lists [ITI-66]](ITI-66.md)
* [Find Document References [ITI-67]](ITI-67.md)
* [Retrieve Document [ITI-68]](ITI-68.md)
* [Simplified Publish [ITI-105]](ITI-105.md)
* [Generate Metadata [ITI-106]](ITI-106.md)
 

## 1:33.4 MHD Overview

The MHD Profile enables sharing of patient documents to, or from, mobile or constrained devices. Other IHE profiles, chiefly Cross-Enterprise Document Sharing (XDS), describe sharing of patient document in less constrained environments, and many of the concepts from those profiles are applicable to the MHD environment. For more information on IHE Document Sharing, see [Health Information Exchange: Enabling Document Sharing Using IHE Profiles](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) White Paper.

### 1:33.4.1 Concepts

The MHD Profile supports a broad set of the XDS use cases and functionality while keeping the implementation as simple as possible. The MHD Profile is focused on a subset of the use cases that XDS supports and does not try to reproduce the full scalability, flexibility, privacy, or security supported by a more robust XDS infrastructure. Example use cases are:

* Medical devices such as those targeted by the IHE Patient Care Devices (PCD) domain, submitting data in the form of documents.
* Kiosks used by patients in hospital registration departments.
* PHR publishing into a staging area for later import into an EHR or HIE.
* Patient or provider applications that are configured to securely connect to a PHR in order to submit healthcare history document (e.g., BlueButton+).
* Electronic measurement devices participating in XDW workflows and pulling medical history documents from an HIE.
* A General Practitioner physician’s office with minimal IT capabilities using a mobile application to connect to an HIE or EHR.

These specific use cases can be generalized into two broad use cases. The first is the general use case of publishing new document(s) from the mobile device. The second general use case is where the mobile device needs to discover available documents and retrieve documents of interest. There are clearly complex use cases that combine these two general use cases; however, they are not specifically described in this profile. When more complex use cases are encountered, use of one of the more robust Document Sharing profiles is more appropriate.

### 1:33.4.2 Use Case 1: Publication of New Documents

#### 1:33.4.2.1 Publication of New Documents Use Case Description

In this use case, a new document or set of documents is published from the mobile device. For example, a mobile device is a medical device that is submitting new health measurements, or a mobile device has a user-interface used to capture user input such as a Patient Consent. The mobile device does not need to be classically mobile, just simply one using the http REST technology commonly available on mobile devices. This device-created content is formed by the application, implementing the MHD Document Source, into a Document and submitted with the metadata.

This use case presumes that the mobile device knows or discovers the patient identity. The patient identity might be obtained through some IHE transactional method such as the Patient Demographics Query for Mobile [PDQm](https://profiles.ihe.net/ITI/TF/Volume1/ch-38.html) or Patient Identifier Cross-Reference for Mobile [PIXm](https://profiles.ihe.net/ITI/TF/Volume1/ch-41.html) Profile. The patient id might simply be entered via some device interface (RFID, Bar-Code), a user interface, or be specified in a configuration setting (e.g., mobile PHR application). The use case also allows for identity cross-referencing to be implemented by the Document Recipient.

This use case presumes that the sending mobile device knows the location of the receiving URL endpoints, likely through a configuration setting, or through a workflow driven by a web interface.

#### 1:33.4.2.2 Publication of New Documents Process Flow

The publication of a new document(s) is done using the Provide Document Bundle [[ITI-65]](ITI-65.md) transaction or the Simplified Publish [[ITI-105]](ITI-105.md) transaction, which carries both the document and its metadata. The [[ITI-65]](ITI-65.md) transaction is analogous to an XDS Provide and Register Document Set-b [[ITI-41]](https://profiles.ihe.net/ITI/TF/Volume2/ITI-41.html) transaction. The [[ITI-105]](ITI-105.md) is a more simple transaction where the publication needs are more simple, moving the SubmissionSet mapping task to the Document Recipient.

**Figure 1:33.4.2.2-1: Use Case 1 Process Flow**

### 1:33.4.3 Use Case 2: Discovery and Retrieval of Existing Documents

#### 1:33.4.3.1 Discovery and Retrieval of Existing Documents Use Case Description

In this use case, the mobile device needs access to existing documents. For example, a mobile device involved in a workflow needs to determine the current state of the workflow, or the mobile device needs to discover the most current medical summary.

#### 1:33.4.3.2 Discovery Retrieval of Existing Documents Process Flow

The Find Document References [[ITI-67]](ITI-67.md) transaction is used to issue parameterized queries that result in a list of DocumentReference Resources, where a DocumentReference Resource carries the XDS DocumentEntry metadata, which is metadata about a document.

Alternatively, the Find Document Lists [[ITI-66]](ITI-66.md) transaction is used to issue parameterized queries that result in a set of List Resources, where a List Resource carries the XDS SubmissionSet metadata for a set of DocumentEntry objects that were published as a set, or XDS Folder metadata for a set of DocumentEntry objects that are said to be members of the same grouping.

The Retrieve Document [[ITI-68]](ITI-68.md) transaction is used to get the document itself.

**Figure 1:33.4.3.2-1: Basic Process Flow in MHD Profile**

### 1:33.4.4 Use Case 3: Generate Metadata and Publish Process Flow

An alternative flow to Use Case 1, supports the case where the Document Source has only a structured and coded document such as CDA, or FHIR-Document. The Document Recipient inspects the document and generates a DocumentReference. The Document Recipient may need to create a SubmissionSet depending on the persistance and grouping requirements.

The Generate Metadata is a FHIR Operation defined in the Generate Metadata [[ITI-106]](ITI-106.md) transaction.

**Figure 1:33.4.4-1: Use Case 3 Process Flow**

### 1:33.4.5 Mapping to RESTful Operators

The MHD Profile defines a set of transactions against FHIR Resources. These are summarized in Table 1:33.4.5-1. MHD does not use any additional extended or custom methods.

**Table 1:33.4.5-1: REST Methods and Resources**

| | | | |
| :--- | :--- | :--- | :--- |
| GET | Find Document Reference [ITI-67] | Find Document Lists [ITI-66] | Retrieve Document [ITI-68] |
| PUT | Not Specified | Not Specified | Not Specified |
| POST | Provide Document Bundle [ITI-65]Simplified Publish [ITI-105] | Provide Document Bundle [ITI-65] | Provide Document Bundle [ITI-65] |
| DELETE | Not Specified | Not Specified | Not Specified |
| UPDATE | Not Specified | Not Specified | Not Specified |
| HEAD | Not Specified | Not Specified | Not Specified |
| OPTIONS | Not Specified | Not Specified | Not Specified |
| TRACE | Not Specified | Not Specified | Not Specified |

Note: Items are marked **Not Specified** because the MHD Profile is focused on core Document Sharing (XDS, XDR, etc.) capability and is not trying to address the larger use case of metadata update.

