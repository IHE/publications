# IHE Use - De-Identification Handbook v2.0.0-comment

* [**Table of Contents**](toc.md)
* **IHE Use**

## IHE Use

This guidance helps IHE profile editors design robust, practical de-identification profiles that align with the multi-stage process and risk management principles defined in the handbook. Profiles should be actionable, standards-aligned, and adaptable to varied implementation contexts.

### What an IHE De-Identification Profile Must Define

This section defines the minimum content an IHE de-identification profile must include so implementations are consistent, actionable, and auditable.

* **Common profile requirements**: Define the common cross-project de-identification requirements and assumptions the profile is designed to support (e.g., intended use patterns, utility expectations, risk approaches, reversibility options, recipient models, and release conditions).
* **Source data scope**: The kinds of input data (structured, imaging, free text, semi-structured) expected by the profile and any known auxiliary sources (filenames, metadata, linked forms).
* **Element-by-element treatments**: For every relevant attribute, specify whether it is removed (redacted), transformed (generalized/perturbed/pseudonymized), or passed through unchanged—with rules that yield valid, interoperable output values.
* **Multi-stage placement**: Which steps belong at the source (preliminary, often reversible) and which require centralized, specialized processing (irreversible pseudonymization/nlp/pixel scrubbing), plus any recipient-side verification expectations.
* **Risk targets**: Recommended reference thresholds and measurement approaches for expected sharing models (public, controlled, enclave), including how conformance can be judged (e.g., `k`-anonymity metrics or differential privacy budgets).
* **Residual risks and controls**: Risks that cannot be removed in data alone and therefore require policy, contractual, or environmental controls (access control, encryption, secrets management, data disposal).

IHE profiles define reusable technical requirements in anticipation of common use cases, but they do not resolve project-specific de-identification decisions, establish governance policy, or interpret applicable law for each jurisdiction. Jurisdiction-specific requirements should be resolved either through the applicable IHE Technical Framework Volume 4 jurisdictional extension, or as explicit project-level requirements when no applicable Volume 4 extension exists. Implementers remain responsible for mapping profile requirements to local legal, regulatory, contractual, and organizational obligations. Accordingly, risk targets and measurement choices in a profile should be treated as reference guidance and finalized through the applicable Volume 4 jurisdictional extension and/or project-level implementation requirements.

Profiles will often be detailed documents (tens of pages) and should be structured so implementers can trace requirements to specific transformations and controls.

### Aligning Profiles to the Handbook Process

This section explains how profile editors should derive and justify profile requirements using the handbook’s step-by-step process. Profiles should reference and operationalize the steps summarized in the multi-stage process (see process overview):

* **Context analysis**: Define intended uses, recipients, and end-to-end data flows; identify common profile requirements and project-specific deltas; capture applicable regulatory constraints and intermediary organizations; and document whether jurisdiction-specific constraints are addressed by Volume 4 extension text or by project-level requirements.
* **Data assessment**: Call out challenging types (longitudinal, free text, imaging, binary) and classify attributes as Direct Identifiers, Quasi-Identifiers, Sensitive Attributes, or Non-Identifiers.
* **Goals and thresholds**: Translate general goals (prevent identification, control risk, preserve utility) into measurable targets with documented reference thresholds (e.g., benchmark thresholds adapted from ISO/IEC 27559 for public vs non-public releases), and require jurisdiction-specific adjustment at implementation time.
* **Risk assessment**: Specify how qualitative checks lead to quantitative evaluation when QIs remain, and which metrics/budgets are used (e.g., `R = R<sup>d</sup> × R<sup>c</sup>` for k-anonymity or an `ε` privacy budget for differential privacy).
* **Risk mitigation design**: Place transformations across stages; justify reversible vs. irreversible pseudonymization; define secrets handling, access controls, and secure transfer/storage.
* **Implementation and validation**: Require test data validation, auditability, and change control; recipients confirm agreed privacy levels before use.

### Multi-Stage Architecture in Profiles

Profiles should explicitly map treatments to stages to reflect real-world constraints:

* **Stage 1 (Source / Preliminary)**: Remove obvious Direct Identifiers and apply basic, often reversible pseudonymization to make data safe for internal transfer. Expect `Readily-Identifiable Data` outputs with strict key management.
* **Stage 2 (Central / Advanced)**: Apply specialized processing (NLP for text identifiers, pixel scrubbing for imaging, k-anonymity class analysis, DP mechanisms) to achieve `Irreversibly Pseudonymized` or `Anonymous` outputs.
* **Stage 3 (Recipient / Verification)**: Require recipients to verify that residual re-identification risk meets agreed acceptance criteria under the shared/agreed de-identification solution, and to confirm data quality before use; this is verification, not a full re-assessment unless explicitly required by agreement or changed context.

