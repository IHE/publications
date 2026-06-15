# Test Plan – VHL Sharer - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Test Plan – VHL Sharer**

## TestPlan: Test Plan – VHL Sharer 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/TestPlan/TestPlan-VHLSharer | *Version*:1.0.0-comment |
| Active as of 2026-06-14 | *Computable Name*:TestPlan_VHLSharer |

 
Unit test plan for the **VHL Sharer** actor of the IHE ITI Verifiable Health Links (VHL) profile. 
Scope: validates all behaviour expected of a VHL Sharer across its four transactions: submitting its own PKI material (ITI-YY1 initiator), retrieving the trust list to obtain peer keys (ITI-YY2 initiator), generating VHLs on demand (ITI-YY3 responder), and serving document manifests to authorised VHL Receivers (ITI-YY5 responder). Each test suite corresponds to one transaction and exercises three atomic feature files. 

