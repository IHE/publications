# Process - De-Identification Handbook v2.0.0-comment

* [**Table of Contents**](toc.md)
* **Process**

## Process

### Overview of process

This handbook is written primarily for **IHE Profile Editors** developing de-identification profiles. These steps can be used to define de-identification requirements that are consistent, testable, and auditable.

De-identification profiles may be authored as **standalone profiles** or defined as a **de-identification component** within another IHE Profile (e.g., Teaching File or Clinical Trial Export (TCE)). In either case, the same end-to-end analysis is needed and should be adapted to the applicable regulatory and legal context (e.g., HIPAA, GDPR, or PIPL).

This handbook chapter provides a common, reusable process framework and reference models (e.g., data sharing models, risk concepts, and benchmark thresholds). It does not, by itself, resolve project-specific requirements or make jurisdiction-specific determinations (for example, legal interpretation, governance policy, or the exact risk targets and measurement approach). Jurisdiction-specific requirements should be resolved either through the applicable IHE Technical Framework Volume 4 jurisdictional extension, or as explicit project-level requirements when no applicable Volume 4 extension exists. Each implementation project should translate the framework into a project-specific requirements set and a documented set of decisions that can be audited.

For profile development, treat the output of these steps as the basis for **common cross-project profile requirements** (assumptions, conformance criteria, and required controls), while making explicit what remains an **implementation responsibility** (project- and jurisdiction-specific decisions).

1. **Analyze the Context**: Clearly define the purpose for collecting the data, who the data recipients will be, and map the end-to-end data flow. This initial analysis frames the entire de-identification strategy.
1. **Data Assessment**: Thoroughly evaluate the data content, including its type, sensitivity, and properties. This step includes attack modeling to understand potential threats and vulnerabilities.
1. **Determine De-identification Goals**: Establish specific, measurable objectives for the de-identification process. This involves deciding which data elements to remove, transform, or retain, ensuring the output remains fit for its intended purpose while balancing privacy risk.
1. **Assess Re-identification Risk**: Conduct both qualitative and quantitative evaluations to measure the risk of data subjects being re-identified. This assessment informs the level of mitigation required.
1. **Design Risk Mitigation and Controls**: Develop a comprehensive mitigation strategy. This includes the technical design of the de-identification process (e.g., algorithms, multi-stage architecture) and the implementation of security policies like access control and data encryption.
1. **Implementation and Validation**: Implement the designed process, which may involve configuring tools or developing new software. The implementation must be rigorously validated with test data to ensure it functions as expected before operational use.
1. **Governance, Monitoring, and Review**: Establish a governance framework with clear roles and responsibilities. Continuously monitor the process in operation, audit for compliance, and periodically review the strategy to adapt to evolving threats and technologies.

> Note on non-public releases: When data is shared with identified recipients (e.g., research partners) it is common and often required to include **contractual controls** (e.g., a Data Use Agreement / Data Sharing Agreement / Data Permit). In this handbook, those controls are treated as part of the overall risk mitigation design and as required **release artifacts** that accompany the dataset.

### Analyze the context

The dataset's context refers to the environment in which the data is stored and transferred. To understand the complete situation, it's essential to analyze the purpose of data collection, the data recipients, and the data flow.

#### Purpose of collecting data

The intended uses of the data determine the extent of de-identification and the acceptable level of risk. The purpose must be clearly and formally documented. This documentation should justify each data element that is needed, which in turn determines what data is preserved (pass-through), what data is removed (redacted), and what data is transformed (e.g., generalized or perturbed).

#### Data recipients

Data recipients are the individuals, groups, or organizations who will use the de-identified data. It is crucial to identify and document all data recipients to understand the data sharing context and associated risks. This analysis should include:

* **Organizational Information**: The formal names of the recipient organizations.
* **Recipient Profiles**: The roles and responsibilities of individuals who will access the data.
* **Relationship to Custodian**: The relationship between the data custodian and the recipients (e.g., internal department, external research partner), as this affects the required contractual and security controls.
* **Background Knowledge**: An assessment of the recipients' background knowledge, which could be used in re-identification attempts.

In addition, for any **non-public** or **controlled** sharing model, define the **recipient onboarding controls**, including whether a **Data Use Agreement (DUA)** (or equivalent data sharing contract) is required and who is responsible for obtaining and storing the executed agreement.

In most organizations, the DUA is how you make “controlled sharing” enforceable. Typical clauses include: permitted purpose; prohibition on re-identification and onward sharing; authorized users; minimum security controls; incident notification; retention and disposal requirements; and audit/attestation expectations. The DUA should be reviewed by appropriate legal/privacy stakeholders for the jurisdiction.

For example, under HIPAA a **Limited Data Set** disclosure requires a data use agreement (see 45 CFR 164.514(e)(4)).

#### Data flow

Describe the end-to-end data flow, from original source to final recipients. A clear data flow diagram helps identify risks at each stage. Key components to analyze include:

