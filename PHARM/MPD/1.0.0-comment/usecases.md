
The IHE MPD profile covers a wide range of the ordering and dispense process. Keeping this broad functional scope while supporting a standard, modular architecture, required an analysis of several use cases. This is a short list of those use cases, structured into different patterns that can apply in different scenarios.  

These use cases will be detailed in future editions of this Profile - the different variations and how the different resources are implemented in FHIR will be detailed in examples with instances.
{:.note-to-balloters}



## Core Workflow concepts

Some core concepts apply to medication order management, as well as for other orders. Users are redirected to the HL7 [Clinical Order Workflows Implementation Guide](https://hl7.org/fhir/uv/cow/2025May).


## Simple prescription and dispense
The simplest use case is of a simple prescription. An order placer issues an order for one product, which is submitted to a central prescription repository and picked up by a pharmacy for dispense, after which the dispense record is issued.  
This workflow can have many variations, so here is an overview of the supported variations:



## Order initiation

1. **Required order validation**  
  Depending on the drug type - e.g. controlled substances - or jurisdictional and professional practices, the medication order may need to be revised and "co-signed" by different authors. Functionally, this can correspond to the medication order being updated, with possibly some change requests by the order placer(s).  


1. **Optional order review**  
  Also depending on jurisdiction and context, the order may be optionally reviewed. This is similar to the required order validation, but it is unsolicited and optional - the same actors should support the use case.  
    

1. **Prescription drafting + confirmation**  
  The case of order drafting and confirmation is similar to order validation, except that the first order has a draft status draft, and it gets updated until it gets its "valid" status.  


1. **Prescription from proposal**
  This is slightly different - a proposal can be made for a given treatment, and a "formal" order be created from it. This is common for example in Decision Support systems. The ownership of the proposal and of the order are separate.   

1. **Order protocols**
  Order protocols are "generic" orders which get instantiated for a patient. This use case is similar to a normal order, except for the possible reference so that the order can be traced to the protocol.  


## Order Changes

1. **Cancellation/change of the prescription**  
   There are several triggers and possibilities for order changes or cancellations:  

   1.1. **By prescriber**  
   In some cases, the prescriber (or a co-author with the necessary rights) needs to change the order. Besides other tracking mechanisms that may apply, this is usually a simple change in the request.

   1.2. **By pharmacist or patient**  
   When the order needs to be changed by - or actually on behalf of - the patient or pharmacist, this actually implies a request to change or request to cancel, because neither the pharmacist or the patient are the "owners" of the order.  

   1.3. **After initiation**  
   When orders change after the execution starts, and some of the actions are already executed, the tracked actions may not be all reverted (but some may be). This doesn't change the workflow considerably - and shouldn't imply a different approach, given that it is not always possible to see if any action has been executed at the time when an order is cancelled or changed.  



## Dispense

The dispense process can vary significantly depending on the clinical setting, regulatory framework, and product type. The following are common variations of the dispense use case:  

1. **Substitution or override**  
   Pharmacists may have the authority or obligation to substitute the prescribed medication. This may involve:  
   - **Change from Pharmaceutical to Medicinal product**  
     For example, substituting a brand-name product with a generic equivalent that contains the same active ingredient.  
   - **Extemporaneous preparations**  
     When no appropriate product is available commercially, pharmacists may prepare custom formulations.  
   - **Override by pharmacist**  
     Pharmacists may override constraints in the prescription, e.g. dose, quantity, route, in coordination with clinical staff or in emergency settings.  
   - **Substitution**  
     Based on formulary restrictions or availability, the dispensed product may differ from the prescribed one (e.g., different packaging, concentration).  
   - **Declined dispense**  
     Dispensing may be declined for various reasons (e.g., safety, policy, unavailability). In such cases, a Dispensation should be recorded, with appropriate status and details like reason.  
   - **Example: Dosage form adaptation**  
     A prescription for a 500mg tablet may be fulfilled with a 1000mg scored tablet, instructing to administer half a tablet.  

2. **Dispense without prescription**  

   - **Over-The-Counter (OTC)**  
     Products that do not require a prescription. Still, it is useful to record the dispense for medication reconciliation or public health tracking.  
   - **Medication requiring prescription dispensed without formal order**  
     In exceptional circumstances (e.g., emergency, verbal orders), a dispense may be issued without an associated prescription. In such cases:  
     - The `MedicationDispense` should be recorded.  
     - If possible, a placeholder for the delayed Medication Order should be created.  

3. **Split dispenses and partial fulfillment**  
   A single prescription may be fulfilled through multiple Dispense records (e.g., due to stock limitations or patient preference).  

4. **Automated dispensing**  
   Automated dispensing machines may dispense medications either directly to the patient or to the administration team, and should record a Dispense with details of dispensing system and context.  

## Administration

The administration step represents the actual delivery of medication to the patient. This process is context-dependent and can include manual or automated administration, and may be planned or unplanned.

For Administration use cases and definitions, readers are directed to the [IHE MMA profile](https://www.ihe.net/uploadedFiles/Documents/Pharmacy/IHE_Pharm_Suppl_MMA.pdf).




