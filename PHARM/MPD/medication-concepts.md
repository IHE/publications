Medication as a concept (CodeableConcept from a terminology or FHIR resource) on a prescription can be anything from just substance to a certain pack size of a branded product. Similarly, the level of package details varies greatly. On a dispense, physical package identifier can be captured. Closely linked is the concept of dosage and how it is represented on a prescription - some details about a prescribed product may be captured in dosaging information or in the details of the prescribed product.

### Medication and dosage

When only a substance is prescribed, the dosaging information also contains the dosage (strength) and route of administration. In the following example, the prescriptions are built differently, but the order is likely the same. The reason for preferring route in dosaging over dose form is to allow flexibility in choosing the exact product (the nurse has the freedom to decide between different oral dose forms according to the patient's needs or preferences).  
  
|**Medication**|**Dosage**|  
|paracetamol|125mg, oral route, when needed|  
|paracetamol 125mg/5ml oral suspension|5ml when needed|  
{:.table-bordered .table-striped .thead-light}  

Route/method of administration is one of the data elements that describes the medication as well as dosaging (administration instructions). When a medicinal product is authorised it is authorised for certain routes of administration. However, one product may have multiple authorised routes, or a product can be used with an offlabel route. A product with a dose form "drops for eye, nose or ear" can be used for all these body sites, but on a prescription, we typically want to express the administration route for this particular case. Therefore, route on a prescription is typically conveyed in dosaging information, even though product catalogues list routes in medication details.  

### Virtual vs real product

When a medication is prescribed it may be prescribed as a virtual product (for generic prescriptions) or as a real product. In some countries, prescribing a real product implies that the product cannot be substituted as the prescriber has chosen a real product over a virtual product for a reason. In other countries, substitution is allowed or even expected as the real product represents just one possible alternative and any other similar product can be chosen unless specifically stated otherwise on the prescription.  

Virtual products, just like real products, may be represented as a concept from a code system or a FHIR resource with filled-in attributes. In many countries real products and virtual products are interlinked, allowing a simpler selection and substitution. Internationally known code systems like RxNorm and SNOMED CT contain medication concepts on different levels, allowing moving up and down on granularity levels of the product.  

ISO IDMP also represents medicinal product information on different levels. Medicinal Product, Packaged Product, Pharmaceutical Product, and Manufactured Item. Note, that ISO IDPM Pharmaceutical Product represents the administrable form of a specific real product (containing information about excipients), while PhPID (Pharmaceutical Product Identifier) is designed to represent a more abstract classification for products. HL7 FHIR resources for implementing ISO IDMP are provided in [MedicationDefinition module](https://www.hl7.org/fhir/R5/medication-definition-module.html).   

### Medicinal product dictionaries

Various code systems exist for medication concepts. 
SNOMED CT contains concepts for describing a medication (dose forms, substances, units) as well as precoordinated medication concepts with different granularity. SNOMED CT international release contains only virtual products - the most granular of them is clinical drug, which maps to manufactured item in ISO IDMP.

SNOMED CT national extensions may include data of real medicinal products - branded medicinal products as well as packages. While codes for these national products would be different in each country, they all leverage the international content of SNOMED CT and follow the agreed concept model.  

The granularity of prescribed medication depends on the type(s) of concept chosen for a particular implementation. For example, the following table illustrates how concepts on different levels or following different standards compare to eachother (* marks information that might be implied by relationships with related concepts).

|**Concept type**|**Active substance**|**Strength**|**Manufactured dose form**|**Administrable dose form**|**Authorized name**|**Pack size**|  
|ISO IDMP Medicinal Product|+|+|+|*|+|*|  
|PhPID Level 4|+|+|-|+|-|-|  
|SNOMED Clinical Drug|+|+|+|-|-|-|  
|SNOMED Real Drug Package|+|+|+|-|+|+|  
{:.table-bordered .table-striped .thead-light}


Most countries operate their own national terminology or register for medicinal product - often both, as the medicines agency publishes the data as a register and another organization remodels it as a code system. These sources allow the actual prescription and dispensation to include only product code/identifier and have each system look up the details of the products from the source system. However, there can be no expectation that a pharmacy system from another country should be able to do lookups into any other country's product dictionary. Therefore, cross-border service include the product code as well as an essential set of details about the product.


## Usage in the clinical lifecycle

It is important to note that while orders can be issued with different levels of granularity, dispenses are recorded at the level of packaged product.


