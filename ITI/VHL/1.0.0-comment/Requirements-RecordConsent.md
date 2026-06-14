# Record Consent - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Record Consent**

## Requirements: Record Consent 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/Requirements/RecordConsent | *Version*:1.0.0-comment |
| Active as of 2026-06-14 | *Computable Name*:RecordConsent |

 
The [VHL Sharer](ActorDefinition-VHLSharer.md) SHALL record the consent granted by a [VHL Holder](ActorDefinition-VHLHolder.md) to authorize the sharing of their health data via a Verified Health Link (VHL). This consent confirms that the Holder agrees to the creation of a VHL and its use by authorized [VHL Receivers](ActorDefinition-VHLReceiver.md) to access specific health documents. 
In this requirement, the VHL Sharer acts as a Consent Recorder, as defined in the [Privacy Consent on FHIR (PCF)](https://profiles.ihe.net/ITI/PCF/index.html) profile. Specifically, the Sharer SHALL initiate the [Access Consent - ITI-108](https://profiles.ihe.net/ITI/PCF/ITI-108.html) transaction to formally capture the Holder's consent. 
The ITI-108 transaction SHOULD be invoked as part of the actions triggered by a Generate VHL request, particularly when legal, jurisdictional, or organizational policy requires explicit, recorded consent prior to enabling document sharing. 
This requirement enables lawful, transparent sharing of personal health information across organizations and trust domains. 