* **Data Source**: Where the data originates. Document the source's profile and any existing agreements regarding de-identification.
* **Multi-source integration flow**: If data is collected from multiple sources, document how sources are onboarded, where data is merged, and which controls apply before and after integration.
* **Data Environments**: The physical or virtual locations where data is stored, processed, and transferred. Each environment (e.g., landing zone, processing zone, analysis zone) has its own risk profile based on its infrastructure, access controls, and governance.
* **Multi-stage Requirements**: Identify if the data flow requires de-identification to occur at multiple points, for instance, initial redaction at the source and further pseudonymization by a central team.
* **Regulatory Constraints**: Analyze any domain-specific policies or legal requirements that apply to the data flow, especially concerning cross-border data transfers, and document whether jurisdiction-specific constraints are addressed by applicable Volume 4 extension text or by project-level requirements.

### Data assessment

A thorough assessment of the data itself is a prerequisite for designing an effective de-identification strategy.

#### Data content

The scope of data collection should be limited to the minimum necessary to achieve the defined purpose. Certain data types are inherently more challenging and time-consuming to de-identify and should be given special attention:

* **Longitudinal data**: Data collected over time for the same subjects.
* **Free text data**: Unstructured text like clinical notes or comments.
* **Binary data**: Proprietary or complex formats, such as device logs.
* **Imaging data**: DICOM or other image formats that can contain embedded identifiers.
* **Unstructured/Semi-structured data**: Data without a predefined model, like JSON or XML files.

##### Data subject

Describe the characteristics of the data subjects to understand the population and assess re-identification risk. Key characteristics include:

* Age range
* Geographical areas
* Gender distribution
* Medical conditions or other inclusion/exclusion criteria for the dataset.

Also, determine if the data subjects belong to a vulnerable population or if the data is subject to special sensitivity rules (e.g., behavioral health data).

##### Data type

Identify all distinct types of data being collected (e.g., structured records, images, free-text files). It is critical to be exhaustive and capture auxiliary information where identifiers might be hidden, such as:

* File names and directory paths.
* Metadata embedded in files.
* Linked documents, such as case report forms associated with images.

##### Multi-source integration assessment

When data from multiple sources is combined, assess each source independently and the integrated dataset as a whole. The same de-identification process applies, but additional integration checks are needed.

* **Source-specific identifier patterns**: Different sources may expose different direct and quasi-identifiers, including source-specific metadata.
* **Harmonization decisions**: Document schema mappings, code/value harmonization, unit normalization, and time normalization choices.
* **Linkage and de-duplication policy**: Define how records are linked across sources and when de-duplication occurs relative to pseudonymization.
* **Post-integration risk reassessment**: Re-evaluate re-identification risk after integration, since cross-source linkage can create new quasi-identifier combinations.

##### Data attribute type

For each data attribute, perform a classification to understand its potential for re-identification. This is a critical step that informs the entire risk assessment and mitigation design. Attributes are typically classified as:

* **Direct Identifiers (DI)**: Attributes that directly identify an individual (e.g., Name, Social Security Number, Email Address). Their presence implies a 100% re-identification risk. Identification involves checking against standard lists (like the 18 HIPAA identifiers) and using rule-based or expert analysis to find them in less obvious places.
* **Quasi-Identifiers / Indirect Identifiers (QI)**: Attributes that, in combination, can identify an individual (e.g., Date of Birth, ZIP Code, Gender). QIs are typically knowable, distinguishable, and stable over time.
* **Sensitive Attributes (SA)**: Attributes that are not identifying on their own but contain private and sensitive information about an individual (e.g., diagnosis, salary). The goal is often to prevent the linkage of these attributes to an individual.
* **Non-Identifiers (NI)**: Attributes that are not related to a specific individual and cannot be used for re-identification (e.g., device technical parameters, anonymized survey responses).

##### Dataset properties

The properties of the dataset as a whole can influence re-identification risk:

* **Age of data**: Older data may be harder to re-identify from due to changes in individual traits.
* **Number of data subjects**: Larger datasets may present different risks than smaller ones and can be subject to different regulatory scrutiny.
* **Volume of dataset**: The size of the data impacts storage, processing, and transmission methods.
* **Data quality**: Errors and inconsistencies in the data can sometimes offer a degree of protection, though the goal is generally high-quality data for utility.

#### Attack modeling

This involves thinking like an adversary to understand the threats that the de-identification process must protect against.

##### Select data sharing model

The way data is shared determines the level of control and the potential for attack. Common models include:

* **Completely Public Sharing (Release and Forget)**: Data is released publicly with no restrictions. This model carries the highest risk and requires the most stringent de-identification.
* **Controlled Public Sharing (Data Use Agreement)**: Data is shared with specific recipients under a contractual agreement that restricts its use, prohibits re-identification attempts, and forbids further sharing.
* **Enclave Public Sharing (Enclave Model)**: Data is not released directly. Instead, recipients are given access within a secure physical or virtual environment where their queries and actions can be monitored and controlled.

##### Determine attack type

Based on the adversary's goals, attacks can be categorized as:

