# Medication Treatment Lifecycle - IHE Pharmacy Medication Overview v1.0.0-preview

* [**Table of Contents**](toc.md)
* [**Volume 1 Overview**](volume1.md)
* **Medication Treatment Lifecycle**

## Medication Treatment Lifecycle

This section describes the lifecycle of a medication treatment as represented in the IHE Medication Overview (MEOW) Profile - how a treatment line comes into being, how its status evolves, and how it relates to prescriptions, dispenses and administrations.

A medication treatment line may originate as a clinician's plan (the overview as the source of truth) or be derived from existing medication workflow artifacts such as prescriptions and dispenses (the overview as an aggregation). Over time, a treatment line is recorded, may be revised, and may be marked as no longer active.

The detailed lifecycle states and their mapping to FHIR `status` and adherence information are still being decided by the expert group and will be specified in a future version.

