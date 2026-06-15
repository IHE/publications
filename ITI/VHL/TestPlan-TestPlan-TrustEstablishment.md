# Integration Test Plan – Trust Establishment - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Integration Test Plan – Trust Establishment**

## TestPlan: Integration Test Plan – Trust Establishment 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/TestPlan/TestPlan-TrustEstablishment | *Version*:1.0.0-comment |
| Active as of 2026-06-14 | *Computable Name*:TestPlan_TrustEstablishment |

 
Integration test plan for the **Trust Establishment** workflow of the IHE ITI Verifiable Health Links (VHL) profile. 
Scope: validates multi-actor, cross-transaction scenarios that span ITI-YY1 (Submit PKI Material) and ITI-YY2 (Retrieve Trust List) and cannot be covered by unit tests. Tests verify that a DID Document submitted in YY1 is subsequently retrievable via YY2 in the same session, that both the VHL Sharer and VHL Receiver can retrieve peer keys, that a full round-trip signature verification succeeds, and that revocation propagates correctly across actors. 
Actors exercised: VHL Sharer, Trust Anchor, VHL Receiver. 

