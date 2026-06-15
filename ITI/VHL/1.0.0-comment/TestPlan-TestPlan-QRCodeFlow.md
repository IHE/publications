# Integration Test Plan – QR Code Generation and Validation Flow - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Integration Test Plan – QR Code Generation and Validation Flow**

## TestPlan: Integration Test Plan – QR Code Generation and Validation Flow 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/TestPlan/TestPlan-QRCodeFlow | *Version*:1.0.0-comment |
| Active as of 2026-06-14 | *Computable Name*:TestPlan_QRCodeFlow |

 
Integration test plan for the **QR Code Generation and Validation Flow** of the IHE ITI Verifiable Health Links (VHL) profile. 
Scope: validates multi-actor, cross-transaction scenarios that span ITI-YY3 (Generate VHL), ITI-YY4 (Provide VHL), and ITI-YY5 (Retrieve Manifest). Tests verify that the QR code generated in YY3 can be decoded in YY4, that the decoded VHL payload's manifest URL is used correctly in YY5, and that the full end-to-end pipeline including passcode handling, signature verification, and VHL authorization succeeds. 
Actors exercised: VHL Holder, VHL Sharer, VHL Receiver. 