### When Single-Stage Is Sufficient

* Single-stage de-identification can be appropriate when the intended use, sharing model, and context controls yield an acceptable overall risk without additional specialized processing (e.g., controlled internal sharing with strong access controls and no free text or imaging identifiers).
* Ensure the chosen approach meets documented risk thresholds (e.g., benchmark thresholds adapted from ISO/IEC 27559) and preserves required data utility. If single-stage is used, explicitly document element treatments, residual risks, and operational controls (access, secrets, encryption, disposal), and validate with test data before operational use.
* Single-stage may be designed as a combination of preliminary and advanced de-identification performed together. In that case, the same analyses for preliminary (source) and advanced (centralized) processing still apply—identify direct vs. quasi-identifiers, place transformations appropriately, and verify risk against thresholds before release.

### Pseudonymization Requirements

* **Reversibility policy**: Declare whether re-identification is permitted and where the boundary lies (stage and controls). If reversible, define secure mapping management and least-privilege access.
* **Irreversible pseudonyms**: Use strong, one-way methods (e.g., salted cryptographic hashes with non-stored salts) and document collision handling, trait changes, and deduplication expectations.
* **Data utility**: Specify acceptable accuracy and whether evidence of de-identification is permissible; define acceptable generalization/perturbation ranges.

### Semantic and Interoperability Rules

* **Standards conformance**: Redaction/transformation must yield valid codes and structures. If mandatory elements are redacted, specify allowed placeholders and value sets.
* **Code system threats**: Address risks from rare or facility-specific codes that may leak provenance.

### Process Identifiers and Operational Controls

* **Process identifiers**: Define treatment of batch IDs, logs, and transformation metadata and how they are protected.
* **Access control and secrets**: Require least-privilege access and secure vaulting of keys/salts/mapping tables.
* **Secure transfer and encryption**: Define approved methods (SFTP/HTTPS, hardware-encrypted devices) and AES-256 at rest.
* **Data disposal**: Require secure multi-pass wipe procedures prior to decommissioning.

### Examples and Starting Points

* The Biosurveillance Specification focuses on a single intended use and details element processing.
* The [DICOM standard](references.md#DICOM) offers default requirements and options, including [PS 3.15 Annex E](references.md#DICOM-part-15-annex-e) tables (e.g., Table E.1-1) that can be adapted. Private attributes require careful treatment beyond defaults.

### Practical Use by Implementers

Starting from a generic profile reduces effort and error and allows the implementers to compare their specific intended use and recipients to the generic profile and adjust expected elements and thresholds according to their requirements. For DICOM, it is common to find that the default profile plus selected options suffices. The same expectations apply when developing an IHE de-identification profile, including clear stage placement, explicit element treatment rules, documented risk thresholds, and operational controls, to ensure consistent and safe implementations.

### Profile Editor Checklist

* Define the common cross-project requirements the profile is intended to cover, and explicitly identify project-specific requirements that must be handled by implementers.
* Document jurisdictional and governance boundaries: use IHE profile requirements as technical guidance, and resolve jurisdiction-specific requirements either in the applicable Volume 4 extension or in project-level requirements; separately apply local legal/regulatory interpretation and organizational policy.
* Define intended uses, recipients, and data flow; note regulatory constraints and intermediaries.
* Enumerate data types (structured, free text, imaging, binary) and classify attributes (DI, QI, SA, NI).
* Decide single-stage vs multi-stage: if single-stage, confirm it combines preliminary and advanced processing with both analyses applied; if multi-stage, map element treatments to each stage (1, 2, 3).
* Produce an element-by-element treatment table: redaction, transformation (generalize/perturb/pseudonymize), or pass-through with valid placeholders/codes.
* Set risk targets and measurement as profile reference guidance: k-anonymity metrics (`R = R<sup>d</sup> × R<sup>c</sup>`) or differential privacy budgets (`ε`) aligned to the sharing model, with explicit jurisdiction-specific adjustment required during implementation.
* Choose pseudonymization policy: reversible (key management) vs irreversible (one-way salted methods), and address trait changes and deduplication.
* Specify operational controls: access control, secrets management, secure transfer, encryption at rest, and data disposal.
* Validate with test data; require recipient-side verification before use.

