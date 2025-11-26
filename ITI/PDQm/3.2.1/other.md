# Changes to other IHE Specifications - Patient Demographics Query for Mobile (PDQm) v3.2.1

* [**Table of Contents**](toc.md)
* **Changes to other IHE Specifications**

## Changes to other IHE Specifications

This section contains modifications to other IHE publications and profiles and is not a part of the PDQm Profile. The content here will be incorporated into the target narrative at a future time, usually when PDQm goes final text.

## IHE Technical Frameworks General Introduction Appendix A – Actor Summary Definitions

| |
| :--- |
| Editor, add the following new or modified actors to the[IHE Technical Frameworks General Introduction Appendix A](https://profiles.ihe.net/GeneralIntro/ch-A.html): |

| | |
| :--- | :--- |
| No new |   |

## IHE Technical Frameworks General Introduction Appendix B – Transaction Summary Definitions

| |
| :--- |
| Editor, add the following new or modified transactions to the[IHE Technical Frameworks General Introduction Appendix B](https://profiles.ihe.net/GeneralIntro/ch-B.html): |

| | |
| :--- | :--- |
| Mobile Patient Demographics Query [ITI-78] | Performs a query against a patient demographics supplier using HTTP, REST, and JSON/XML message encoding. |
| Patient Demographics Match [ITI-119] | Requests that a patient demographics supplier using the FHIR $match operation. |

## 1:8.6 PDQ Cross Profile Considerations

| |
| :--- |
| Editor, Add the following to section ITI TF-1: 8.6 |

There are two additional profiles, PDQv3 (Patient Demographics Query HL7v3) and PDQm (Patient Demographics Query for Mobile), which provide similar functionality to Patient Demographics Query. These profiles adapt the Patient Demographics Query transaction of the Patient Demographics Supplier and Patient Demographics Consumer Actors for HL7v3 and HL7 FHIR. [ITI TF-2x: Appendix M.4](https://profiles.ihe.net/ITI/TF/Volume2/ch-M.html#M.4) provides additional details about these Patient Demographics Query Profiles and their relationship with one another.

## 1:24.6 PDQv3 Cross Profile Considerations

| |
| :--- |
| Editor, Add the following to section ITI TF-1: 24.6 |

There are two additional profiles, PDQ (Patient Demographics Query) and PDQm (Patient Demographics Query for Mobile), which provide similar functionality to Patient Demographics Query V3. These profiles adapt the Patient Demographics Query transaction of the Patient Demographics Supplier and Patient Demographics Consumer Actors for HL7v2 and HL7 FHIR. [ITI TF-2x: Appendix M.4](https://profiles.ihe.net/ITI/TF/Volume2/ch-M.html#M.4) provides additional details about these Patient Demographics Query Profiles and their relationship with one another.

