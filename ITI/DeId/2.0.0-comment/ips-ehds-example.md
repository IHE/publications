# IPS EHDS2 - De-Identification Handbook v2.0.0-comment

* [**Table of Contents**](toc.md)
* **IPS EHDS2**

## IPS EHDS2

### Purpose, Scope, and Overview

This exemplar demonstrates how the IHE De-Identification Handbook’s process framework is applied a fictitious epidemiologic example that conforms to the secondary use requirements defined by the EHDS2. This example leverages the International Patient Summary (IPS) and the Vital Records Death Reporting (VRDR) profiles for conveying study data content for this secondary-use scenario. It serves as a concise de-identification example: defining purpose, recipients, multi-stage process, risk thresholds, and element-by-element treatment to preserve research utility while protecting privacy. See the methodology overview in [Process](process.md).

### Context Analysis

#### Purpose of collecting data

The permitted purpose for this example is Public Interest research in Public/Occupational Health to study co-morbidities, mortality, occupational risks, and treatment effects. The dataset must be minimized and de-identified to preserve utility (longitudinal trends, outcomes, medication impacts) while controlling re-identification risk per permit conditions.

The region is under threat of outbreak for a novel virus causing influenza-like-symptoms. An approved public health monitoring program wishes to review primary health information from across multiple jurisdictions for impacts of co-morbidities, mortality rates, and occupational health risks. The study also intends to review the population health impact for medication treatments, including vaccination. The purpose of the research request reflects a permitted purpose of use, Public Interest in the area of Public, Occupational Health. Data for this study represents categories from Healthcare, Medicinal products, Areas of Public Health, Areas of Occupational Health, and possibly Serious cross-border threats.

##### Permitted Uses

The Health Information Exchange system has defined the following standard permitted uses (Art 53 a-c). The standard healthcare purposes of use specified by ISO TC215 14265: Health Informatics - Classification of purposes for processing personal health information concepts associated with these EHDS2 defined purposes are provided in italicized subbullets:

* Improving the delivery of care, Treatment, Optimization and providing healthcare 
* **Treatment** 
* **Clinical Care Provision to an Individual Subject of Care**
* **Emergency Care Provision to an Individual Subject of Care**
* **Support of Care Activities within the Provider Organization for an Individual Subject of Care**
* **Subject of Care Uses**
 
* **Operations**
* **Health Service Management and Quality Assurance**
 
* Public Interest in the area of Public, Occupational Health and Policy Making and Regulatory Activities, Statistics, national, multinational, and Union level official statistics 
* **Public Health** 
* **Public Health Surveillance, Disease Control**
* **Population Health Management**
* **Public Safety Emergency**
 
 
* Scientific Research contributing to public health or health technology assessment with the aim of benefitting the end users 
* **Research**
 
* Vocational and Higher Education Teaching Activities 
* **Education**
 

##### Uses NOT Permitted

The Health Information Exchange system has define the following standard are not permitted uses:

* carrying out advertising or marketing activities; 
* **Market Studies**
 

No corresponding purpose of use is defined by EHDS2 as either permitted or not permitted, so the assumption is the following ISO-defined standard classifications of use purposes are not permitted uses:

* **Legal Procedure**
* **Enabling the payment of care provision to an individual subject of care**

Additional regulation purposes from Article 54 not permitted:

* Taking decisions detrimental to a natural person or a group of natural persons based on their electronic health data; in order to qualify as 'decisions' for the purposes of this point, they have to produce legal, social or economic effects or similarly significantly affect those natural persons;
* developing products or services that may harm individuals, public health or society at large, such as illicit drugs, alcoholic beverages, tobacco and nicotine products, weaponry or products or services which are designed or modified in such a way that they create addiction, contravene public order or cause a risk for human health;
* carrying out activities in conflict with ethical provisions laid down in national law.

#### Data recipients

* Researchers granted a Data Permit under HDAB oversight
* HDAB staff and Intermediation entity performing de-identification and release
* Authorized analytics environments (controlled access; data use agreements)

#### Data flow

This data flow implements the methodology’s end-to-end analysis described in [Process → Analyze the context → Data flow](process.md). It maps: source clinical systems → HDAB Intermediation (Stage 2) → controlled recipients, and highlights multi-stage requirements, environments, and constraints.

##### end-to-end data flow

