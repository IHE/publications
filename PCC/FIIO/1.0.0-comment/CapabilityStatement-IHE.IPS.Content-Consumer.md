# IPS Content Consumer - FHIR International Patient Summary v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IPS Content Consumer**

## CapabilityStatement: IPS Content Consumer 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PCC/FIIO/CapabilityStatement/IHE.IPS.Content-Consumer | *Version*:1.0.0-comment |
| Active as of 2024-07-17 | *Computable Name*:IHE_IPS_Content_Consumer |

 
The IPS[Content Consumer](volume-1.md#Content-Consumer) 

 [Raw OpenAPI-Swagger Definition file](IHE.IPS.Content-Consumer.openapi.json) | [Download](IHE.IPS.Content-Consumer.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.IPS.Content-Consumer",
  "url" : "https://profiles.ihe.net/PCC/FIIO/CapabilityStatement/IHE.IPS.Content-Consumer",
  "version" : "1.0.0-comment",
  "name" : "IHE_IPS_Content_Consumer",
  "title" : "IPS Content Consumer",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-07-17",
  "publisher" : "IHE Patient Care Coordination Committee",
  "contact" : [{
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ihe.net/ihe_domains/patient_care_coordination/"
    }]
  },
  {
    "telecom" : [{
      "system" : "email",
      "value" : "pcc@ihe.net"
    }]
  },
  {
    "name" : "IHE Patient Care Coordination Technical Committee",
    "telecom" : [{
      "system" : "email",
      "value" : "pcc@ihe.net"
    }]
  }],
  "description" : "The IPS[Content Consumer](volume-1.html#Content-Consumer)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["application/fhir+xml", "application/fhir+json"],
  "document" : [{
    "mode" : "producer",
    "profile" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips"
  }]
}

```
