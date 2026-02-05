# Other - Patient Identifier Cross-referencing for mobile (PIXm) v3.1.0

* [**Table of Contents**](toc.md)
* **Other**

## Other

This section contains modifications to other IHE publications and profiles, and is not a part of the PIXm profile. The content here will be incorporated into the target narrative at a future time, usually when PIXm goes final-text.

## IHE Technical Frameworks General Introduction Appendix A – Actor Summary Definitions

| |
| :--- |
| Editor, Add the following new or modified actors to the[IHE Technical Frameworks General Introduction Appendix A](https://profiles.ihe.net/GeneralIntro/ch-A.html): |

| | |
| :--- | :--- |
| Patient Identity Source | The Patient Identity Source is the producer and publisher of patient identity data. |
| Patient Identifier Cross-reference Consumer | The Patient Identifier Cross-reference Consumer queries the patient ID lists from the Patient Identifier Cross-reference Manager. |
| Patient Identifier Cross-reference Manager | The Patient Identifier Cross-reference Manager manages patient identity data from different domains and cross-references patient identity data from different domains for the same patient. |

## IHE Technical Frameworks General Introduction Appendix B – Transaction Summary Definitions

| |
| :--- |
| Editor, Add the following new or modified transactions to the[IHE Technical Frameworks General Introduction Appendix B](https://profiles.ihe.net/GeneralIntro/ch-B.html): |

| | |
| :--- | :--- |
| Mobile Patient Identifier Cross-reference Query [ITI-83] | Performs a query against a patient identifier cross-reference manager using HTTP, REST, and JSON/XML message encoding. |
| Patient Identity Feed FHIR [ITI-104] | This transaction communicates patient information, including corroborating demographic data, after a patient’s identity is established, modified or merged or after the key corroborating demographic data has been modified. In addition, the removal of a patient identity in the source patient identifier domain may be communicated. |

