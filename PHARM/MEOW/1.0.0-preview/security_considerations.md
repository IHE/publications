# Security Considerations - IHE Pharmacy Medication Overview v1.0.0-preview

* [**Table of Contents**](toc.md)
* [**Volume 1 Overview**](volume1.md)
* **Security Considerations**

## Security Considerations

This section describes security and privacy considerations for the IHE Medication Overview (MEOW) Profile. The guidance below is preliminary and will be expanded in a future version.

A medication overview is sensitive clinical information. Implementations are expected to address the following areas.

### Authentication and Authorization

Actors should authenticate users and systems and enforce an authorization policy before granting access to a medication overview. The use of IHE [Internet User Authorization (IUA)](https://profiles.ihe.net/ITI/IUA/) is recommended for authorizing access in a RESTful environment.

### Transport Security

Communication between actors should be protected for confidentiality and integrity in transit, for example using TLS.

### Audit

Actors should record security-relevant events. Alignment with IHE [Audit Trail and Node Authentication (ATNA)](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html) audit events for the query and submission transactions is anticipated.

### Patient Privacy and Consent

Access to a patient's medication overview may be subject to consent and access-control policy. Implementations should enforce the applicable policy; specific consent and access-control mechanisms (for example IHE BPPC/APPC) are referenced rather than mandated in this version.

### Sensitive Information and Emergency Access

Some medications can reveal particularly sensitive conditions. Confidentiality handling (for example via `Composition.confidentiality` and access-control policy) and emergency ("break-the-glass") access with enhanced audit logging are under consideration and will be detailed in a future version.

