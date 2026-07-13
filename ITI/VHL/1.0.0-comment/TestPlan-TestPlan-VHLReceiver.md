# Test Plan – VHL Receiver - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Test Plan – VHL Receiver**

## TestPlan: Test Plan – VHL Receiver 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/TestPlan/TestPlan-VHLReceiver | *Version*:1.0.0-comment |
| Active as of 2026-06-14 | *Computable Name*:TestPlan_VHLReceiver |

 
Unit test plan for the **VHL Receiver** actor of the IHE ITI Verifiable Health Links (VHL) profile. 
Scope: validates all behaviour expected of a VHL Receiver across its four transactions: submitting its own PKI material (ITI-YY1 initiator), retrieving the trust list (ITI-YY2 initiator), decoding and validating a VHL QR code (ITI-YY4 responder), and requesting the document manifest (ITI-YY5 initiator). Each test suite exercises three atomic feature files. 