* **Identity Attack**: Linking a record in the dataset to a specific, known individual. This can be modeled based on the attacker's knowledge: 
* **Prosecutor Risk**: The attacker knows a specific individual is in the dataset.
* **Journalist Risk**: The attacker does not know if a specific individual is in the dataset but wants to find out.
* **Marketer Risk**: The attacker attempts to re-identify as many individuals as possible in the dataset.
 
* **Membership Attack**: Determining whether a specific individual is present in the dataset.
* **Attribute Attack**: Inferring a sensitive attribute about an individual, even if their specific record is not identified.

##### Identify data privacy model

Formal privacy models provide a mathematical framework for measuring and controlling privacy risk. The choice of model is a foundational design decision. Two common models are:

* **k-Anonymity**: Ensures that any individual in the dataset cannot be distinguished from at least k-1 other individuals based on their quasi-identifiers.
* **Differential Privacy**: Adds a carefully calibrated amount of noise to data or query results, ensuring that the presence or absence of any single individual in the dataset has a negligible effect on the output.

### Determine de-identification goals

Goals should balance privacy protection with data utility.

#### General goals

* **Prevent Identification**: Remove or transform direct and indirect identifiers to prevent attackers from re-identifying individuals.
* **Control Risk**: Control re-identification risk to an acceptable level, based on the data sharing model and intended use.
* **Preserve Utility**: Ensure the de-identified data remains as useful as possible for its intended purpose.

#### Determine specific goals

Translate the general goals into concrete, measurable targets for the specific project. To achieve this, a requirements document should be created, addressing the following questions:

Where standards, profiles, or organizational policies define common requirements for a domain or release model, they can be used as starting points. Projects should still explicitly identify and document the project-specific deltas (e.g., intended uses, recipients, jurisdictions, data types, and risk criteria).

* **Project Scope and Data Needs**: 
* What data must be retained to satisfy the primary needs of the project?
* What are the legal sensitivities that apply? Is the data subject to special rules, such as for behavioral health?
 
* **Risk and Re-identification**: 
* What is the acceptable level of privacy risk? This may vary by use case (e.g., a tumor board review may accept higher risk than a public data release).
* What are the specific threats that need to be protected against?
* Is there a need to re-identify the original patient? If so, what elements are needed for this purpose?
 
* **Project and Data Details**: 
* What general types of entities are being de-identified (e.g., Patients, Providers, Facilities)?
* Are there additional project requirements beyond raw data, such as administrative tracking data?
* Is there a need to maintain clinical time threading? If so, what is the allowable level of error (e.g., time-shifted, fuzzy dates)?
* How accurate must the remaining data elements be? Is it desirable for the data to show no evidence of de-identification?
 
* **Define Acceptable Risk Thresholds**: Set a maximum acceptable re-identification risk level. This threshold is a quantitative measure that defines the boundary between `Irreversibly Pseudonymized Data` and `Anonymous Data`. There is no universal threshold; the appropriate value must be determined by analyzing two key factors: the data sharing model and the potential impact of a privacy invasion.

| | | |
| :--- | :--- | :--- |
| **Public** | High possibility of attack, low impact | Max 0.1 |
|   | High possibility of attack, medium impact | Max 0.075 |
|   | High possibility of attack, high impact | Max 0.05 |
| **Non-public** | Low-med possibility of attack, low-medium impact | Avg 0.1 |
|   | Medium possibility of attack, medium impact | Avg 0.075 |
|   | Medium-high possibility of attack, medium-high impact | Avg 0.05 |

