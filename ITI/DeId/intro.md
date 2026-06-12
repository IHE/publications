# Introduction - De-Identification Handbook v2.0.0-comment

* [**Table of Contents**](toc.md)
* **Introduction**

## Introduction

### Overview and Intended Audience

This handbook explains a practical, multi-stage process for reducing individually identifiable information in healthcare data. It covers de-identification, pseudonymization, optional re-linking, design considerations, techniques, and risks. It is written for IHE Profile editors and for healthcare IT implementers who need concrete guidance to design, implement, validate, and operate de-identification systems.

### Audience Benefits

**For IHE Profile Editors**

* Stage-aware profile structure to adopt (sources, treatments, residual risks, operational controls).
* Standardized terminology and risk thresholds to reduce ambiguity across profiles.
* Reusable checklist to improve completeness and consistency.
* Guidance on when single-stage can suffice and how to document compensating controls.
* Worked exemplar to map into profile text and test cases.

**For Healthcare IT Implementers**

* End-to-end process workflow with gating criteria for each stage.
* Techniques by data type (structured, text, imaging) to implement safe transformations.
* Validation and monitoring practices for production operations.
* Operational controls for access, audit, encryption, transfer, and disposal.
* Pseudonymization and re-linking constraints to support contact requirements safely.

### How to Use This Handbook

* **Concepts**: See [Concepts](concepts.md) for key terms, identifiability levels, residual risk notions, and threat models that frame decision-making.
* **Process**: See [Process](process.md) for the stage-by-stage workflow (context analysis → data assessment → risk modeling → design → validation → operation) and gating criteria.
* **Techniques**: See [Techniques](techniques.md) for techniques organized by data type (structured, text, imaging) and use-case constraints.
* **IHE Use Guidance**: See [IHE Profile Editor Guidance](ihe-use.md) for what a profile must define (sources, treatments, risks, operational controls) and when single-stage can suffice.
* **Worked Example**: See [IPS + EHDS2 Exemplar](ips-ehds-example.md) for a concise profile demonstrating purpose, recipients, multi-stage process, risk thresholds, and element-by-element treatment.

### Where De-Identification Is Used

* Educational materials intended for broad public use often require extreme de-identification while preserving educational value. Some IHE profiles assist automation, with customization per patient and teaching purpose.
* Public health programs use de-identified databases to track and understand diseases.
* Clinical trials use de-identification to protect privacy and reduce bias (e.g., removing treatment assignment details such as placebo/experimental arms).
* Clinical reviews often apply slight de-identification to reduce incidental disclosure and subconscious bias (reviewers do not see patient, clinician, or facility identifiers). Intentional re-identification may still be possible; controls must reflect this.

Some scenarios (e.g., public health or trials) require the ability to contact individuals later. That introduces constraints on pseudonymization, key management, and re-linking policies; see [IHE Profile Editor Guidance](ihe-use.md) and [Process](process.md).

### Risk, Scope, and Limits

****Risk can only be reduced — never eliminated.**** The only way to absolutely prevent re-linking is to disclose no data. De-identified data may still contain indirect identifiers and often requires strong controls (access, transfer, storage, disposal). Design choices must reflect applicable laws and policies, organizational requirements, and operational realities.

This handbook provides a general process to adapt to specific situations; it does not define a universal profile. Each situation must be evaluated based on data needs, environment, regulatory context, and intended recipients. A profile may target a class of uses rather than one project, with explicit residual risks and accompanying protections.

### Single-Stage vs. Multi-Stage

Multi-stage approaches are often preferable (e.g., preliminary scrubbing followed by advanced risk-based treatments), but a single stage can suffice when:

* The data scope and recipients are narrow and well-understood.
* Residual risks are quantified and below agreed thresholds.
* Operational controls (access, audit, encryption, disposal) compensate appropriately.

Even in single-stage designs, perform both preliminary and advanced analyses; see [Process](process.md) and [IHE Profile Editor Guidance](ihe-use.md).

### Validation and Monitoring

Validation must occur early in design, at go-live, and during operations. Data characteristics shift over time; monitoring helps maintain effectiveness. IHE profiles can assist by removing unnecessary content and by offering guidance for common intended uses, but local validation remains essential. See [Process](process.md) and [De-Identification Techniques](techniques.md).

### Re-Use Caveat

Data appropriately de-identified for one purpose (e.g., a clinical trial) may not be suitable for another (e.g., public health analytics). Re-evaluate the process when changing the purpose, recipients, or environment.

### ISO/TS 25237 Objectives (Examples)

* secondary use of clinical data (e.g., research);
* clinical trials and post-marketing surveillance;
* pseudonymous care;
* patient identification systems;
* public health monitoring and assessment;
* confidential patient-safety reporting (e.g., adverse drug effects);
* comparative quality indicator reporting;
* peer review;
* consumer groups;
* medical device calibration or maintenance.

