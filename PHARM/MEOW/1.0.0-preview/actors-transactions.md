# Actors and Transactions - IHE Pharmacy Medication Overview v1.0.0-preview

* [**Table of Contents**](toc.md)
* [**Volume 1 Overview**](volume1.md)
* **Actors and Transactions**

## Actors and Transactions

This section defines the actors and transactions in this implementation guide.

The figure below shows the actors directly involved in the MEOW Profile and the relevant transactions between them.

```
@startuml
skinparam backgroundColor transparent
skinparam shadowing false
skinparam rectangle {
  BackgroundColor #E6F2FF
  BorderColor #336699
  roundCorner 15
}

rectangle "Medication Overview\nCreator" as Cr
rectangle "Medication Overview\nConsumer" as C
rectangle "Medication Overview\nRepository" as R

Cr -down- R : Submit Medication Overview\n[PHARM-y]
C -down- R : Get Medication Overview\n[PHARM-x]
@enduml

```

Table 1:33.1-1 lists the transactions for each actor directly involved in the MEOW Implementation Guide. To claim compliance with this guide, an actor shall support all required transactions (labeled "R") and may support the optional transactions (labeled "O").

| | | |
| :--- | :--- | :--- |
| [Medication Overview Creator](actors-transactions.md#133113-medication-overview-creator) | [Submit Medication Overview [PHARM-y]](PHARM-y.md) | R |
| [Medication Overview Repository](actors-transactions.md#133112-medication-overview-repository) | [Submit Medication Overview [PHARM-y]](PHARM-y.md) | R |
| [Get Medication Overview [PHARM-x]](PHARM-x.md) | R | |
| [Medication Overview Consumer](actors-transactions.md#133111-medication-overview-consumer) | [Get Medication Overview [PHARM-x]](PHARM-x.md) | R |

### 1:33.1.1 Actor Descriptions and Actor Profile Requirements

The actors in this profile are described in more detail in the sections below.

#### 1:33.1.1.1 Medication Overview Consumer

The Medication Overview Consumer queries a Medication Overview Repository to retrieve an existing Medication Overview for a patient. It is the actor that pulls already-recorded medication information for viewing or further processing.

#### 1:33.1.1.2 Medication Overview Repository

The Medication Overview Repository stores the Medication Overviews submitted by Medication Overview Creators and responds to queries from Medication Overview Consumers. It is the actor that holds the medication information and makes it available for retrieval.

#### 1:33.1.1.3 Medication Overview Creator

The Medication Overview Creator assembles a Medication Overview - the set of medication treatment lines summarizing the patient's medication - and submits it to a Medication Overview Repository.

### 1:33.1.2 Transaction Descriptions

The transactions in this profile are summarized in the sections below.

#### 1:33.1.2.1 Get Medication Overview [PHARM-x]

The Get Medication Overview transaction is used by a Medication Overview Consumer to query a Medication Overview Repository and retrieve an existing Medication Overview.

This is a pull transaction: the Consumer requests the information held by the Repository.

For more details see the detailed [PHARM-x transaction description](PHARM-x.md).

#### 1:33.1.2.2 Submit Medication Overview [PHARM-y]

The Submit Medication Overview transaction is used by a Medication Overview Creator to submit a Medication Overview to a Medication Overview Repository.

This is a push transaction: the Creator provides the medication information to be stored by the Repository.

For more details see the detailed [PHARM-y transaction description](PHARM-y.md).

