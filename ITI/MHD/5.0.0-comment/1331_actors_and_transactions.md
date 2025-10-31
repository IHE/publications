# 1:33.1 Actors and Transactions - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* **1:33.1 Actors and Transactions**

## 1:33.1 Actors and Transactions

This section defines the actors and transactions in this implementation guide.

The figure below shows the actors directly involved in the MHD Profile and the relevant transactions between them.

**Figure 1:33.1-1: MHD Actor Diagram**

Table 1:33.1-1 lists the transactions for each actor directly involved in the MHD Implementation Guide. To claim compliance with this guide, an actor shall support all required transactions (labeled "R") and may support the optional transactions (labeled "O").

| | | |
| :--- | :--- | :--- |
| [Document Source](1331_actors_and_transactions.md#133111-document-source) | [Provide Document Bundle [ITI-65]](ITI-65.md) | O |
| [Simplified Publish [ITI-105]](ITI-105.md) | O | |
| [Generate Metadata [ITI-106]](ITI-106.md) | O | |
| [Document Recipient](1331_actors_and_transactions.md#133113-document-recipient) | [Provide Document Bundle [ITI-65]](ITI-65.md) | R |
| [Simplified Publish [ITI-105]](ITI-105.md) | O | |
| [Generate Metadata [ITI-106]](ITI-106.md) | O | |
| [Document Consumer](1331_actors_and_transactions.md#133112-document-consumer) | [Find Document Lists [ITI-66]](ITI-66.md) | R |
| [Find Document References [ITI-67]](ITI-67.md) | R | |
| [Retrieve Document [ITI-68]](ITI-68.md) | R | |
| [Document Responder](1331_actors_and_transactions.md#133114-document-responder) | [Find Document Lists [ITI-66]](ITI-66.md) | R |
| [Find Document References [ITI-67]](ITI-67.md) | R | |
| [Retrieve Document [ITI-68]](ITI-68.md) | R | |

Note: The Document Source shall implement at least one of the transactions.

### 1:33.1.1 Actor Descriptions and Actor Profile Requirements

The actors in this profile are described in more detail in the sections below.

#### 1:33.1.1.1 Document Source

The Document Source is the producer and publisher of Document Content to a Document Recipient.

The Document Source uses either the [ITI-65], [ITI-105], or [ITI-106].

The following CapabilityStatements define the actor capabilities given the various Options

* [Document Source](CapabilityStatement-IHE.MHD.DocumentSource.md)
* [Document Source implementing Comprehensive Metadata Option](CapabilityStatement-IHE.MHD.DocumentSource.Comprehensive.md)
* [Document Source implementing UnContained Reference Option](CapabilityStatement-IHE.MHD.DocumentSource.UnContained.md)
* [Document Source implementing Simplified Publish Option](CapabilityStatement-IHE.MHD.DocumentSource.Simplified.md)
* [Document Source implementing Generate Metadata Option](CapabilityStatement-IHE.MHD.DocumentSource.Generate.md)
* [Document Source implementing ITI-65 FHIR Documents Publish Option](CapabilityStatement-IHE.MHD.DocumentSource.Fdoc.md)

#### 1:33.1.1.2 Document Consumer

The Document Consumer queries Document Responder for SubmissionSet, Folder, and DocumentReference metadata meeting certain criteria and may retrieve selected documents.

The following CapabilityStatements define the actor capabilities

* [Document Consumer](CapabilityStatement-IHE.MHD.DocumentConsumer.md)

#### 1:33.1.1.3 Document Recipient

The Document Recipient receives documents and metadata sent by the Document Source.

The following CapabilityStatements define the actor capabilities

* [Document Recipient](CapabilityStatement-IHE.MHD.DocumentRecipient.md)
* [Document Recipient implementing Comprehensive Metadata Option](CapabilityStatement-IHE.MHD.DocumentRecipient.Comprehensive.md)
* [Document Recipient implementing UnContained Reference Option](CapabilityStatement-IHE.MHD.DocumentRecipient.UnContained.md)
* [Document Recipient implementing Simplified Publish Option](CapabilityStatement-IHE.MHD.DocumentRecipient.Simplified.md)
* [Document Source implementing Generate Metadata Option](CapabilityStatement-IHE.MHD.DocumentSource.Generate.md)
* [Document Source implementing ITI-65 FHIR Documents Publish Option](CapabilityStatement-IHE.MHD.DocumentSource.Fdoc.md)

#### 1:33.1.1.4 Document Responder

The Document Responder responds with SubmissionSet, Folder, and DocumentReference metadata in response to a search request, and responds with documents in response to a retrieve request, from a Document Consumer.

The following CapabilityStatements define the actor capabilities

* [Document Responder](CapabilityStatement-IHE.MHD.DocumentResponder.md)

### 1:33.1.2 Transaction Descriptions

The transactions in this profile are summarized in the sections below.

#### 1:33.1.2.1 Provide Document Bundle

This transaction is used to transfer documents and metadata and is analogous to a [Provide and Register Document Set-b ITI-41](https://profiles.ihe.net/ITI/TF/Volume2/ITI-41.html) transaction.

For more details see the detailed [ITI-65 transaction description](ITI-65.md).

#### 1:33.1.2.2 Find Document Lists

This transaction is used to issue parameterize queries that result in a List resource representing a SubmissionSet or a Folder.

For more details see the detailed [ITI-66 transaction description](ITI-66.md).

#### 1:33.1.2.3 Find Document References

This transaction is used to issue parameterized queries that result in a list of Document Reference resources.

For more details see the detailed [ITI-67 transaction description](ITI-67.md).

#### 1:33.1.2.4 Retrieve Document

This transaction is used to get documents.

For more details see the detailed [ITI-68 transaction description](ITI-68.md).

#### 1:33.1.2.5 Simplified Publish

This transaction is used to publish a document and the document metadata. This transaction does not support publishing multiple documents. This transaction will produce a simplified SubmissionSet based solely on the DocumentReference, security context between Document Source and Document Recipient, and local configuration for metadata conversion.

For more details see the detailed [ITI-105 transaction description](ITI-105.md).

#### 1:33.1.2.6 Generate Metadata

This transaction is used to generate DocumentReference metadata given a document. The Document Source provides a document. The Document Responder will create, update, or use an existing DocumentReference instance.

For more details see the detailed [ITI-106 transaction description](ITI-106.md).

