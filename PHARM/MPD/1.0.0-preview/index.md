
The IHE MPD profile defines global data exchange specifications for medication prescription and dispense, in different settings and compatible with different workflows and jurisdictions.

The main goals of this Profile are:  

* Support implementers of Pharmacy systems - simple or complex, local, national or cross-border.  
* Provide common specifications for systems implementing or migrating to FHIR from previous standards, like HL7 v2 or HL7 CDA.  
* Support vendors of software in allowing their software to support all the use cases involving Medication Prescription and Dispense while retaining a simple, modular interoperability framework that is less costly to implement and maintain.


## Overview

The MPD Profile describes 
* actors and transactions for creating, updating, searching and reading prescriptions and any other types of medication orders;
* actors and transactions for creating, updating, searching and  dispense reports, as well as consulting them;
* core concepts that are impactful to these specifications or to their use



## Organization of This Guide 

### Volume 1: Use Cases and Standards

This section delves into functional aspects, detailing various use cases, and standardizing them for a global perspective.

- **Prescriptions**: Types and content of prescriptions.
- **Order Grouping**: Grouping of orders with and without interdependencies.
- **Ordering Workflows**: Common workflow aspects for medication ordering, considering approval, review, etc. with allowances for jurisdiction-specific requirements.

### Volume 2: Transactions

This technical section focuses on the technical data exchange, defining each of the transactions - their triggers, expected results, and semantics.

### Volume 3: Content and Terminology

Volume 3 describes data structures and terminology supporting this specification.

- **Medication Resource Definition**: A common data structure to represent any medication.
- **Terminologies**: Common terminologies for he product and its attributes.

### Related work:


#### HL7 Europe and European specifications
The IHE MPD Work was initiated based on the existing IHE profiles and anticipating a FHIR implementation, but has been decisively supported by HL7 Europe, who has worked on [related specifications](http://hl7.eu/fhir/mpd), which are related to past and ongoing projects and specifications that may be relevant.:



#### HL7 Gemini 

<div style="display: flex; justify-content: center; align-items: center">
    <img src="./gemini-logo-fin.png" alt="GEMINI" style="max-width: 50%; max-height: 100%; margin: 20px;">
</div>

IHE MPD is a Gemini project. This means that while the specification is edited and hosted by IHE, it has gone through review with the interested parties (work groups) at HL7 international. A single balloting process is used - while this is hosted by IHE, HL7 members have participated in the discussions and are also invited to participate in the comment process.

<br>

#### IHE Pharmacy profiles:

##### CMPD
the [IHE Community Medication Prescription and Dispense](https://www.ihe.net/uploadedFiles/Documents/Pharmacy/IHE_Pharmacy_Suppl_CMPD.pdf) is a CDA-based specification of Prescription and Dispense documents. 
The current IHE MPD profile covers a superset of the functionalities in CMPD, to allow transitioning from CDA-based architeture to FHIR-based interoperability.


##### MMA
The [IHE Mobile Medication Administration](https://www.ihe.net/uploadedFiles/Documents/Pharmacy/IHE_Pharm_Suppl_MMA.pdf) supports the request and report of medication administrations. The Medication Administration is a specific type of medication order, and therefore is technically compatible with the current profile, but is further specified in the MMA profile.

---


### Dependencies
This IG Contains the following dependencies on other IGs.

{% include dependency-table.xhtml %}

### Cross Version Analysis

{% capture cross-version-analysis %}{% include cross-version-analysis.xhtml %}{% endcapture %}{{ cross-version-analysis | remove: '<p>' | remove: '</p>'}}

### Global Profiles

{% include globals-table.xhtml %}

### Intellectual Property

{% include ip-statements.xhtml %}