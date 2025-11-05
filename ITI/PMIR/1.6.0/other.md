# Changes to Other Documents - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* **Changes to Other Documents**

## Changes to Other Documents

This section contains modifications to other IHE publications and profiles, and is not a part of the PMIR Profile. The content here will be incorporated into the target narrative at a future time, usually when PMIR goes final text.

## IHE Technical Frameworks General Introduction Appendix A: Actors

| |
| :--- |
| Editor, add the following new or modified actors to the[IHE Technical Frameworks General Introduction Appendix A](https://profiles.ihe.net/GeneralIntro/ch-A.html): |

| | |
| :--- | :--- |
| Patient Identity Registry | Receives patient identity updates, manages patient master identities, sends changes, and provides a searchable repository of patient identity information. |
| Patient Identity Subscriber | Sends subscription requests for patient identity updates. |
| Patient Identity Consumer | Receives patient identity updates. |

## IHE Technical Frameworks General Introduction Appendix B: Transactions

| |
| :--- |
| Editor, add the following new or modified transactions to the[IHE Technical Frameworks General Introduction Appendix B](https://profiles.ihe.net/GeneralIntro/ch-B.html): |

| | |
| :--- | :--- |
| Mobile Patient Identity Feed [ITI-93] | Notifications of all events related to patient identities (creation, update, link, etc.). |
| Subscribe to Patient Updates [ITI-94] | Subscription to notifications about events impacting patient identities (creation, update, link, etc.). |

## 3.78.2 Actor Roles

| |
| :--- |
| Editor, replace Section 3.78.2 with the following. (Note: This section is currently in the PDQm Trial Implementation Supplement.) |

**Table 3.78.2-1: Actor Roles**

| | |
| :--- | :--- |
| **Role:** | Patient Demographics Consumer:Requests a list of patients matching the supplied set of demographics criteria (example: ID or Name) from the Patient Demographics Supplier. The Patient Demographics Consumer populates its attributes with demographic information received from the Patient Demographics Supplier. |
| **Actor(s):** | The following actors may play the role of Patient Demographics Consumer:**Patient Demographics Consumer** |
| **Role:** | Patient Demographics Supplier:Returns demographic information for all patients matching the demographics criteria provided by the Patient Demographics Consumer. |
| **Actor(s):** | The following actors may play the role of Patient Demographics Supplier:**Patient Demographics Supplier****Patient Identity Registry** |

## 3.83.2 Actor Roles

| |
| :--- |
| Editor, Replace Section 3.83.2 with the following. (Note: This section is currently in the PIXm Trial Implementation Supplement.) |

**Table 3.83.2-1: Actor Roles**

| | |
| :--- | :--- |
| **Role:** | Patient Identifier Cross-reference Consumer:Requests, from the Patient Identifier Cross-reference Manager, a list of patient identifiers matching the supplied Patient Identifier. |
| **Actor(s):** | The following actors may play the role of Patient Identifier Cross-reference Consumer:**Patient Identifier Cross-reference Consumer** |
| **Role:** | Patient Identifier Cross-reference Manager:Returns Cross-referenced Patient Identifiers for the patient that cross-matches the Patient Identifier criteria provided by the Patient Identifier Cross-reference Consumer. |
| **Actor(s):** | The following actors may play the role of Patient Identifier Cross-reference Manager:**Patient Identifier Cross-reference Manager****Patient Identity Registry** |

