
Figure 38.1-1 shows the actors directly involved in the Patient Demographics Query for Mobile Profile and the relevant transactions between them. Note that the actors in this profile are the same as the actors defined in the PDQ Profile (ITI TF-1: 8.1).
<div>
{%include PDQm-Actor-Diagram.svg %}
</div>

**Figure 38.1: PQDm Actor Diagram**

Table 38.1-1: PDQm; Profile - Actors and Transactions

| Actors  | Transactions  | Initiator or Responder | Optionality| Reference|
|---------|---------------|:----------------------:|:---------------:|-----------------------------------|
| Patient Demographics Consumer | Mobile Patient Demographics Query [ITI-78]  | Initiator | R  | [ITI TF-2:3.78](ITI-78.html) |
| Patient Demographics Supplier | Mobile Patient Demographics Query [ITI-78] | Responder | R | [ITI TF-2:3.78](ITI-78.html) |
{:.grid}


Note 1: The transaction defined in this profile corresponds to [Patient Demographics Query \[ITI-21\]](https://profiles.ihe.net/ITI/TF/Volume2/ITI-21.html) in the [PDQ Profile (ITI TF-1:8)](https://profiles.ihe.net/ITI/TF/Volume1/ch-8.html) and provides similar functionality. Note that there is no transaction which corresponds to the Patient Demographics and Visit Query [ITI-22].

### 1:38.1.1 Actor Descriptions and Actor Profile Requirements
No additional requirements.

### 1:38.1.2 Transaction Descriptions
The transactions in this profile are summarized in the sections below.

#### 1:38.1.2.1 PQDm Mobile Patient Demographics Query transaction

Mobile Patient Demographics Query is used by the Patient Demographics Consumer to solicit information about patients whose demographics data match data provided in the query parameters on the request message. The request is received by the Patient Demographics Supplier. The Patient Demographics Supplier processes the request and returns a response in the form of demographics information for the matching patients.

For more details see the detailed [transaction description](ITI-78.html)
