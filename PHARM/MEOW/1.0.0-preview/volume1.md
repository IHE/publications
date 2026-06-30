# Volume 1 Overview - IHE Pharmacy Medication Overview v1.0.0-preview

* [**Table of Contents**](toc.md)
* **Volume 1 Overview**

## Volume 1 Overview

**Preview Release**

This Implementation Guide is a preview release, published to advance work on the topic and to collect input. The content is incomplete and subject to change, and several sections are not yet filled in.

## Volume 1 - Profile

This volume provides the narrative description of the IHE Medication Overview (MEOW) Profile: its purpose, the actors and transactions, the use cases it supports, and its relationship to other profiles and specifications.

The Medication Overview describes the content and transactions for the consistent capture and exchange of a patient's medication overview - also referred to as a medication list or medication scheme. It addresses multiple use cases and implementation patterns, including two opposite ways of creating the overview: as the source of truth from which medication requests are derived, and as an aggregation of medication information already present in the patient's records.

### Related Work

The Medication Overview profile is positioned among other IHE Pharmacy profiles and related content specifications. The detailed relationships are described in [Cross Profile Considerations](cross_profile_considerations.md).

#### MPD

IHE Pharmacy [Medication Prescription and Dispense (MPD)](https://profiles.ihe.net/PHARM/MPD/) describes prescription and dispense information. A Medication Overview can summarize such information into medication treatment lines.

#### MMA

Medication administration information (what was actually administered) complements the overview and can be one of the sources aggregated into it.

#### IPS

The [International Patient Summary (IPS)](https://hl7.org/fhir/uv/ips/) includes a Medication Summary section; MEOW treatment lines can feed that summary.

#### SUPPLY

Medication supply and logistics processes are out of scope for the overview itself, but provide context for the overall medication lifecycle.

