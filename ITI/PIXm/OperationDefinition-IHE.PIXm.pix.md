# IHE PIXm $pix Operation - Patient Identifier Cross-referencing for mobile (PIXm) v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE PIXm $pix Operation**

## OperationDefinition: IHE PIXm $pix Operation 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PIXm/OperationDefinition/IHE.PIXm.pix | *Version*:3.1.0 | |
| *Standards status:*[Trial-use](http://hl7.org/fhir/R4/versions.html#std-process) | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 5 | *Computable Name*:IHE_PIXm_pix |

 
The OperationDefinition defines the In and Output Parameters for the $ihe-pix operation 
* Input: sourceIdentifier, targetSystem and _format
* Output: targetIdentifier, targetId
 

URL: [base]/Patient/$ihe-pix

### Parameters

* **Use**: IN
  * **Name**: sourceIdentifier
  * **Scope**: 
  * **Cardinality**: 1..1
  * **Type**: [string](http://hl7.org/fhir/R4/datatypes.html#string)([token](https://hl7.org/fhir/R4/search.html#token))
  * **Binding**: 
  * **Documentation**: The Patient identifier search parameter that will be used by the Patient Identifier Cross-reference Manager to find cross matching identifiers associated with the Patient Resource. See [Section 3.83.4.1.2.1](ITI-83.md#23834121-source-patient-identifier-parameter).
* **Use**: IN
  * **Name**: targetSystem
  * **Scope**: 
  * **Cardinality**: 0..*
  * **Type**: [string](http://hl7.org/fhir/R4/datatypes.html#string)([uri](https://hl7.org/fhir/R4/search.html#uri))
  * **Binding**: 
  * **Documentation**: The target Patient Identifier Assigning Authority from which the returned identifiers should be selected. See [Section 3.83.4.1.2.2](ITI-83.md#23834122-requesting-patient-identifier-domains-to-be-returned).
* **Use**: IN
  * **Name**: _format
  * **Scope**: 
  * **Cardinality**: 0..1
  * **Type**: [string](http://hl7.org/fhir/R4/datatypes.html#string)([token](https://hl7.org/fhir/R4/search.html#token))
  * **Binding**: 
  * **Documentation**: The requested format of the response. See [ITI TF-2: Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format)
* **Use**: OUT
  * **Name**: targetIdentifier
  * **Scope**: 
  * **Cardinality**: 0..*
  * **Type**: [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier)
  * **Binding**: 
  * **Documentation**: The identifier found. Constraints to include the assigning authority as specified in [ITI TF-2: Appendix E.3](https://profiles.ihe.net/ITI/TF/Volume2/ch-E.html#E.3)
* **Use**: OUT
  * **Name**: targetId
  * **Scope**: 
  * **Cardinality**: 0..*
  * **Type**: [Reference](http://hl7.org/fhir/R4/references.html#Reference)
  * **Binding**: 
  * **Documentation**: The URL of the Patient Resource



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "IHE.PIXm.pix",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 5
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "trial-use"
    }
  ],
  "url" : "https://profiles.ihe.net/ITI/PIXm/OperationDefinition/IHE.PIXm.pix",
  "version" : "3.1.0",
  "name" : "IHE_PIXm_pix",
  "title" : "Get Corresponding Identifiers Operation",
  "status" : "active",
  "kind" : "operation",
  "date" : "2022-05-25",
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
  "description" : "The OperationDefinition defines the In and Output Parameters for the $ihe-pix operation\n - Input: sourceIdentifier, targetSystem and _format\n - Output: targetIdentifier, targetId",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
          "code" : "001"
        }
      ]
    }
  ],
  "affectsState" : false,
  "code" : "ihe-pix",
  "resource" : ["Patient"],
  "system" : false,
  "type" : true,
  "instance" : false,
  "parameter" : [
    {
      "name" : "sourceIdentifier",
      "use" : "in",
      "min" : 1,
      "max" : "1",
      "documentation" : "The Patient identifier search parameter that will be used by the Patient Identifier Cross-reference Manager to find cross matching identifiers associated with the Patient Resource. See [Section 3.83.4.1.2.1](ITI-83.html#23834121-source-patient-identifier-parameter).",
      "type" : "string",
      "searchType" : "token"
    },
    {
      "name" : "targetSystem",
      "use" : "in",
      "min" : 0,
      "max" : "*",
      "documentation" : "The target Patient Identifier Assigning Authority from which the returned identifiers should be selected. See [Section 3.83.4.1.2.2](ITI-83.html#23834122-requesting-patient-identifier-domains-to-be-returned).",
      "type" : "string",
      "searchType" : "uri"
    },
    {
      "name" : "_format",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "The requested format of the response. See [ITI TF-2: Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format)",
      "type" : "string",
      "searchType" : "token"
    },
    {
      "name" : "targetIdentifier",
      "use" : "out",
      "min" : 0,
      "max" : "*",
      "documentation" : "The identifier found. Constraints to include the assigning authority as specified in [ITI TF-2: Appendix E.3](https://profiles.ihe.net/ITI/TF/Volume2/ch-E.html#E.3)",
      "type" : "Identifier"
    },
    {
      "name" : "targetId",
      "use" : "out",
      "min" : 0,
      "max" : "*",
      "documentation" : "The URL of the Patient Resource",
      "type" : "Reference"
    }
  ]
}

```
