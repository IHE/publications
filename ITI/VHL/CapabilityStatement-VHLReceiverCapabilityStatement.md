# VHL Receiver Client Capability Statement - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **VHL Receiver Client Capability Statement**

## CapabilityStatement: VHL Receiver Client Capability Statement 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/CapabilityStatement/VHLReceiverCapabilityStatement | *Version*:1.0.0-comment |
| Active as of 2024-12-31 | *Computable Name*:VHLReceiverCapabilityStatement |

 
Capability Statement for a VHL Receiver implementing the Retrieve Manifest [ITI-YY5] transaction as a client. This client searches for List resources using VHL-authorized manifest URLs and can request inclusion of DocumentReference resources via the _include parameter. 

 [Raw OpenAPI-Swagger Definition file](VHLReceiverCapabilityStatement.openapi.json) | [Download](VHLReceiverCapabilityStatement.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "VHLReceiverCapabilityStatement",
  "url" : "https://profiles.ihe.net/ITI/VHL/CapabilityStatement/VHLReceiverCapabilityStatement",
  "version" : "1.0.0-comment",
  "name" : "VHLReceiverCapabilityStatement",
  "title" : "VHL Receiver Client Capability Statement",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-12-31",
  "publisher" : "IHE IT Infrastructure Technical Committee",
  "contact" : [{
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ihe.net/ihe_domains/it_infrastructure/"
    }]
  },
  {
    "telecom" : [{
      "system" : "email",
      "value" : "iti@ihe.net"
    }]
  },
  {
    "name" : "IHE IT Infrastructure Technical Committee",
    "telecom" : [{
      "system" : "email",
      "value" : "iti@ihe.net"
    }]
  }],
  "description" : "Capability Statement for a VHL Receiver implementing the Retrieve Manifest [ITI-YY5] transaction as a client. This client searches for List resources using VHL-authorized manifest URLs and can request inclusion of DocumentReference resources via the _include parameter.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["application/fhir+json", "application/fhir+xml"],
  "rest" : [{
    "mode" : "client",
    "documentation" : "VHL Receiver retrieves document manifests (List resources) and optionally DocumentReference resources from VHL Sharers using VHL-authorized manifest URLs. The client extracts the manifest URL from the VHL payload (obtained via ITI-YY4 Provide VHL) and performs a FHIR search with mandatory parameters.",
    "security" : {
      "description" : "Implementations SHALL support ATNA Authenticate Node [ITI-19] for mutual TLS authentication. The VHL Receiver SHALL provide the VHL authorization token (folder ID) and MAY provide additional authentication tokens (OAuth 2.0, JWS signatures)."
    },
    "resource" : [{
      "type" : "List",
      "profile" : "http://hl7.org/fhir/StructureDefinition/List",
      "documentation" : "The VHL Receiver searches for List resources using the manifest URL extracted from the VHL payload. The search SHALL include mandatory parameters: _id (folder ID), code, and status, and SHALL include the patient identifier using FHIR chained search on the patient parameter (i.e., patient.identifier=system|value). The VHL Receiver MAY request inclusion of DocumentReference resources via the _include parameter.",
      "interaction" : [{
        "code" : "search-type",
        "documentation" : "Search for List resources using manifest URL from VHL payload. The VHL Receiver SHALL support searching with _id, code, and status parameters, and SHALL support chained search on the patient parameter (patient.identifier=system|value) to identify the patient. The VHL Receiver SHALL support the _include=List:item parameter to retrieve DocumentReference resources in a single request."
      }],
      "searchInclude" : ["List:item"],
      "searchParam" : [{
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
        "type" : "token",
        "documentation" : "Folder ID from VHL payload. This is the primary authorization mechanism. SHALL be supported and SHALL be included in every manifest retrieval request."
      },
      {
        "name" : "code",
        "type" : "token",
        "documentation" : "List type, typically 'folder'. SHALL be supported and SHALL be included in manifest URL from VHL payload."
      },
      {
        "name" : "status",
        "definition" : "http://hl7.org/fhir/SearchParameter/List-status",
        "type" : "token",
        "documentation" : "List status, typically 'current'. SHALL be supported and SHALL be included in manifest URL from VHL payload."
      },
      {
        "name" : "patient",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
        "type" : "reference",
        "documentation" : "Patient reference search parameter. SHALL be supported with FHIR chained search (patient.identifier=system|value) to identify the patient by identifier without requiring a direct Patient resource reference. SHALL be included in the manifest URL from the VHL payload."
      }]
    },
    {
      "type" : "DocumentReference",
      "profile" : "http://hl7.org/fhir/StructureDefinition/DocumentReference",
      "documentation" : "DocumentReference resources MAY be returned as included resources when _include=List:item is used in the List search. The VHL Receiver SHALL be capable of processing DocumentReference resources returned with search.mode='include' in the searchset Bundle.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Read individual DocumentReference resources by ID. Used when _include is not supported by the VHL Sharer or when retrieving updated metadata after the initial manifest retrieval."
      },
      {
        "code" : "search-type",
        "documentation" : "Search for DocumentReference resources. MAY be used to retrieve individual DocumentReferences when _include is not available or to apply additional filters after manifest retrieval."
      }]
    }]
  }]
}

```
