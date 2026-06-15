# Create Secure Channel - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Create Secure Channel**

## Requirements: Create Secure Channel 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/Requirements/CreateSecureChannel | *Version*:1.0.0-comment |
| Active as of 2026-06-14 | *Computable Name*:CreateSecureChannel |

 
The [VHL Sharer](ActorDefinition-VHLSharer.md) and [VHL Receiver](ActorDefinition-VHLReceiver.md) SHALL jointly establish a secure connection prior to executing any Verified Health Link (VHL) transactions involving the exchange of sensitive data. 
This requirement is satisfied by implementing secure channel establishment as defined in the [Audit Trail and Node Authentication (ATNA)](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html) Profile, specifically through the Authenticate Node [ITI-19] transaction. 
This requirement entails: 
* The VHL Receiver initiating a secure connection as the client and presenting valid credentials
* The VHL Sharer responding as the server, presenting its own credentials and validating the client's credentials against a trusted Certificate Authority or Trust Anchor
 
Establishing this secure channel ensures confidentiality, integrity, and bilateral authentication of all subsequent communications, and fulfills the trust obligations defined in the [Establish Trust](Requirements-EstablishTrust.md) requirement. 

