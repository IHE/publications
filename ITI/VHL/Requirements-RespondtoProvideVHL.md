# Receive VHL authorization mechanism - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Receive VHL authorization mechanism**

## Requirements: Receive VHL authorization mechanism 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/Requirements/RespondtoProvideVHL | *Version*:1.0.0-comment |
| Active as of 2026-06-14 | *Computable Name*:RespondtoProvideVHL |

 
The [VHL Receiver](ActorDefinition-VHLReceiver.md) SHALL be capable of receiving a Verified Health Link (VHL) from a [VHL Holder](ActorDefinition-VHLHolder.md) through a supported transport mechanism (e.g., QR code scan, direct URL, or digital message). 
Upon receipt, the Receiver SHALL: 
* Parse the VHL
* Validate its digital signature against a trusted key published by a recognized Trust Anchor
* Prepare to retrieve the associated health documents
 
Receipt of the VHL may occur through direct user interaction (e.g., scanning a QR code) or automated channels, depending on the implementation context. 

