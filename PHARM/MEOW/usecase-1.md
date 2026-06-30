# Use Case 1 - Consulting the Overview - IHE Pharmacy Medication Overview v1.0.0-preview

* [**Table of Contents**](toc.md)
* [**Volume 1 Overview**](volume1.md)
* [**Use Case overview**](usecases.md)
* **Use Case 1 - Consulting the Overview**

## Use Case 1 - Consulting the Overview

This is the first detailed use case for the IHE Medication Overview (MEOW) Profile. Additional use cases will be added in future versions.

### Use Case 1: Consulting the medication overview before prescribing

**Context.** A patient consults their general practitioner (GP). Before prescribing, the GP wants an up-to-date picture of the patient's current medication.

**Flow.**

1. The GP's system, acting as a Medication Overview Consumer, retrieves the patient's medication overview from a Medication Overview Repository using the[Get Medication Overview [PHARM-x]](PHARM-x.md)transaction.
1. The GP reviews the current treatment lines, including medications that were prescribed elsewhere and any recorded adherence information.
1. Taking this information into account, the GP issues a new prescription.
1. A treatment line reflecting the new medication is created and, through the[Submit Medication Overview [PHARM-y]](PHARM-y.md)transaction, the updated overview becomes available to other care providers.

This use case illustrates both the retrieval of an existing overview and its update as care progresses.