* Before the de-identification processing, EHDS 2 regulations specify that the Health Data User conducts data discovery to identify data that is available for the study, and that an application for a data permit be submitted and approved. The Data Discovery leveraging the HealthDCAT Application Profile (HealthDCAT-AP), a specification developed by the European Commission DG SANTE to fulfill the requirements of Article 77 of Regulation (EU) 2025/327 [[OJ L, 2025/327, 5.3.2025](https://healthdataeu.pages.code.europa.eu/healthdcat-ap/releases/release-5/#bib-oj%20l,%202025/327,%205.3.2025)] establishing the European Health Data Space (EHDS). This determines that the information is available within the HDAB Information Resources, indicating data is available in a standard International Patient Summary (IPS), and mortality data in the Vital Records Death Reporting (IHE VRDR) standard formats as indicated in the conformsTo attribute (see https://healthdataeu.pages.code.europa.eu/healthdcat-ap/releases/release-5/).
* The user submits a Data Access Permit application (drawn from example at: https://data-access.dsa.ec.europa.eu/public/hta/data-access), and requests data access authorization providing [in the Research project-specific information](https://healthdataeu.pages.code.europa.eu/healthdcat-ap/releases/release-5/) section: 
* Information on the type and format of the data requested, indicates International Patient Summary format for the data, indicating the specific [attributes from that standard content needed for the study and applicable](https://data-access.dsa.ec.europa.eu/public/hta/data-access) de-identification methods should be used to preserve sufficient information to fulfill the study.
* The researcher also provides a date range of access needed for a 3-year period.
 
* access justifications are provided indicating the value of the proposed research
* The purpose of use is indicated as Scientific Research
* Data elements requested that are sensitive include de-identification methods to be used that will retain sufficient information for the research study.

The following diagram from the EHDS2 M7.2 Draft guideline on data minimisation, pseudonymisation, anonymisation and synthetic data depicts the EHDS user journey for the full process, highlighting the areas within the process that address data minimization, pseudonymization and anonymization:

**Figure: EHDS User Journey**
Once a Data Permit is granted, the third phase, Data Preparation, begins. The HDAB prepares the data set according to the permit content and de-identification to be applied. The EHDS2 M7.2 Draft guideline on data minimisation, pseudonymisation, anonymisation and synthetic data depicts a High-level architecture for safe disclosure of anonymized data, processing results, and synthetic data:

### Residual Risks and Controls

#### Data Source

* Clinical sources: IPS-conformant EHR exports (FHIR R4) from provider organizations across jurisdictions; scoped to Patient demographics, Problems, Procedures, Medications, Allergies, Results, Immunizations, and relevant social/pregnancy history needed for the public/occupational health purpose.
* Vital records: VRDR mortality data from civil registries, limited to attributes necessary for surveillance (e.g., death date, cause categories, age bands, residence generalization).
* Agreements: Source data use agreements and HDAB permit terms define allowable elements, pre-release minimization, and any source-side pseudonymization.

#### Data Environments

* Landing zone: Secure HDAB intake environment receiving permitted data from sources; access is restricted and audited.
* Processing zone: HDAB Intermediation environment applying approved minimization, generalization, pseudonymization/anonymization, and outlier suppression according to the permit and risk model.
* Analysis zone: Authorized recipient environments (controlled access or enclave) where researchers analyze de-identified data under data use agreements; outbound sharing is prohibited.
* Transfer controls: Encrypted transport, authenticated endpoints, and governance monitoring across zones to manage context risk.

#### Multi-stage Placement

* Stage 1 (at sources or by HDAB with source access): Basic minimization and, where applicable, reversible pseudonymization to safely transfer data to HDAB; direct identifiers removed or replaced per source/HDAB capability.
* Stage 2 (HDAB Intermediation): Advanced de-identification (irreversible pseudonymization, date shifting, generalization, suppression) with quantitative/qualitative risk assessment to meet the defined threshold.
* Stage 3 (recipients): Verification that received datasets meet permit-specified privacy level; usage confined to approved analyses in controlled environments with no re-identification attempts.

#### Regulatory Constraints

* The HDAB data access application management process is primarily set out in Articles 67–69 of the EHDS regulation, which define the procedural context that any organisational or technical solution for secondary use data applications must align with. Articles 67 and 69 includes the requirements for the common application forms for data access applications and data requests, respectively, to be used by applicants, and which provides the essential information for the processing of applications. Article 68 governs the issuance of data permits and the associated obligations of HDABs, whereas Article 69 provides similar provisions for data requests.
* The secondary use of electronic health data is based on pseudonymised or anonymised data, in order to preclude the identification of the data subjects (Recital 53 in the EHDS regulation)
* Data anonymisation, pseudonymisation, and linkage techniques are addressed in M7.2 Technical specification for Health Data Access Bodies on data minimisation and de-identification, and M7.5 Guideline for Health Data Access Bodies on linkage of health datasets.

#### Outcome & Classification

Released dataset classification: Irreversibly Pseudonymized Data for non-public controlled sharing, meeting average risk ≤ 0.075 with safeguards. Residual risks are managed via suppression/generalization and contractual controls; utility confirmed for population metrics and longitudinal trends.

### Data Assessment

#### Data Content

The Dataset is primarily structured clinical data from IPS (FHIR R4) and mortality attributes from VRDR (FHIR R4). It is longitudinal (multiple records per subject across time), minimizes free text (procedure descriptions removed), excludes imaging, and contains no binary device logs. Semi-structured risks (filenames, metadata) are minimized by standardized export and HDAB processing.

Policy for secondary use includes data minimisation for the use of secondary health data. This includes limiting the amount, type, and granularity of data during data preparation. The application for data access includes a request for the following data and de-identification methods:

##### Patient

* Pseudonymized name
* Patient location is important to the study. Address locations generalized to the initial 3-digits of the postal code for data minimization
* Administrative gender is an important metric in the study and will be included
* Date of birth will be used to determine and convey a generalized agegroup. The Date of birth, if included, will be Synthetic Data applied by date shifting within age-group breakdown
* Preferred language will be omitted for data-minimization
* Patient identifier sent as a pseudonymized identifier that is applied to the same patient over time
* Insurance information will be omitted for data-minimization
* Given the potential for identifying health risks to come subjects of care, the data is to be reversibly pseudonymized to support tracking of patient care related to the event across health care facilities and settings.

##### Clinical Content

**Problems**

* Problems will be key to determining primary conditions, symptoms, co-morbidities, and clinical outcomes.
* Conditions will be reviewed for potential identifiable outliers for suppression.

**Procedures**

* Procedures will be reviewed for interventions and comorbidities
* Procedures will be reviewed for potential identifiable outliers for suppression.

**Medications**

* Medications are needed to identify treatment and contraindication impact
* Dates associated with medications are relative to incident and treatment dates. Data is collected but protected by data-shifting the study records

**Allergies**

* Other attributes associated with Allergies and intolerances are removed for data-minimization
* Allergies and intolerances will support clinical outcome measures 
* Allergy Agent
* Onset date is needed relative to incident and treatment dates. Data is collected but protected by data-shifting the study records
* Reaction
* Other attributes associated with Allergies and intolerances are removed for data-minimization
 

**Results**

* Observation resulted is needed to inform the detection of infectious agents and clinical metrics
* Observation value is needed for metrics
* Observation date is needed relative to incident and treatment dates. Data is collected but protected by data-shifting the study records
* Other attributes associated with Results are removed for data minimization

**Immunizations**

* Vaccine for type of disease is needed to assess treatments and measure mitigation results
* Date of immunization is needed relative to incident and treatment dates. Data is collected but protected by data-shifting the study records
* Other attributes associated with Immunizations are removed for data minimization

**Medical Devices**

* Medical Devices are not needed for the study 
* This section may be empty with a data absent reason of 'masked'
 

**Social History**

* Social History lifestyle factor information is needed to measure potential environmental impact including 
* Occupation either usual occupation or current occupation is needed to identify incidents and to help identify risk factors associated with identified occupations
* Industry either usual industry or current industry is needed to identify incidents and to help identify risk factors associated with identified occupations
 
* Occupation and Industry will be reviewed for outliers and suppressed
* All other attributes associated with Social History are removed for data minimization

**Pregnancy History**

* Pregnancy status pregnancy information is needed for the study to review potential impact of the incident on pregnancy
* Estimated Delivery date is needed relative to incident and treatment dates. Data is collected but protected by data-shifting the study records
* Other attributes associated with Pregnancy History are removed for data minimization

##### Death Record Content

* Mortality data is available through vital records offices. The mortality data will include: 
* Pseudonymized name
* Pseudonymized identifier
* Date of death is needed relative to incident and treatment dates. Data is collected but protected by data-shifting the study records
* Cause of death
* All other mortality data is omitted for data-minimization
* Residence generalization aligned with the residence identified by the health record
 
* The application is reviewed and a Data Access permit is granted
* The Health Data Access Body (HDAB) uses an Intermediation entity for pseudonymizaton, and data preparation to prepare the data using approved anonymization, pseudonymization, generalization, suppression, and randomization methods according to the permit.
* A second pass removes potentially identifying outlier data from the dataset for privacy protection. While the identification of outliers is not required by the EHDS regulations, the HDAB performs this analysis to optimize privacy protection before releasing the data set.

##### Data subject

Population comprises patients across multiple jurisdictions potentially affected by an influenza-like outbreak, including general clinical populations, occupational cohorts, and pregnant individuals. Key characteristics: broad age range with age-group generalization; diverse geographies with postal code generalization; mixed gender distribution; inclusion of sensitive clinical conditions (Problems, Immunizations, Mortality) requiring controlled handling.

##### Data type

Distinct types include structured records (IPS sections: Patient, Problems, Procedures, Medications, Allergies, Results, Immunizations, Social/Pregnancy History) and structured mortality data (VRDR). Auxiliary information that can hide identifiers (file names, directory paths, embedded metadata) is excluded or standardized in HDAB pipelines; provenance is retained separately for audit.

##### Data attribute type

* Direct Identifiers (DI): Patient Name, Telecom, Patient ID, Mortality Name/Identifier; removed or pseudonymized per table.
* Quasi-Identifiers (QI): Date of Birth, Deceased date, postal code, onset/observation dates, occupation/industry, pregnancy status, cause of death; generalized, date-shifted, or outlier-suppressed.
* Sensitive Attributes (SA): diagnoses, results values, medications; preserved with linkage protections to prevent singling out; free text minimized.
* Non-Identifiers (NI): many codes and categorical values (e.g., product code, agent categories) that do not identify individuals on their own; preserved when safe.

##### Dataset properties

* Age of data: within permit window (requested 3-year period); more recent data handled with conservative thresholds.
* Number of subjects: potentially large multi-jurisdictional cohort; supports k-anonymity.
* Volume: moderate to large; processed centrally by HDAB with offline terminology.
* Data quality: standardized IPS/VRDR coding; free text minimized to reduce identifier leakage; longitudinal consistency maintained via pseudonymization.

### Goals and Thresholds

#### General Goals

* Prevent Identification: remove or transform DIs and reduce QI combinability.
* Control Risk: meet non-public average thresholds with outlier protections.
* Preserve Utility: maintain longitudinal and outcomes analyses for permitted research.

#### Determine Specific Goals

* Entities: patients (primary), providers/facilities (as needed to avoid indirect identification).
* All unspecified IPS data elements are removed for data minimization.
* Identifiability target: Irreversibly Pseudonymized Data (see [Concepts](concepts.md#Identifiability)).
* Risk threshold: Non-public average risk ≤ 0.075, with outlier protections (see [Process → Determine goals](process.md)).
* Rationale: controlled sharing via permits; medium attack possibility and impact; sensitive health data.
* Element-level specification (Data Elements)

Data Types: The IPS format requested contains primarily structured data with some attributes containing textual data content. There are no Medical imaging data, Bio-signal data, Genetic data, Textual data, or Multi-modal data. Available to this research study through the IPS structured format.

This implements the element-by-element de-identification design as defined in [Process](process.md). The `Identifier Type` (DI/QI/NI) classification and `Handling/Notes` capture the selected transformations for each data element available in the source IPS and VRDR standardized content.

**Table: Data Element Handling/Notes**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Patient | Patient Name | Structured | Direct Identifier | Reversibly pseudonymized (name) |
| Patient | ID | Structured | Direct Identifier | Reversibly pseudonymized (identifier) |
| Patient | Date of Birth | Structured | Quasi-identifier | Synthetic data via date shifting within age-group breakdown |
| Patient | Gender | Structured | Quasi-identifier | Included; important study metric |
| Patient | Telecom | Structured | Direct Identifier | Omitted for data minimization |
| Patient | Deceased indicator | Structured | Quasi-identifier | Included |
| Patient | Deceased date | Structured | Quasi-identifier | Synthetic data via date shifting relative to shifted date of birth |
| Patient | Patient address | Structured | Quasi-identifier | Generalize to first 3 digits of postal code |
| Patient | Preferred language | Structured | Quasi-identifier | Not requested; omitted for data minimization |
| Patient | General Practitioner | Structured | Quasi-identifier | Omitted for data minimization |
| Patient | Insurance | Structured | Quasi-identifier | Omitted for data minimization |
| Problems | Problem Type | Structured | Non-identifying | Unchanged |
| Problems | Diagnosis | Structured | Quasi-identifier | Reviewed for potential identifiable outliers for suppression |
| Problems | Severity | Structured | Non-identifying | Unchanged |
| Problems | Onset Date | Structured | Quasi-identifier | Subject to date shifting relative to shifted birth date |
| Problems | Problem Status | Structured | Non-identifying | Omitted for data minimization |
| Problems | Specialist Contact | Structured | Quasi-identifier | Omitted for data minimization |
| Procedures | Procedure code | Structured | Non-identifying | Unchanged |
| Procedures | Procedure description | Textual | Quasi-identifier | Omitted due to potential free-text privacy issues |
| Procedures | Body site | Structured | Non-identifying | Unchanged |
| Procedures | Procedure date | Structured | Quasi-identifier | Subject to date shifting relative to shifted birth date |
| Medication Summary | Product code | Structured | Non-identifying | Unchanged |
| Medication Summary | Product common name and strength | Textual | Non-identifying | Unchanged if known; coded product code not required |
| Medication Summary | Active ingredient substance code | Structured | Non-identifying | Unchanged |
| Medication Summary | Active ingredient strength | Structured | Non-identifying | Unchanged |
| Medication Summary | Period of medication use | Structured | Quasi-identifier | Subject to date shifting relative to shifted birth date |
| Medication Summary | Route of administration | Structured | Non-identifying | Not requested; omitted for data minimization |
| Medication Summary | Dose quantity | Structured | Non-identifying | Unchanged |
| Medication Summary | Dose frequency | Structured | Non-identifying | Unchanged |
| Allergies/Intolerances | Clinical status | Structured | Non-identifying | Unchanged |
| Allergies/Intolerances | Onset date | Structured | Quasi-identifier | Subject to date shifting relative to shifted birth date |
| Allergies/Intolerances | End date | Structured | Quasi-identifier | Subject to date shifting relative to shifted birth date |
| Allergies/Intolerances | Criticality | Structured | Non-identifying | Unchanged |
| Allergies/Intolerances | Certainty | Structured | Non-identifying | Unchanged |
| Allergies/Intolerances | Type of propensity | Structured | Non-identifying | Unchanged |
| Allergies/Intolerances | Diagnosis | Structured | Quasi-identifier | Omitted for data minimization (outlier risk) |
| Allergies/Intolerances | Reaction manifestation | Structured | Non-identifying | Unchanged |
| Allergies/Intolerances | Reaction severity | Structured | Non-identifying | Unchanged |
| Allergies/Intolerances | Agent code | Structured | Non-identifying | Unchanged |
| Allergies/Intolerances | Agent category | Structured | Non-identifying | Unchanged |
| Results | Date of observation | Structured | Quasi-identifier | Subject to date shifting relative to shifted birth date |
| Results | Observation type | Structured | Non-identifying | Unchanged |
| Results | Result description | Textual | Non-identifying | Not requested; omitted for data minimization |
| Results | Result value | Structured | Non-identifying | Unchanged |
| Results | Observation result | Structured | Non-identifying | Unchanged |
| Results | Performer | Structured | Non-identifying | Omitted for data minimization |
| Results | Observer | Structured | Non-identifying | Omitted for data minimization |
| Immunizations | Vaccine (type of disease) | Structured | Non-identifying | Unchanged |
| Immunizations | Date of immunization | Structured | Quasi-identifier | Subject to date shifting relative to shifted birth date |
| Immunizations | Number in series of doses | Structured | Non-identifying | Unchanged |
| Immunizations | Target disease | Structured | Non-identifying | Omitted for data minimization |
| Immunizations | Product name | Textual | Non-identifying | Omitted for data minimization |
| Immunizations | Product administration | Structured | Non-identifying | Omitted for data minimization |
| Immunizations | Performer | Structured | Non-identifying | Omitted for data minimization |
| Immunizations | Route of administration | Structured | Non-identifying | Omitted for data minimization |
| Social History | Occupation | Structured | Quasi-identifier | Subject to date shifting relative to shifted birth date; review for identifiable outliers |
| Social History | Industry | Structured | Quasi-identifier | Subject to date shifting relative to shifted birth date; review for identifiable outliers |
| Pregnancy History | Pregnancy status | Structured | Non-identifying | Unchanged |
| Pregnancy History | Estimated delivery date | Structured | Quasi-identifier | Subject to date shifting relative to shifted birth date |
| Medical Devices | Device data required | Structured | Non-identifying | Not needed for the study; data absent reason marked as 'masked' |
| Mortality | Name | Structured | Direct Identifier | Reversibly pseudonymized (name) |
| Mortality | Identifier | Structured | Direct Identifier | Reversibly pseudonymized (identifier) |
| Mortality | Date of death | Structured | Quasi-identifier | Synthetic data via date shifting within age-group breakdown |
| Mortality | Cause of death | Structured | Quasi-identifier | Reviewed for potential identifiable outliers for suppression |

### Risk Assessment

#### Risk Targets and Qualitative Evaluation

Direct identifiers (DI) in IPS/VRDR are removed or pseudonymized prior to release:

* Patient: `Patient.name`, `Patient.telecom`, and local `Patient.identifier` are pseudonymized (reversible at source if operationally required; irreversible within HDAB Intermediation for release). `Patient.address` is not de-identified in Stage 1, and is generalized (e.g., to 3-digit postal code) in Stage 2.
* Mortality: `VRDR.name` and `VRDR.identifier` are pseudonymized; `VRDR.dateOfDeath` is date-shifted within age-band policy. Decedent address (`Patient.address` in the VRDR document) is generalized in Stage 2.
* Performer/Provider references and free-text fields (e.g., `Procedure.description`, `Observation.note`) are omitted to avoid latent identifiers.

Quasi-identifiers (QI) intentionally retained for utility include: age group (derived from `Patient.birthDate`), 3-digit postal code (from `Patient.address`), `Patient.gender`, occupation and industry (Social History), clinically relevant event dates (onset, procedure, immunization, observation) after controlled date shifting, pregnancy status, and cause-of-death categories. Sensitive attributes (SA) such as diagnoses, result values, medications are preserved but protected by linkage controls and outlier suppression.

Given remaining QIs, qualitative classification alone is insufficient. After transformations, the target qualitative state is Irreversibly Pseudonymized Data suitable for non-public controlled sharing, pending quantitative risk confirmation.

#### Risk Targets and Quantitative Evaluation

Apply k-anonymity to the structured IPS/VRDR release using project-specific QIs:

* AgeBand (derived from `Patient.birthDate` → age groups)
* Postal3 (first 3 digits from `Patient.address.postalCode`)
* Gender (`Patient.gender`)
* OccupationCategory, IndustryCategory (from Social History)
* EventDateBuckets (month-level buckets for shifted dates: `Condition.onsetDateTime`, `Procedure.performed[x]`, `Immunization.occurrence[x]`, `Observation.effective[x]`)

Compute equivalence classes on the tuple (AgeBand, Postal3, Gender, OccupationCategory, IndustryCategory, EventDateBuckets). For VRDR, use (AgeBand, Postal3, Gender, DeathMonthBucket, CauseCategory) with cause-of-death aggregated to broad categories to avoid singling out.

Compare overall risk to threshold: enforce average risk ≤ 0.075 while controlling outliers by generalizing buckets (e.g., widen age bands, aggregate occupations/industries, coarsen date buckets) or suppressing small classes. As an additional safeguard, cap maximum risk by ensuring minimum class size (e.g., f ≥ 20) for released groups to keep θ ≤ 0.05 where required for sensitive subsets.

For aggregate publication, apply Differential Privacy to counts/rates using a strict ε consistent with context risk; document privacy budgets and composition across queries.

##### Calculating Data Risk

Use per-record risk θᵢ = 1/fᵢ with class size fᵢ; compute maximum risk R_{d,b} and average risk R_{d,c} across classes; select R_{d,c} for non-public sharing and control high-risk outliers.

##### Calculating Context Risk

Estimate R_c = max(T1 deliberate, T2 inadvertent, T3 breach) per [Process](process.md). For permit-based controlled sharing, R_c < 1 due to contractual and technical controls; document the rationale and safeguards.

##### Calculating Overall Risk

Compute R = R_d × R_c for k-anonymity-based releases and confirm R meets the threshold; for DP aggregates, select ε aligned to context risk and enforce privacy budgets consistently.

### Attack Modeling

##### Select Data Sharing Model

Controlled Public Sharing (Data Use Agreement) governed by HDAB permits; enclave access may be used for higher sensitivity analyses.

##### Determine Attack Type

Anticipate identity, membership, and attribute attacks with background knowledge; mitigate via generalization, date shifting, and outlier suppression.

##### Identify Data Privacy Model

Primary: k-anonymity for structured IPS releases; Optional: Differential Privacy for published aggregate statistics.

### Implementation and Validation

#### Multi-stage De-identification Design

* Stage 1 (Preliminary, source/early pipeline): remove obvious direct identifiers; apply reversible pseudonyms where operationally required; prepare generalization plans (e.g., 3-digit postal code).


  **Stage 1 Element-by-element treatments**


  **Stage 1: Element-by-element treatments**
* Stage 2 (Advanced, HDAB Intermediation): irreversible pseudonymization; date shifting relative to birth/incident; generalization/suppression of quasi-identifiers; outlier review; quantitative risk check (equivalence classes); ensure semantic validity.


  **Stage 2 Element-by-element treatments**


  **Stage 2: Element-by-element treatments**
* Stage 3 (Recipient Verification): recipient-side verification of risk level and constraints; use enclave or controlled environments when appropriate.

See [Process → Multi-stage design](process.md).

#### Governance & Controls

* Access control: least privilege; roles for policy, execution, supervision.
* Secrets management: salts, random seeds, and mapping tables stored in secure vaults; limited access.
* Secure transfer + encryption: SFTP/HTTPS; AES-256 at rest; auditable provenance.
* Documentation: retain element-level specification, scripts/config, validation reports (see [Process → Governance](process.md)).

##### Process Identifiers

Batch IDs, transformation logs, and audit trails generated during de-identification are maintained and protected. Mapping tables and seeds are segregated with strict access controls.

### Detailed Multi-Stage Placement Examples for IPS and VRDR

#### FHIR IPS Data Element Mappings

The table maps IPS data elements to their FHIR paths and summarizes the applied de-identification method across stages (Stage 1 for direct identifiers; Stage 2 for quasi-identifiers and minimization). Where elements are removed, Data Absent Reason (`masked`) is used per FHIR guidance.

**FHIR IPS Data Element Mappings**

| | | | |
| :--- | :--- | :--- | :--- |
| Patient | Patient Name | Patient.name | Stage 1: pseudonymize; reversable pseudonym |
| Patient | ID | Patient.identifier | Stage 1: pseudonymize; reversable pseudonym |
| Patient | Telecom | Patient.telecom.extension(data-absent-reason) | Stage 1: omit value + DAR masked |
| Patient | Date of Birth | Patient.birthDate | Stage 2: date shift (age-group policy) |
| Patient | Gender | Patient.gender | Included (QI) |
| Patient | Deceased indicator | Patient.deceasedBoolean | Included |
| Patient | Deceased date | Patient.deceasedDateTime | Stage 2: date shift |
| Patient | Address (postal code) | Patient.address[0].postalCode | Stage 2: generalize to 3-digit |
| Patient | Preferred language | Patient.communication.language | Omit (minimization) |
| Patient | General Practitioner | Patient.generalPractitioner.extension(data-absent-reason) | Stage 2: omit value + DAR masked |
| Patient | Insurance | Patient.extension(url='urn:example:insurance') | Omit (minimization) |
| Problems | Problem Type | Condition.category | Included |
| Problems | Diagnosis | Condition.code | Included; outlier review if needed |
| Problems | Severity | Condition.severity | Included |
| Problems | Onset Date | Condition.onsetDateTime | Stage 2: date shift |
| Problems | Problem Status | Condition.clinicalStatus.extension(data-absent-reason) | Stage 2: omit value + DAR masked |
| Problems | Specialist Contact | Condition.asserter.extension(data-absent-reason) | Stage 2: omit value + DAR masked |
| Problems | Verification Status | Condition.verificationStatus | Included |
| Procedures | Procedure code | Procedure.code.coding | Included |
| Procedures | Procedure description | Procedure.code._text.extension(data-absent-reason) | Stage 2: omit text + DAR masked |
| Procedures | Note | Procedure.note.extension(data-absent-reason) | Stage 2: omit value + DAR masked |
| Procedures | Body site | Procedure.bodySite | Included |
| Procedures | Procedure date | Procedure.performedDateTime | Stage 2: date shift |
| Medication Summary | Product code | MedicationStatement.contained(Medication).code | Included |
| Medication Summary | Common name & strength | Medication.code.text; Medication.ingredient.strength | Include when coded; omit free-text if risky |
| Medication Summary | Active ingredient code | Medication.ingredient.itemCodeableConcept | Included |
| Medication Summary | Period of use | MedicationStatement.effectivePeriod | Stage 2: date shift |
| Medication Summary | Route of administration | MedicationStatement.dosage.route.extension(data-absent-reason) | Stage 2: omit value + DAR masked |
| Medication Summary | Dose quantity | MedicationStatement.dosage.doseAndRate[0].doseQuantity | Included |
| Medication Summary | Dose frequency | MedicationStatement.dosage.timing | Included |
| Allergies | Clinical status | AllergyIntolerance.clinicalStatus | Included |
| Allergies | Onset date | AllergyIntolerance.onsetDateTime | Stage 2: date shift |
| Allergies | End date | AllergyIntolerance.lastOccurrence | Stage 2: date shift |
| Allergies | Criticality | AllergyIntolerance.criticality | Included |
| Allergies | Certainty | AllergyIntolerance.verificationStatus | Included |
| Allergies | Type of propensity | AllergyIntolerance.type | Included |
| Allergies | Diagnosis (extension) | AllergyIntolerance.extension(url='urn:example:allergy-diagnosis') | Omit (minimization; outlier risk) |
| Allergies | Reaction manifestation | AllergyIntolerance.reaction.manifestation | Included |
| Allergies | Reaction severity | AllergyIntolerance.reaction.severity | Included |
| Allergies | Agent code | AllergyIntolerance.code | Included |
| Allergies | Agent category | AllergyIntolerance.category | Included |
| Results | Date of observation | Observation.effectiveDateTime | Stage 2: date shift |
| Results | Observation type | Observation.code | Included |
| Results | Result value | Observation.valueQuantity | Included |
| Results | Result description | Observation.note.extension(data-absent-reason) | Stage 2: omit value + DAR masked |
| Results | Performer | Observation.performer.extension(data-absent-reason) | Stage 2: omit value + DAR masked |
| Results | Observer (extension) | Observation.extension(url='urn:example:observer') | Omit (minimization) |
| Immunizations | Vaccine (type of disease) | Immunization.vaccineCode | Included |
| Immunizations | Date of immunization | Immunization.occurrenceDateTime | Stage 2: date shift |
| Immunizations | Number in series | Immunization.protocolApplied.doseNumberPositiveInt | Included |
| Immunizations | Target disease | Immunization.protocolApplied.targetDisease.extension(data-absent-reason) | Stage 2: omit value + DAR masked |
| Immunizations | Product name | Immunization.vaccineCode.text | Omit (minimization) |
| Immunizations | Product administration | Immunization.doseQuantity/site/route.extension(data-absent-reason) | Stage 2: omit value(s) + DAR masked |
| Immunizations | Performer | Immunization.performer | Omit (minimization) |
| Social History | Occupation | Observation(valueString) where code=11341-5 | Include; review outliers; date-shift the observation date |
| Social History | Industry | Observation(valueString) where code=21843-6 | Include; review outliers; date-shift the observation date |
| Pregnancy | Pregnancy status | Observation(valueCodeableConcept) where code=82810-3 | Included |
| Pregnancy | Estimated delivery date | Observation(valueDateTime) where code=11778-8 | Stage 2: date shift |
| Medical Devices | Device data required | DeviceUseStatement.device.extension(data-absent-reason) | Stage 2: omit value + DAR masked |
| Medical Devices | Note | DeviceUseStatement.note | Included (non-identifying) |
| Mortality | Name | Observation.extension(url='urn:example:decedentName').valueHumanName | Stage 1/2: pseudonymize |
| Mortality | Identifier | Observation.identifier | Stage 1/2: pseudonymize |
| Mortality | Date of death | Observation.effectiveDateTime | Stage 2: date shift |
| Mortality | Cause of death | Observation.valueCodeableConcept | Included; outlier review |

##### Example FHIR IPS

###### Original Identified IPS Document Bundle

The following bundle provides an example view of a record that could be in the research cohort for the pandemic patient [Secondary Use Pandemnic IPS Patient Original Identified IPS Document](Bundle-80c516fd-9c84-4924-875b-bf0048979ae1.md). At this stage (0), there have been no alterations to this original record.

**Origional Patient Resource** This is a valid IPS Patient Resource with all known minimum data provided

##### Stage 1 Pseudonymized IPS Document Bundle

The Direct Identifiers in the Patient Resource are assigned a reversible pseudonym and pseudo-identifier. The death data in this example is incorporated based upon the linkage with the VRDR death certificate record, and the birth and dates are shifted according to the approved data access permit. The pseudonymized names are applied throughout the document text sections that reference the patient direct identifiers.

The pseudonymization can be applied before or after the linkage of the IPS with the VRDR death certificate record.

Example view of the Pseudonymized Bundle document for the pandemic patient example [Secondary Use Pandemnic IPS Patient Pseudonymized IPS Document](Bundle-430e32bc-be3e-4c42-a17b-461ea4f402d4.md)

**Stage 1 Pseudonymized Patient Resource** The following bundle provides an example view of the sample patient record after applying pseudonymization. This shows:

* A pseudo-identifier has been applied to the patient resource and replaces the original patient identifier throughout the document.
* A pseudo-name has been applied to the patient resource and replaces the original patient name throughout the document. Note that a pseudo-name is required as content is not permitted to be omitted or replaced with a null flavor in FHIR patient resources.

**Notes:**

* Only direct identifiers are processed in Stage 1 (name, identifier, telecom).
* Redaction: Patient.telecom value removed and marked with data absent reason = "masked".
* Pseudonymization: Patient and Mortality identifiers/names replaced with consistent pseudonyms.
* Security Labels: meta.security added to mark de-identification status.

##### Stage 2 Pseudonymized IPS Document Bundle

The Indirect Identifiers in the Clinical Resources are date-shifted, and content removed according to the data minimization rules approved by the data access permit. Where information is removed, this is indicated by a dataAbsentReason of 'masked' at the data element level (e.g. telecom), and at the section level, emptyReason is set to 'withheld' (e.g. functional status).

The following bundle provides an example view of the sample patient record after applying the approved de-identification methods to the pseudonymized bundle as described in section IPS Data Element Mappings (FHIR). This shows:

* Date shifting throughout the bundle (e.g. dates associated with problems, procedures, medications, immunizations, allergies, etc.)
* The Patient's birthdate has been date-shifted forward by 107 days.
* Data omissions, noting the data is omitted in emptyReason as ‘withheld’ at the section level, and as ‘masked’ in dataAbsentReason at the data element level.

Example view of the Stage 2 Pseudonymized IPS Bundle document for the pandemic patient example [Secondary Use Pandemnic IPS Patient Stage 2 Pseudonymized IPS Document](Bundle-6603561c-2888-4355-9df4-23675f6eb458.md)

**Stage 2 Pseudonymized Patient Resource** The telecom is masked, the address is reduced to the first 3 didgets of the postal code, and the general pratitioner can be seen as masked.

Notes:

* Stage 2 applies quasi-identifier handling: date shifting (relative to birth/incident), postal code generalization (to 3-digits), and removal of requested attributes.
* Data Absent Reason: added on masked elements (e.g., MedicationStatement.dosage.route, Immunization.route/dose/site, DeviceUseStatement.device).
* Security Labels: `meta.security` tags set to `stage2-pseudonymized` for Bundle and resources.
* Redaction & Generalization: provider references and free-text removed where specified; postal code generalized.
* Pseudonymization: irreversible patient and mortality identifiers (`urn:example:psyn2`) while preserving referential integrity.

#### FHIR VRDR Example (Death Certificate Document)

##### VRDR Data Element Mappings (FHIR)

This example shows a minimized VRDR Death Certificate Document Bundle using the VRDR profiles. Only the following data elements are carried forward: Date of Death, Cause of Death, Decedent name, Decedent address, Decedent occupation, and Decedent industry.

| | | | |
| :--- | :--- | :--- | :--- |
| Document | Death Certificate Document | Bundle.meta.profile | VRDR Bundle profile used |
| Document | Death Certificate | Composition.meta.profile | VRDR Composition profile used |
| Decedent | Name | Patient.name | Stage 1: reversible pseudonymization |
| Decedent | Address | Patient.address | Stage 2: generalize |
| Death | Date of death | Observation.valueDateTime where code=81956-5 | Stage 2: date shift (optionally truncate time) |
| Death | Automated underlying cause of death | Observation.valueCodeableConcept where code=80358-5 | Included |
| Social History | Usual occupation | Observation.valueCodeableConcept where code=21843-8 | Included (review outliers) |
| Social History | Usual industry | Observation.component.valueCodeableConcept where component.code=21844-6 | Included (review outliers) |

##### Original Identified VRDR Death Certificate Document Bundle

This example VRDR Death Certificate represents the origional record. [Secondary Use Pandemnic IPS Patient VRDR Death Certificate Document Bundle](Bundle-78f68a27-c439-4cd5-9ca2-ebc882468ade.md)

**Origional Patient Resource** This is a valid VRDR Decedent Resource with all known minimum data provided

##### Pseudonymized VRDR Death Certificate Document Bundle (Stage 1)

The Direct Identifiers in the Patient Resource are assigned a reversible pseudonym and pseudo-identifier. The death data in this example is incorporated based upon the linkage with the VRDR death certificate record, and the birth and dates are shifted according to the approved data access permit. The pseudonymized names are applied throughout the document text sections that reference the patient direct identifiers.

The pseudonymization can be applied before or after the linkage of the IPS with the VRDR death certificate record.

Example view of the Pseudonymized Bundle document for the pandemic patient example VRDR Death Certificate[Secondary Use Pandemnic IPS Patient Stage 1 VRDR Death Certificate Document Bundle](Bundle-e817cefe-a7c4-487a-8116-be23cf865f3f.md)

Notes:

* Stage 1 applies reversible pseudonymization to direct identifiers needed for linkage (decedent name and identifier).
* Decedent address is not de-identified in Stage 1; it is generalized in Stage 2.
* Date of death, cause of death, and usual work elements are carried forward unchanged in Stage 1.

##### Pseudonymized VRDR Death Certificate Document Bundle (Stage 2)

The Indirect Identifiers in the Clinical Resources are date-shifted, and content removed according to the data minimization rules approved by the data access permit. Where information is removed, this is indicated by a dataAbsentReason of 'masked' at the data element level (e.g. telecom), and at the section level, emptyReason is set to 'withheld' (e.g. functional status).

The following bundle provides an example view of the sample patient record after applying the approved de-identification methods to the pseudonymized bundle as described in section IPS Data Element Mappings (FHIR). This shows:

* Date shifting throughout the bundle (e.g. dates associated with problems, procedures, medications, immunizations, allergies, etc.)
* The Patient's birthdate has been date-shifted forward by 107 days.
* Data omissions, noting the data is omitted in emptyReason as ‘withheld’ at the section level, and as ‘masked’ in dataAbsentReason at the data element level.

Example view of the Stage 2 Pseudonymized VRDR Bundle document for the pandemic patient example [Secondary Use Pandemnic IPS Patient Stage 2 VRDR Death Certificate Document Bundle](Bundle-fc7b32fe-13b1-42e9-bca1-ff805587d072.md)

Notes:

* Stage 2 applies quasi-identifier handling: date shifting for date of death (example shown), and generalized address (3-digit postal prefix).
* Identifiers are irreversibly pseudonymized while preserving referential integrity within the bundle.

**Stage 2 Pseudonymized Patient Resource** The telecom is masked, the address is reduced to the first 3 didgets of the postal code, and the general pratitioner can be seen as masked.

### CDA Example

This CDA example mirrors the FHIR IPS sample data and uses CDA-specific masking via `nullFlavor` (e.g., `MSK`) for removed elements.

#### IPS Data Element Mappings (CDA)

The table maps IPS data elements to their CDA paths and summarizes the applied de-identification method across stages (Stage 1 for direct identifiers; Stage 2 for quasi-identifiers and minimization). Where elements are removed, CDA uses nullFlavor = "MSK".

| | | | |
| :--- | :--- | :--- | :--- |
| Patient | Patient Name | ClinicalDocument/recordTarget/patientRole/patient/name | Stage 1: pseudonymize; Stage 2: Reversable pseudonym |
| Patient | ID | ClinicalDocument/recordTarget/patientRole/id | Stage 1: pseudonymize; Stage 2: Reversable pseudonym |
| Patient | Telecom | ClinicalDocument/recordTarget/patientRole/telecom | Stage 1/2: omit value; set nullFlavor='MSK' |
| Patient | Date of Birth | ClinicalDocument/recordTarget/patientRole/patient/birthTime | Stage 2: date shift or mask with age band |
| Patient | Gender | ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode | Included (QI) |
| Patient | Address (postal code) | ClinicalDocument/recordTarget/patientRole/addr/postalCode | Stage 2: generalize to 3-digit |
| Patient | Preferred language | ClinicalDocument/languageCode | Omit (minimization) |
| Patient | General Practitioner | ClinicalDocument/documentationOf/serviceEvent/performer | Omit (minimization) |
| Patient | Insurance | ClinicalDocument/coverage (local extension) | Omit (minimization) |
| Problems | Diagnosis | ClinicalDocument/component/section[code=10154-3]/entry/observation/code | Included |
| Problems | Onset Date | ClinicalDocument/component/section[code=10154-3]/entry/observation/effectiveTime@value | Stage 2: date shift |
| Problems | Problem Status | ClinicalDocument/component/section[code=10154-3]/entry/observation/statusCode | Omit (minimization) |
| Problems | Specialist Contact | ClinicalDocument/component/section[code=10154-3]/entry/author/assignedAuthor | Omit (minimization) |
| Procedures | Procedure code | ClinicalDocument/component/section[Procedures]/entry/procedure/code | Included |
| Procedures | Procedure description | ClinicalDocument/component/section[Procedures]/entry/procedure/text | Stage 2: omit free-text; nullFlavor='MSK' if present |
| Procedures | Body site | ClinicalDocument/component/section[Procedures]/entry/procedure/targetSiteCode | Included |
| Procedures | Procedure date | ClinicalDocument/component/section[Procedures]/entry/procedure/effectiveTime@value | Stage 2: date shift |
| Medication Summary | Product code | ClinicalDocument/component/section[Medications]/entry/substanceAdministration/consumable/manufacturedProduct/code | Included |
| Medication Summary | Common name & strength | ClinicalDocument/component/section[Medications]/entry/substanceAdministration/consumable/manufacturedProduct/code@displayName | Include when coded; omit free-text if risky |
| Medication Summary | Period of use | ClinicalDocument/component/section[Medications]/entry/substanceAdministration/effectiveTime | Stage 2: date shift |
| Medication Summary | Route of administration | ClinicalDocument/component/section[Medications]/entry/substanceAdministration/routeCode | Stage 2: omit value; nullFlavor='MSK' |
| Medication Summary | Dose quantity | ClinicalDocument/component/section[Medications]/entry/substanceAdministration/doseQuantity | Included |
| Medication Summary | Dose frequency | ClinicalDocument/component/section[Medications]/entry/substanceAdministration/entryRelationship/sequenceNumber | Included (if present) |
| Allergies | Clinical status | ClinicalDocument/component/section[code=48765-2]/entry/observation/statusCode | Included |
| Allergies | Onset date | ClinicalDocument/component/section[code=48765-2]/entry/observation/effectiveTime@value | Stage 2: date shift |
| Allergies | End date | ClinicalDocument/component/section[code=48765-2]/entry/observation/effectiveTime/high@value | Stage 2: date shift |
| Allergies | Reaction manifestation | ClinicalDocument/component/section[code=48765-2]/entry/observation/value | Included |
| Results | Date of observation | ClinicalDocument/component/section[Results]/entry/observation/effectiveTime@value | Stage 2: date shift |
| Results | Observation type | ClinicalDocument/component/section[Results]/entry/observation/code | Included |
| Results | Result value | ClinicalDocument/component/section[Results]/entry/observation/value | Included |
| Results | Result description | ClinicalDocument/component/section[Results]/entry/observation/text | Stage 2: omit; nullFlavor='MSK' |
| Results | Performer | ClinicalDocument/component/section[Results]/entry/observation/performer | Omit (minimization) |
| Results | Observer | ClinicalDocument/component/section[Results]/entry/observation/author/assignedAuthor | Omit (minimization) |
| Immunizations | Vaccine (type of disease) | ClinicalDocument/component/section[code=11369-6]/entry/substanceAdministration/consumable/manufacturedProduct/code | Included |
| Immunizations | Date of immunization | ClinicalDocument/component/section[code=11369-6]/entry/substanceAdministration/effectiveTime@value | Stage 2: date shift |
| Immunizations | Product name | ClinicalDocument/component/section[code=11369-6]/entry/substanceAdministration/consumable/manufacturedProduct/code@displayName | Omit (minimization) |
| Immunizations | Product administration | ClinicalDocument/component/section[code=11369-6]/entry/substanceAdministration/doseQuantity/siteCode/routeCode | Stage 2: omit value(s); nullFlavor='MSK' |
| Immunizations | Performer | ClinicalDocument/component/section[code=11369-6]/entry/substanceAdministration/performer | Omit (minimization) |
| Social History | Occupation | ClinicalDocument/component/section[Social History]/entry/observation[code=11341-5]/value@value | Include; review outliers; date-shift observation date |
| Social History | Industry | ClinicalDocument/component/section[Social History]/entry/observation[code=21843-6]/value@value | Include; review outliers; date-shift observation date |
| Pregnancy | Pregnancy status | ClinicalDocument/component/section[Pregnancy]/entry/observation[code=82810-3]/value@code | Included |
| Pregnancy | Estimated delivery date | ClinicalDocument/component/section[Pregnancy]/entry/observation[code=11778-8]/value@value | Stage 2: date shift |
| Medical Devices | Device data required | ClinicalDocument/component/section[Medical Devices]/entry/supply/participant[@typeCode='DEV'] | Not needed; set nullFlavor='MSK' or omit |

#### Original Identified CDA (IPS subset)

The following CDA IPS Document provides an example view of a record that could be in the research cohort for the pandemic patient [CDA EHDS Example Origional IPS](https://drive.google.com/file/d/1FrhpiY3EmOH3j30PlGphTaB4l2m7bpmT/view?usp=drive_link). At this stage (0), there have been no alterations to this original record.

```
  <recordTarget>
    <patientRole>
      <id root="2.16.840.1.113883.3.9143.1.1" extension="ABC1234" />
      <addr>
        <postalCode>3210</postalCode>
      </addr>
      <telecom value="tel:+64-07-850-9900" use="HP" />
      <patient>
        <name>
          <given>Patricia</given>
          <family>JORDANA</family>
        </name>
        <administrativeGenderCode code="F" codeSystem="2.16.840.1.113883.5.1" codeSystemName="AdministrativeGender" displayName="Female" />
        <birthTime value="19960501" />
      </patient>
    </patientRole>
  </recordTarget>

```

#### After Stage 1 (Pseudonymized CDA)

Direct identifiers are removed or pseudonymized; removed elements are marked using `nullFlavor="MSK"`.

The Example view if the [CDA EHDS Example Stage 1](https://drive.google.com/file/d/1EXTM-9ygi0S2DaywF-ub-FoicjMTd5Rw/view?usp=drive_link) IPS Document.

```
  <recordTarget>
    <patientRole>
      <id root="2.16.840.1.113883.3.9143.1.1" extension="PID-7ac6997e"></id>
      <addr>
        <postalCode>3210</postalCode>
      </addr>
      <telecom nullFlavor="NI" />
      <patient>
        <name>
          <given>PSeudoGiven</given>
          <family>PseudoFamily</family>
        </name>
        <administrativeGenderCode code="F" codeSystem="2.16.840.1.113883.5.1" codeSystemName="AdministrativeGender" displayName="Female" />
        <birthTime value="19960501" />
      </patient>
    </patientRole>
  </recordTarget>

```

#### After Stage 2 (Anonymized CDA)

Quasi-identifiers are transformed; removed elements continue to use `nullFlavor="MSK"`. Dates are shifted to match the FHIR Stage 2 example; postalCode generalized to 3 digits.

Notes:

* CDA uses `nullFlavor` (e.g., `MSK`) to indicate masked/removed content, whereas FHIR uses the Data Absent Reason extension.
* Pseudonymized identifiers mirror the FHIR Stage 1/2 examples (`PID-7ac6997e`, `PID-9f8b1ea1`).
* Dates and postal generalization match the FHIR Stage 2 transformations.

The Example view of the [CDA EHDS Example Stage 2](https://drive.google.com/file/d/1ZIY-u2jvSmlfqSVrhbCpJx0704_2qY2R/view?usp=drive_link) IPS Document.

```
  <recordTarget>
    <patientRole>
      <id root="2.16.840.1.113883.3.9143.1.1" extension="PID-7ac6997e"></id>
      <addr>
        <postalCode>321</postalCode>
      </addr>
      <telecom nullFlavor="MSK" />
      <patient>
        <name>
          <given>PSeudoGiven</given>
          <family>PseudoFamily</family>
        </name>
        <administrativeGenderCode code="F" codeSystem="2.16.840.1.113883.5.1" codeSystemName="AdministrativeGender" displayName="Female" />
        <birthTime value="1996">
          <!-- Date-shifted within age-group, birth-date truncated to year-->
        </birthTime>
      </patient>
    </patientRole>
  </recordTarget>

```

