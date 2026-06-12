# Significant Changes and Issues - De-Identification Handbook v2.0.0-comment

* [**Table of Contents**](toc.md)
* **Significant Changes and Issues**

## Significant Changes and Issues

### Significant Changes from Revision 1.0_2014-03-14

* The handbook has been restructured from the standalone Rev. 1.0 PDF handbook into a full IHE Implementation Guide project, with SUSHI/IG build configuration, publication metadata, local templates, and updated build and publisher scripts.
* The core guidance has been substantially expanded into dedicated sections covering introduction, concepts, glossary, data types, process, techniques, security, downloads, references, and issue tracking, with a stronger emphasis on risk-based and multi-stage de-identification.
* New implementation content has been added for concrete interoperability use cases, including detailed FHIR, DICOM, HL7, IPS/EHDS, and family-planning examples, together with guidance on element-level and dataset-level treatment of identifiers and quasi-identifiers.
* The current version now includes computable artifacts and examples in FSH, including audit and capability definitions and multiple example bundles for staged de-identification workflows.
* Visual and reference material has been significantly broadened through new diagrams, generated images, bibliographic sources, and supporting reference documents that ground the handbook in external guidance and project-specific analysis.

### Issues

#### Open Issues

* #35: [Feature]: Homomorphic-Encryption (https://github.com/IHE/ITI.DeIdHandbook/issues/35) 
* Latest comment: Gap: Homomorphic Encryption (HE) for Privacy-Preserving Collaborative Analysis. While multiple stakeholders have identified the need to support privacy-preserving collaborative analysis across clinical settings and health provider networks—scenarios where multiple organizations wish to perform joint computations (e.g., aggregate statistics, machine learning model training, cohort identification) without disclosing individual-level data—the current handbook does not provide guidance on homomorphic encryption techniques as a de-identification mechanism for this use case. Although HE offers a theoretically sound approach by enabling computation on encrypted data without decryption (thus eliminating the need to transmit or share plaintext records), integration of HE into the handbook has not been feasible due to two constraints: (1) External contributor participation: The technical expertise and real-world implementation experience necessary to properly specify HE techniques came primarily from practitioners outside the IHE membership structure, who lack formal standing in the workgroup's governance and decision-making processes. (2) Workgroup resource limitation: The de-identification workgroup lacks dedicated capacity to research, validate, and document HE techniques—including their cryptographic security assumptions, computational overhead, regulatory compliance implications, and practical deployment challenges—at the depth required for a normative contribution to the handbook. Impact of this gap: Organizations seeking to conduct collaborative secondary analysis across multiple health systems currently cannot reference this handbook for guidance on HE-based approaches, forcing them either to pursue ad-hoc implementations without established best practices, to rely on external cryptographic expertise that may not be coordinated with the broader de-identification governance framework, or to accept the alternative of centralizing data in a trusted secure enclave—with corresponding increase in data concentration risk. This limitation particularly affects research consortia, public health agencies conducting multi-site epidemiological studies, and healthcare networks pursuing federated learning initiatives, where neither traditional centralized de-identification nor pseudonymization alone fully satisfies both the privacy requirements and the analytical need for real-time computation on sensitive attributes across organizational boundaries.
 
* #14: [Feature]: Incoporate EU pseudonymization guideline (https://github.com/IHE/ITI.DeIdHandbook/issues/14) 
* Latest comment: The most precise blocker to incorporating the EDPB Guidelines 01/2025 into this handbook is a structural mismatch in the scope of pseudonymization itself. This handbook, following ISO 25237, defines pseudonymization as a process that acts on direct identifiers — replacing them with pseudonyms to preserve record linkage while removing explicit identity. Treatment of quasi-identifiers is a separate, complementary step governed by generalization, suppression, or statistical privacy models such as k-anonymity. The EDPB Guidelines, by contrast, define pseudonymization as a risk-based processing mode whose validity is judged by a single criterion: whether the full record, considering both direct and quasi-identifiers together, can still be attributed to a data subject by actors within the defined pseudonymization domain. Under this framing, quasi-identifier treatment is not a parallel activity — it is an intrinsic sub-step of the pseudonymizing transformation itself (§84, §3.1.3.2). As a result, data that qualifies as pseudonymized under the handbook's technical definition may not satisfy the EDPB standard if residual quasi-identifiers remain exploitable within the processing context. Aligning the two would require dismantling the handbook's separation between pseudonymization and quasi-identifier techniques — a reorganization that would conflict with the jurisdiction-neutral, technique-oriented architecture the handbook is built on, and would impose GDPR-specific legal constructs (controller obligations, pseudonymization domain, Art. 4(5) compliance) onto a framework intentionally designed to apply across HIPAA, PIPL, ISO, and NIST contexts.
 

#### Closed Issues

None

