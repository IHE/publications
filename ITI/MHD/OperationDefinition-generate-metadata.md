# Generate a DocumentReference from a document - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Generate a DocumentReference from a document**

## OperationDefinition: Generate a DocumentReference from a document 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/OperationDefinition/generate-metadata | *Version*:4.2.3 |
| Active as of 2025-10-31 | *Computable Name*:GenerateMetadata |

 
Generate Metadata[ITI-106](ITI-106.md)transaction Operation. 

URL: [base]/DocumentReference/$generate-metadata

### Parameters

* **Use**: IN
  * **Name**: document
  * **Scope**: 
  * **Cardinality**: 1..1
  * **Type**: [Resource](http://hl7.org/fhir/R4/resource.html)([Binary](http://hl7.org/fhir/R4/binary.html),[Bundle](http://hl7.org/fhir/R4/bundle.html))
  * **Binding**: 
  * **Documentation**: [ITI-106 Generate Metadata Request Message](ITI-106.md#2310641-generate-metadata-request-message)* the document that is either a Binary or a document Bundle 
* Binary 0..1 the **document** in Binary Resource format. Usually used with CDA documents.
* Bundle 0..1 the **document** in FHIR-Document form of a Bundle of kind Document
 
* representative profile of Input Parameters [IHE.MHD.GenerateMetadata.Parameters.In](StructureDefinition-IHE.MHD.GenerateMetadata.Parameters.In.md)
* example of [input Parameters](StructureDefinition-IHE.MHD.GenerateMetadata.Parameters.In-examples.md)

* **Use**: OUT
  * **Name**: DocumentReference
  * **Scope**: 
  * **Cardinality**: 1..1
  * **Type**: [Reference](http://hl7.org/fhir/R4/references.html#Reference)([MHD DocumentReference Minimal](StructureDefinition-IHE.MHD.Minimal.DocumentReference.md))
  * **Binding**: 
  * **Documentation**: [ITI-106 Generate Metadata Response Message](ITI-106.md#2310642-generate-metadata-response-message)* Output is a reference to a MHV DocumentReference with metadata generated from the **document**




## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "generate-metadata",
  "url" : "https://profiles.ihe.net/ITI/MHD/OperationDefinition/generate-metadata",
  "version" : "4.2.3",
  "name" : "GenerateMetadata",
  "title" : "Generate a DocumentReference from a document",
  "status" : "active",
  "kind" : "operation",
  "experimental" : false,
  "date" : "2025-10-31T14:38:46-05:00",
  "publisher" : "IHE IT Infrastructure Technical Committee",
  "contact" : [
    {
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.ihe.net/ihe_domains/it_infrastructure/"
        }
      ]
    },
    {
      "telecom" : [
        {
          "system" : "email",
          "value" : "iti@ihe.net"
        }
      ]
    },
    {
      "name" : "IHE IT Infrastructure Technical Committee",
      "telecom" : [
        {
          "system" : "email",
          "value" : "iti@ihe.net"
        }
      ]
    }
  ],
  "description" : "Generate Metadata [ITI-106](ITI-106.html) transaction Operation.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
          "code" : "001",
          "display" : "World"
        }
      ]
    }
  ],
  "affectsState" : true,
  "code" : "generate-metadata",
  "resource" : ["DocumentReference"],
  "system" : false,
  "type" : true,
  "instance" : false,
  "parameter" : [
    {
      "name" : "document",
      "use" : "in",
      "min" : 1,
      "max" : "1",
      "documentation" : "[ITI-106 Generate Metadata Request Message](ITI-106.html#2310641-generate-metadata-request-message)\n- the document that is either a Binary or a document Bundle\n  - Binary 0..1 the *document* in Binary Resource format. Usually used with CDA documents.\n  - Bundle 0..1 the *document* in FHIR-Document form of a Bundle of kind Document\n- representative profile of Input Parameters [IHE.MHD.GenerateMetadata.Parameters.In](StructureDefinition-IHE.MHD.GenerateMetadata.Parameters.In.html)\n- example of [input Parameters](StructureDefinition-IHE.MHD.GenerateMetadata.Parameters.In-examples.html)",
      "type" : "Resource",
      "targetProfile" : [
        "http://hl7.org/fhir/StructureDefinition/Binary",
        "http://hl7.org/fhir/StructureDefinition/Bundle"
      ]
    },
    {
      "name" : "DocumentReference",
      "use" : "out",
      "min" : 1,
      "max" : "1",
      "documentation" : "[ITI-106 Generate Metadata Response Message](ITI-106.html#2310642-generate-metadata-response-message)\n- Output is a reference to a MHV DocumentReference with metadata generated from the *document*",
      "type" : "Reference",
      "targetProfile" : [
        "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.DocumentReference"
      ]
    }
  ]
}

```
