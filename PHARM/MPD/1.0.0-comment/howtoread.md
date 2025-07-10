 
This publication is in the form of a FHIR implementation guide.
Readers are invited to refer to the [IHE General Intro](https://profiles.ihe.net/GeneralIntro). Implementers are expected to be familiar with the key concepts of the IHE approach.



### IHE Approach - actors and transactions
IHE Profiles (which are different from "FHIR Profiles") provide implementable and testable specifications by using existing standards and applying them to specific parts of clinical workflow.
The parts of the workflow about data exchange are represented by Actors (modular abstract functionalities that are implemented in systems) and Transactions (data exchange specifications).

IHE Transactions are defined by
* **Actor roles** - the actors that participate in the transaction for example "*Medication Order Placer and Order Receiver*"  
* **Trigger events** - what are the events that trigger the data exchange - for example "*Medication Order Placer submits the prescription to the Order Receiver*"  
* **Message Semantics** - the actual content - which can be a FHIR profile, or a search query definition, or any FHIR operation, etc.  
* **Expected Actions** - What are the minimal expected actions to be taken by the actor upon the data exchange.

One key aspect of IHE profiles is to define these modular actors and transactions, which systems can adopt in different architectures. The page [Actor grouping examples](actor-grouping-examples.html) shows how the same actors cane be combined to fit into those  architectures.



### Structure

* [Volume 1](volume-1.html) contains the introduction and functional considerations of the use cases, actors and transactions.
* [Volume 2](volume-2.html) contains the technical description of the transactions

### Must Support

This specification defines `Must Support` in StructureDefinition profiles as the element, when the minimal cardionality is zero, is **R2** `Required if Known`, as found in [Appendix Z](http://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.10-profiling-conventions-for-constraints-on-fhir). 
`Must Support` when the element minimal cardionality is not zero means **R**. Note that data access controls may apply to this rule.
