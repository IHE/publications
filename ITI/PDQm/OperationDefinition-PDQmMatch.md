# PDQm $Match - Patient Demographics Query for Mobile (PDQm) v3.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PDQm $Match**

## OperationDefinition: PDQm $Match 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PDQm/OperationDefinition/PDQmMatch | *Version*:3.2.1 |
| Draft as of 2025-11-26 | *Computable Name*:Find_Patient_Matches_PDQm |

 
This operation implements the[Patient Demographics Match [ITI-119]](ITI-119.md)transaction. It is fully compatible with the[$match Operation on Patient](http://hl7.org/fhir/R4/patient-operation-match.html). The only changes are to constrain the input parameters to use the[PDQm Patient Profile for $match Input](StructureDefinition-IHE.PDQm.MatchInputPatient.md)profile and to constring the output parameters to use the[PDQm Patient Profile](StructureDefinition-IHE.PDQm.Patient.md)profile. 

URL: [base]/Patient/$match

### Parameters

* **Use**: IN
  * **Name**: resource
  * **Scope**: 
  * **Cardinality**: 1..1
  * **Type**: [Patient](http://hl7.org/fhir/R4/patient.html)([PDQm Patient Profile for $match Input](StructureDefinition-IHE.PDQm.MatchInputPatient.md))
  * **Binding**: 
  * **Documentation**: Use this to provide an entire set of patient details for the MPI to match against (e.g. POST a patient record to Patient/$match).
* **Use**: IN
  * **Name**: onlyCertainMatches
  * **Scope**: 
  * **Cardinality**: 0..1
  * **Type**: [boolean](http://hl7.org/fhir/R4/datatypes.html#boolean)
  * **Binding**: 
  * **Documentation**: If there are multiple potential matches, then the match SHOULD not return the results with this flag set to true. When false, the server MAY return multiple results with each result graded accordingly.
* **Use**: IN
  * **Name**: count
  * **Scope**: 
  * **Cardinality**: 0..1
  * **Type**: [integer](http://hl7.org/fhir/R4/datatypes.html#integer)
  * **Binding**: 
  * **Documentation**: The maximum number of records to return. If no value is provided, the server decides how many matches to return. Note that clients SHOULD be careful when using this, as it MAY prevent probable - and valid - matches from being returned.
* **Use**: OUT
  * **Name**: return
  * **Scope**: 
  * **Cardinality**: 1..1
  * **Type**: [Bundle](http://hl7.org/fhir/R4/bundle.html)([PDQm Match Output Bundle Profile](StructureDefinition-IHE.PDQm.MatchParametersOut.md))
  * **Binding**: 
  * **Documentation**: A bundle contain a set of Patient records that represent possible matches, optionally it MAY also contain an OperationOutcome with further information about the search results (such as warnings or information messages, such as a count of records that were close but eliminated) If the operation was unsuccessful, then an OperationOutcome MAY be returned along with a BadRequest status Code (e.g. security issue, or insufficient properties in patient fragment - check against profile).Note: as this is the only out parameter, it is a resource, and it has the name 'return', the result of this operation is returned directly as a resource



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "PDQmMatch",
  "url" : "https://profiles.ihe.net/ITI/PDQm/OperationDefinition/PDQmMatch",
  "version" : "3.2.1",
  "name" : "Find_Patient_Matches_PDQm",
  "title" : "PDQm $Match",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2025-11-26T14:04:43-06:00",
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
  "description" : "This operation implements the [Patient Demographics Match \\[ITI-119\\]](ITI-119.html) transaction.\nIt is fully compatible with the [$match Operation on Patient](http://hl7.org/fhir/R4/patient-operation-match.html). \nThe only changes are to constrain the input parameters to use the [PDQm Patient Profile for $match Input](StructureDefinition-IHE.PDQm.MatchInputPatient.html) profile\nand to constring the output parameters to use the [PDQm Patient Profile](StructureDefinition-IHE.PDQm.Patient.html) profile.",
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
  "code" : "match",
  "base" : "http://hl7.org/fhir/OperationDefinition/Patient-match",
  "resource" : ["Patient"],
  "system" : false,
  "type" : true,
  "instance" : false,
  "parameter" : [
    {
      "name" : "resource",
      "use" : "in",
      "min" : 1,
      "max" : "1",
      "documentation" : "Use this to provide an entire set of patient details for the MPI to match against (e.g. POST a patient record to Patient/$match).",
      "type" : "Patient",
      "targetProfile" : [
        "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.MatchInputPatient"
      ]
    },
    {
      "name" : "onlyCertainMatches",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "If there are multiple potential matches, then the match SHOULD not return the results with this flag set to true. When false, the server MAY return multiple results with each result graded accordingly.",
      "type" : "boolean"
    },
    {
      "name" : "count",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "The maximum number of records to return. If no value is provided, the server decides how many matches to return. Note that clients SHOULD be careful when using this, as it MAY prevent probable - and valid - matches from being returned.",
      "type" : "integer"
    },
    {
      "name" : "return",
      "use" : "out",
      "min" : 1,
      "max" : "1",
      "documentation" : "A bundle contain a set of Patient records that represent possible matches, optionally it MAY also contain an OperationOutcome with further information about the search results (such as warnings or information messages, such as a count of records that were close but eliminated) If the operation was unsuccessful, then an OperationOutcome MAY be returned along with a BadRequest status Code (e.g. security issue, or insufficient properties in patient fragment - check against profile).\n\nNote: as this is the only out parameter, it is a resource, and it has the name 'return', the result of this operation is returned directly as a resource",
      "type" : "Bundle",
      "targetProfile" : [
        "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.MatchParametersOut"
      ]
    }
  ]
}

```
