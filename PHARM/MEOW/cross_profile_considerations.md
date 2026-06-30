# Cross Profile Considerations - IHE Pharmacy Medication Overview v1.0.0-preview

* [**Table of Contents**](toc.md)
* [**Volume 1 Overview**](volume1.md)
* **Cross Profile Considerations**

## Cross Profile Considerations

This section describes how the IHE Medication Overview (MEOW) Profile relates to other IHE profiles and to relevant specifications. These relationships are documented here and will be refined as the profile matures.

### Pharmacy Medication Prescription and Dispense (MPD)

MEOW and [MPD](https://profiles.ihe.net/PHARM/MPD/) describe the same underlying medication information from different perspectives. An MPD Responder holds prescription and dispense information and can be grouped with a Medication Overview Repository so that the same data supports both detailed queries (MPD) and overview retrieval (MEOW). MPD action actors (for example an Order Placer or a Dispense Reporter) may optionally group with a Medication Overview Consumer in order to consult the overview before prescribing or dispensing.

### Pharmacy Medication List (PML)

The aggregation pattern in MEOW - where the overview is built from prescriptions and dispenses - evolves the approach taken by the IHE Pharmacy Medication List (PML) profile.

### International Patient Summary (IPS)

Medication treatment lines produced under MEOW can feed the Medication Summary section of an [International Patient Summary (IPS)](https://hl7.org/fhir/uv/ips/) document.

### CDA Medication Treatment Plan (MTP)

MEOW is being reviewed against the CDA Medication Treatment Plan (MTP), which is deployed in several countries, to confirm that FHIR-based deployments can functionally cover the clinical concepts that CDA-based deployments already handle. Conclusions from this review will be recorded in a future version.