These benchmarks provide a structured framework for decision-making. For specific, high-stakes scenarios like the public release of clinical trial data, regulatory bodies have set their own standards. For example, the [European Medicines Agency (EMA)](references.md#EMA_POLICY_0070) and [Health Canada](references.md#TRIALS_JOURNAL_2020) have established a risk threshold of **0.09**. This aligns with the principles for a public, high-impact release, demonstrating a real-world application of a conservative risk threshold to protect patient privacy.

### Assess re-identification risk

Risk assessment can be both qualitative and quantitative.

#### qualitative evaluation

A qualitative evaluation provides an initial classification of the dataset's identifiability level. This assessment is based on the types of identifiers present in the data after initial transformations and determines if a full quantitative evaluation is necessary. The classification aligns with the levels of identifiability defined in this handbook.

1. **Check for Direct Identifiers**:
* If the dataset contains any direct identifiers (e.g., name, email, SSN), it is classified as **Identified Data**. This data is not de-identified and carries the highest level of risk. The evaluation stops here.

1. **Assess Pseudonymization Method**:
* If direct identifiers have been replaced with pseudonyms but the data controller maintains a linking key (a known, systematic way to re-link), the dataset is classified as **Reversible-Pseudonymized Data**. The evaluation stops here.

1. **Evaluate for Indirect Identifiers**:
* If all direct identifiers have been addressed through irreversible pseudonymization or suppression (for example, in aggregated statistical data), the final qualitative step is to check for the presence of indirect (quasi) identifiers. 
* If the dataset contains **no indirect identifiers**, it can be qualitatively classified as **Anonymous Data**, as there is no information left to single out individuals. The risk is considered negligible.
* If the dataset **does contain indirect identifiers**, a qualitative assessment is insufficient. A full **quantitative evaluation is required** to measure the re-identification risk accurately.
 

#### quantitative evaluation

When a qualitative evaluation determines that a dataset contains indirect (quasi) identifiers, a quantitative evaluation is required to determine its final classification. This process uses objective, statistical methods to calculate a precise overall re-identification risk score. This score is then compared against the project's acceptable risk threshold to determine if the data can be considered **Anonymous Data** or must be treated as **Irreversibly Pseudonymized Data**.

Following the standard risk model described in [(ISO/IEC 27559, 2022)](references.md#ISOIEC27559), identifiability can be conceptualized as the product of the probability of identification given a specific threat and the probability of that threat being realized. That is:

P(identification) = P(identification | threat) × P(threat)

This model provides a valuable framework for understanding the two key components of re-identification risk:

*  

| | |
| :--- | :--- |
| **Data Risk**: The risk inherent in the data itself, corresponding to P(identification | threat), denoted as Rd. |

 
* **Context Risk**: The risk inherent in the data sharing environment, corresponding to P(threat), denoted as Rc.

While this formula provides the conceptual basis, its practical application differs significantly between the primary privacy models:

* For **k-anonymity**, this model is applied directly. A quantitative risk score is calculated where the overall risk (R) is the product of the data risk (Rd) and context risk (Rc).
* For **Differential Privacy**, the model is applied conceptually. The goal is not to calculate a final probability. Instead, differential privacy provides a proactive guarantee that bounds the data risk to a chosen level (ε), and the context risk informs how strict that level needs to be.

The following sections detail how to assess these risks for each model.

##### Calculating data risk

Data risk (Rd) is the probability of re-identification based on the properties of the dataset itself. The specific method for calculating it depends directly on the formal privacy model being used.

****For k-Anonymity and related models:****

When using k-anonymity, data risk is calculated by analyzing the size of the "equivalence classes" (groups of records with identical quasi-identifiers). Common metrics include:

* **Re-identification risk of a single record (θj)**: The probability of a record i being correctly re-identified. This depends on what the attacker is assumed to know:
* **Maximum probability of re-identification (Rbd)**: The maximum probability of re-identification in the data set among all records. Rbd = maxj∈J(θj)
* **Average probability of re-identification (Rcd)**: The proportion of records that can be correctly re-identified on average. This may be appropriate for more controlled sharing models. Rcd = (1 / n) Σj∈J fj θj
* **Proportion of higher risk records (Rad)**: The proportion of records that have a re-identification probability higher than a threshold τ. Rad = (1 / n) Σj∈J fj × I(θj > τ)

The foundational methods for these calculations are detailed in [(El Emam, K. 2013)](references.md#EL_EMAM_GUIDE). The selected metrics Rad, Rbd, Rcd become the value for Rd used in the overall risk calculation. The most challenging aspect of calculating re-identification risk is estimating the population equivalence class size Fj. A practical approach to avoid complex estimation is to use fj (the sample equivalence class size) even when the attacker does not know if the target is in the sample. While this approach overestimates the data risk, it may be acceptable for large dataset releases. However, in healthcare settings with relatively small datasets, simply using fj as a substitute is typically not acceptable due to the excessive conservatism it introduces.

****For Differential Privacy:****

Differential Privacy (DP) takes a different approach. Instead of calculating a post-hoc re-identification risk, DP provides a proactive mathematical guarantee of privacy, quantified by the privacy loss parameter, epsilon (ε).

* **Privacy Guarantee (ε)**: Epsilon measures the maximum privacy "leakage" allowed when a query is performed on the data. A smaller ε provides stronger privacy.
* **Risk Management**: Under the DP model, risk is not calculated as a probability but is managed by setting an appropriate ε value. The choice of ε (the "privacy budget") is the primary means of controlling privacy risk. For example, a project might set a strict ε of 0.1 for highly sensitive data, or a more lenient ε of 1.0 for less sensitive use cases. The definitive guide to the theory and application of ε can be found in [(Dwork & Roth, 2014)](references.md#DWORK_ROTH_DP_BOOK).

While methods exist to relate ε to a probabilistic re-identification risk, they are complex and model-dependent. For the purposes of this handbook, the primary method for managing data risk under DP is the selection and enforcement of the privacy budget (ε).

##### Calculating context risk

Context risk (Rc) assesses the likelihood of a re-identification attempt based on the data sharing environment. Its application differs depending on the chosen privacy model.

****For k-Anonymity and related models:****

The goal is to calculate a specific probability for Rc, which is then used in the overall risk formula (R = Rd × Rc). This probability is estimated as the maximum of three component threats:

R
c= max(T1, T2, T3)

Where:

* **T1**: Probability of a deliberate attack attempt.
* **T2**: Probability of an inadvertent attempt (e.g., accidental discovery).
* **T3**: Probability of a data breach.

For public data releases, Rc is typically assumed to be 1 (100%), reflecting the high likelihood of an attack attempt. For controlled models, these probabilities are estimated based on the security controls, contractual obligations, and the nature of the data recipients. For detailed methodologies on estimating these probabilities, see guidance from sources like [(IPC_ONTARIO, 2016)](references.md#IPC_ONTARIO) and [(El Emam, 2013)](references.md#EL_EMAM_GUIDE).

****For Differential Privacy:****

Context risk is not used to calculate a final number for multiplication. Instead, the assessment of the context directly **informs the selection of the privacy budget (ε)**. The same threat components (T1, T2, T3) are evaluated to justify the choice of ε.

* A **high-risk context** (high T1, T2, or T3), such as a public release, mandates the use of a very small, strict ε to ensure strong privacy guarantees.
* A **low-risk context**, such as a secure enclave for trusted researchers (low T1, T2, and T3), may justify the use of a larger, more lenient ε that preserves greater data utility.

The output of the context risk assessment in a DP model is a documented rationale for the chosen ε value, linking it directly to the environmental and sharing risks.

##### Calculating overall risk

The final step is to determine the overall re-identification risk by combining the data risk and context risk, though the method differs by privacy model.

****For k-Anonymity and related models:****

The overall risk is the product of the data risk (the chosen metric, e.g., Rbd) and the context risk (Rc). This final value is then compared against the project's acceptable risk threshold.

R = R
d× R
c

For example, if the maximum data risk (Rbd) is 0.1 and the context risk for a controlled sharing environment (Rc) is estimated at 0.5, the overall risk would be 0.1 × 0.5 = 0.05. This value would need to be below the project's defined threshold.

****For Differential Privacy:****

With Differential Privacy, the overall risk is not a calculated product. Instead, the context risk (Rc) directly influences the selection of the privacy budget (ε).

* In a high-risk context (e.g., public release, where Rc is high), a very small ε (a strict budget) must be chosen.
* In a lower-risk context (e.g., a secure enclave with trusted researchers, where Rc is low), a larger ε (a more lenient budget) may be justifiable.

The project must document the rationale for how the data sharing context and potential harms informed the choice of ε. The "pass/fail" criterion is whether the implemented system can enforce this chosen ε for all data queries.

### Risk mitigation

This phase involves designing and applying controls to reduce the identified risks to an acceptable level.

#### Multi-stage de-identification design

De-identification is often not a single action but a multi-stage process, especially in complex environments like healthcare. A multi-stage design is necessary to accommodate the practical limitations of data sources and to apply the appropriate level of expertise and technology at each step. While a two-stage process is a common example, a true multi-stage architecture can involve several specialized steps.

##### Justification for a Multi-Stage Approach

A multi-stage approach is often essential for several practical and technical reasons:

* **Limited Expertise at the Source**: Data is often generated in operational environments, such as a hospital clinic, where staff (e.g., doctors, technicians) are experts in their domain but not in data privacy. They cannot be expected to make complex de-identification decisions for all types of identifiers [(Shahid, 2022)](references.md#Shahid_2022).
* **Technical Constraints of Source Systems**: Medical devices and clinical systems (e.g., ultrasound machines, PACS) are designed for clinical care, not advanced data processing. They typically lack the computing power or specialized features required for complex tasks like redacting free-text narratives, removing burnt-in annotations from pixel data, or performing quantitative risk analysis [(Shahid, 2022)](references.md#Shahid_2022).
* **Specialized Processing Needs**: Different types of data require different tools and expertise. For instance, redacting identifiers from free-text clinical notes requires Natural Language Processing (NLP) tools, while removing burnt-in PII from images requires sophisticated image processing capabilities. It is often impractical to house all these capabilities in a single system or stage.
* **Separation of Duties and Risk Management**: A phased approach allows for a clear separation of responsibilities. Initial, basic de-identification can happen at the source to remove the most obvious identifiers, making the data safer for transfer. Subsequent, more rigorous de-identification can then be performed in a centralized, secure environment by specialized teams or automated tools.

This flexible approach allows an organization to create a de-identification pipeline. The process can start at the source and then hand off the partially-processed data to subsequent stages, each designed to handle a specific challenge—such as text, imaging, or structured data—before a final risk assessment is performed.

##### The De-Identification Process as a State Transition

The multi-stage de-identification process can be visualized as a series of state transitions, where data moves from a higher level of identifiability to a lower one. Each transition is achieved by applying specific de-identification techniques, as defined in the [Concepts chapter](concepts.md#Identifiability).

A three-stage model provides a comprehensive example of this workflow:

```
graph TD
    subgraph "Stage 1: Preliminary De-Identification"
        direction LR
        A[Identified Data] -->|Reversible Pseudonymization| B(Reversible-Pseudonymized Data);
    end

    subgraph "Stage 2: Advanced De-Identification"
        direction LR
        B -->|Irreversible Pseudonymization| C(Irreversibly Pseudonymized Data);
        C -->|Anonymization / Negligible Risk| D(Anonymous Data);
    end
    
    subgraph "Stage 3: Recipient Verification"
        direction LR
        D --> E(Recipient Risk Verification);
        C -->|Anonymization / Non-Negligible Risk| E;
    end

    style A fill:#f9f,stroke:#333,stroke-width:2px
    style B fill:#f9f,stroke:#333,stroke-width:2px
    style C fill:#ccf,stroke:#333,stroke-width:2px
    style D fill:#9c9,stroke:#333,stroke-width:2px
    style E fill:#f5f5f5,stroke:#333,stroke-width:2px


```

This diagram illustrates a typical workflow:

1. **Stage 1 (Preliminary De-identification)**: Occurs at the source system (e.g., a hospital). The focus is on basic, often reversible, transformations to remove direct identifiers and make the data safe for internal transfer. The outcome is typically`Reversible-Pseudonymized Data`.
1. **Stage 2 (Advanced De-identification)**: Takes place in a controlled, centralized environment managed by a dedicated team with privacy expertise. Here, advanced techniques (e.g., NLP for text, pixel scrubbing for images, quantitative analysis) are applied to transform the data into`Irreversibly Pseudonymized Data`or fully`Anonymous Data`states.
1. **Stage 3 (Recipient Verification)**: The data is transferred to the data recipient's environment. As a best practice, the recipient should conduct their own risk assessment to verify that the data meets the agreed-upon privacy level before use. This confirms the effectiveness of the de-identification process and manages shared responsibilities.

Beyond this three-stage example, a more granular, multi-stage process might dedicate separate sub-stages within the Advanced phase to handling specific data types, such as a dedicated NLP pipeline for free text or an image processing stage for pixel data, before a final, holistic risk assessment is performed.

##### Design Considerations

When designing a multi-stage process, the following factors must be considered:

* **Data Availability**: Is the entire dataset available upfront, or will data be de-identified as it arrives in a stream? Full dataset knowledge allows for more precise transformations, which is often a characteristic of a centralized processing stage.
* **Intermediaries**: Are intermediary organizations required for legal or process reasons, such as in regulated clinical trials? This naturally creates a multi-stage architecture where different parties perform distinct steps.

##### Pseudonym Requirements

* **Reversibility**: Determine if the pseudonymization needs to be reversible (enabling authorized re-identification) or irreversible. This decision is critical and often defines the boundary between stages. 
* **Reversible Pseudonymization (Stage 1)**: If re-identification is required (e.g., for clinical trials), a secure mapping table or a decryptable key must be maintained separately and under strict access controls. This produces **Reversible-Pseudonymized Data**.
* **Irreversible Pseudonymization (Stage 2+)**: If re-identification is not required, use a one-way cryptographic hash (e.g., SHA-512 with a secret, un-stored salt) to generate pseudonyms. This produces **Irreversibly Pseudonymized Data** or, if combined with other techniques, can lead to **Anonymous Data**.
 
* **Algorithm Selection**: Choose a strong, industry-standard cryptographic algorithm for generating pseudonyms.
* **Trait Changes**: The design should accommodate changes to patient traits over time (e.g., name changes) to ensure consistent pseudonymization.
* **De-duplication**: Ensure that data de-duplication occurs before pseudonymization to avoid assigning multiple pseudonyms to the same individual.
* **Data Utility**: How accurate must the remaining data be? Is it acceptable for the data to show evidence of de-identification, or must it appear pristine?

##### Semantic Considerations

* **Interoperability**: If the data must conform to a standard, redaction or transformation must produce valid values. For example, redacting a mandatory element requires substituting a valid, agreed-upon placeholder.
* **Code System Threats**: Be aware that the use of rare or facility-specific codes can inadvertently identify the data source.

##### Resistance to Re-identification

The design must demonstrate how the chosen techniques will make the data resistant to re-identification. This is often measured by the expected percentage of participants who could be re-identified using established methods, and is a primary goal of later-stage analysis.

**Element-by-Element De-identification Design**

One key element of the design is a listing of how each possible data element in the input data set will be processed. It is not possible to create a single universally appropriate table. Examples like these can act as a starting point for purpose-specific designs.

The [DICOM standard](references.md#DICOM) provides initial starting point tables for commonplace de-identification requirements for imaging results in the DICOM format. These are in [PS 3.15 Annex E](references.md#DICOM-part-15-annex-e), especially Table E.1-1. The DICOM standard is freely available for use, and permission is granted for public and private use of extracts. It is provided in Word format to simplify such use. Note that the DICOM standard identifies private attributes that are claimed to lack personal information; other treatment of private attributes must be part of the design process.

There are also project and other examples available, such as the Biosurveillance Use Case Minimum Data Elements Specification, that can serve as a reference.

#### Transforming Identifiers

This section describes methods for transforming direct and indirect (quasi-)identifiers present in collected personal data. The focus is on reducing linkability and inference risk while preserving required utility for the intended use.

**Method: transforming direct identifiers**

* Goal: remove or replace values that directly identify a person while preserving needed data coherence.
* Canonicalize inputs before transformation: standardize formats (e.g., trim whitespace, lowercase/case-fold, normalize Unicode, unify date/address/email formats) to ensure deterministic and consistent pseudonyms across sources.
* Options: 
* Masking/removal: delete or replace with placeholders when linkage is not required.
* Pseudonymization (recoverable): generate pseudonyms independent of the original values (e.g., random IDs) and maintain a protected linking table for approved re-identification.
* Pseudonymization (cryptographic): derive pseudonyms from the original values using strong encryption or keyed hashing (e.g., HMAC). Enforce key management (separation, rotation, access control). Apply canonicalization of inputs (e.g., trim, lowercase, normalize formats) to ensure deterministic, consistent pseudonyms.
 
* Controls: 
* Keep linking tables and cryptographic material in a secure vault; never co-locate with released data.
* Define a reversibility policy (authorized re-identification) and audit its execution.
* Validate that transformations maintain longitudinal consistency where required.
 

**Method: transforming indirect/quasi-identifiers**

* Goal: reduce linkability and inference risk arising from attributes that can identify individuals in combination.
* Categorical attributes: 
* Generalization: map fine-grained codes to broader categories using defined hierarchies (e.g., diagnosis roll-ups).
* Suppression: remove rare values or rare combinations that create outliers.
* Small-cell suppression policy: define minimum group sizes (e.g., k≥3 or k≥5) and rules for suppressing or aggregating sparse categories to avoid unique or near-unique combinations.
* Permutation: reorder values across records to preserve distributions without record-level truthfulness.
* Blanking and imputing: blank sensitive values and replace with statistically plausible substitutes (ranging from simple to model-based multiple imputation).
 
* Numeric attributes: 
* Top/bottom coding: cap extreme values into open-ended categories (e.g., age 90+).
* Microaggregation: group records into clusters (k≥3) and replace continuous values with cluster averages to balance utility and privacy.
* Generalize small counts: merge sparse categories to increase group sizes and reduce uniqueness.
* Noise addition: add calibrated random noise to continuous values while preserving key statistical properties.
 
* Temporal data: 
* Date shifting: apply a consistent per-person shift to preserve intervals.
* Coarsening: reduce precision (e.g., year or month only) or convert to age and bin (e.g., 5-year bands).
* Normalize time zones and account for daylight saving transitions to avoid unintended drift and inconsistencies across systems.
* Time coarsening/bins: round times (e.g., to hour) or bucket into periods (morning/afternoon/night) when exact times increase risk.
 

**Design and governance checklist**

* Inventory identifiers (direct and quasi-) and document per-element transformations and constraints.
* Align choices to the threat model, intended use, and required data utility.
* Implement key/secret handling and mapping-table protections; segregate duties and monitor access.
* Validate outcomes: quantify risk reduction (e.g., k-anonymity metrics, small-cell checks) and verify consistency constraints.
* Document rationale and residual risks; keep processes auditable and repeatable.
* For differential privacy, account for composition of multiple queries and reuse of privacy budgets; document privacy budget governance.

See the Techniques chapter for detailed examples and considerations: [De-Identifying Identifiers](techniques.md#de-identifying-identifiers).

#### Security & Privacy Policies

Technical de-identification must be supported by strong operational and security policies.

##### Access control

Implement the principle of least privilege, ensuring that personnel only have access to the data necessary to perform their roles. This should be governed by the organization's Human Resource Security Policy.

##### Secrets management

Secrets used in the de-identification process must be managed securely. This includes:

* Passwords for encrypted data
* Salt values for hashing algorithms
* Random seed values for date shifting or other perturbations
* Patient-pseudonym mapping tables

Use a secure vault or password manager and strictly limit access to these secrets.

##### Secure data transfer

Data must be protected in transit. Use secure, approved methods for transferring data, such as:

* Encrypted transfer over a secure network (e.g., SFTP, HTTPS).
* Use of hardware-encrypted storage devices for physical transfers, with passwords shared separately.

##### Release package (what ships with the dataset)

For controlled sharing, the dataset should be released as a **package** that includes both technical artifacts and governance artifacts, such as data permit of EHDS. As a minimum, include:

* The de-identified dataset (and a clear dataset version identifier).
* A data dictionary / schema description (including known limitations and de-identification impacts).
* A **De-identification & Risk Summary** (or equivalent release decision record) documenting the sharing model, thresholds, key transformations applied, residual risk statements, and approvals.
* The **executed Data Use Agreement (DUA)** (or a link/reference to the authoritative executed copy) covering the recipient(s) and the specific dataset version.

The release decision should be treated as incomplete until the recipient has agreed to the DUA terms and the organization has recorded the executed agreement.

**Caution on releasing detailed risk reports:** A full Re-identification Risk Assessment Report may contain information (e.g., rare-category findings, high-risk equivalence classes, or linkage assumptions) that could increase a recipient’s ability to target records. As a default, treat the full report as a **controlled internal record** and provide recipients only the **minimum necessary** transparency (e.g., a summary/attestation and a transformation description) consistent with the sharing model and recipient trust level. If a detailed report must be shared (e.g., for regulator review or a formal independent verification), share a **redacted/sanitized** version.

##### Data encryption

Data must be protected at rest. Use strong, industry-standard encryption algorithms like AES-256 to encrypt datasets before storage or transfer.

##### Data disposal

Unsecure data disposal can lead to breaches. Follow a formal data disposal policy, using tools that perform a secure, multi-pass wipe (e.g., DoD-level wipe) to permanently erase data from media before it is decommissioned.

### Implementation

IHE has profiles, such as the imaging teaching files profile, for some common de-identification situations. DICOM has identified some common intended use requirements and defined de-identification profiles for these situations. In addition, standards bodies, regulators, and national statistical agencies often publish **de-identification guidance** (profiles, checklists, or disclosure-control rules) for particular domains and release models. These materials are useful for defining common cross-project requirements, but they do not remove the need for project-specific decisions. When developing a project-specific de-identification profile or plan, validate any borrowed requirements against the project’s purpose, recipients, and legal/regulatory context.

For IHE Profile Editors, this means a de-identification profile (whether standalone or embedded within another IHE Profile) should normatively define the common requirements it intends to cover, the assumptions it makes about context and recipients, and the conformance criteria it expects implementations to meet.

This document covers the general, high-level de-identification process and design guidance. It does not prescribe detailed organizational procedures, specific software deployments, or staffing models. Established methodologies (e.g., project management and safety risk analysis) should be applied to the deployment of de-identification processes; there is usually no need to invent new, unfamiliar processes for the organization.

### Governance

A strong governance framework is essential for ensuring that the de-identification process is effective, compliant, and maintained over time.

#### General principles

The de-identification program should be founded on principles of accountability, fairness, and transparency, in alignment with the organization's overall data governance and privacy policies.

#### Secure processing environment

De-identification and pre-release validation should be performed in a secure processing environment with defined controls for access, data handling, system hardening, monitoring, and auditability. As a governance baseline in healthcare settings, organizations should align these controls with [(ISO 27799, 2025)](references.md#ISO27799) and applicable legal/regulatory requirements. For multi-source data collection, governance should also require documented source onboarding criteria, provenance tracking, and auditable integration/harmonization decisions.

#### Role responsibilities and people management

Clearly define roles and responsibilities to ensure accountability. Key roles often include:

* **Policy Manager**: A team (often including privacy, legal, and IT experts) responsible for setting the de-identification policies and standards.
* **Executor**: A dedicated, independent team responsible for carrying out the de-identification process.
* **Supervisor**: A role (often held by a Privacy Officer) responsible for auditing and ensuring compliance with the policies.

All personnel involved must receive appropriate training on data handling and their specific responsibilities.

#### Validate and approve

##### Design Validation

The design should be validated before it is fully implemented. Validation should focus on confirming that identified project risks are either reduced or identified as protection requirements. This must include risks related to overall project objectives, risks to individual patient privacy, and risks of non-compliance with applicable policy. The validation review may need to include stakeholders such as an Institutional Review Board (IRB).

The design validation phase consists of three steps:

1. **Reviewing the input data**to manually confirm that the field-level algorithm selections are appropriate and all input data elements are addressed. This often involves manually examining a random selection of input data records.
1. **Reviewing a prototype of the post-processed data**, which may be manually created or adapted.
1. **Validating that the results will meet the project requirements**.

A best practice is to identify a small subset of the project data (or a very similar dataset) for this review. You can write test scripts or manually process this data using the anticipated algorithms and then provide the processed data to the end-user to confirm it meets their expectations. As should be apparent, the more data that can be removed, the easier the validation phase and subsequent steps become, and the lower the risks.

##### Implementation Validation

After the process is implemented, it must be validated with real data in the operational environment. This validation is part of any healthcare system deployment and existing processes should apply.

De-identification adds one extra element: an operational validation using a subset of real data should be performed. This is very similar to the initial design validation but uses the operational system processes, staff, and software.

#### Monitor and audit

De-identification is not a one-time activity. The environment is a continuously moving target, as re-identification algorithms improve and new public datasets become available that could be linked. Computer and storage capabilities increase rapidly; for example, genetic data that was once too costly to use for identification is now usable because the cost of storage and computing has plummeted. Previously private information is increasingly available for sale, and you can now track a person’s location from cell phone records to match a person’s ID to healthcare provider visits.

One famous example of this is the analysis by Latanya Sweeney from CMU, who used just three data points (Date of Birth, current ZIP Code, and Sex) to re-identify a high percentage of individuals in a dataset. An example of the impact of changing technology is the evaluation of risks from the unrestricted publication of raw genetic data by Erlich and Narayanan.

Therefore, the process must be continuously monitored and periodically audited. A re-evaluation of risk should be triggered by any significant change in the data context or on a regular schedule.

#### Documentation and Record Keeping

Maintain thorough documentation of the entire process for accountability, auditing, and compliance. Essential records include:

* The initial service request and data use case description.
* The full Re-identification Risk Assessment Report (controlled internal record).
* Any external-facing De-identification & Risk Summary / attestation provided to recipients (including what was redacted and why, if applicable).
* The element-by-element de-identification design specification.
* Scripts and configuration parameters used for the transformation.
* Executed Data Use Agreements (DUAs) / data sharing agreements for each recipient (or a controlled reference to where they are stored).
* Records of all data transfers, access, and disposal.
* Validation and approval reports.

#### Security Incident management

Follow the organization's established security incident management policy to respond to any suspected or actual data breach or privacy incident.

