# Trust Anchor - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Trust Anchor**

## CapabilityStatement: Trust Anchor 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/CapabilityStatement/IHE.VHL.TrustAnchor | *Version*:1.0.0-comment |
| Active as of 2024-12-31 | *Computable Name*:TrustAnchor |

 
CapabilityStatement for Trust Anchor Actor in the IHE IT Infrastructure Technical Framework Supplement IHE VHL. An authorized organization in the trust framework that manages and distributes PKI material—such as public key certificates and revocation lists—to participants in the network. It ensures that this material is trustworthy and available, enabling VHL Sharers and VHL Receivers to verify digital signatures and authenticate the origin of shared data. 

 [Raw OpenAPI-Swagger Definition file](IHE.VHL.TrustAnchor.openapi.json) | [Download](IHE.VHL.TrustAnchor.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.VHL.TrustAnchor",
  "url" : "https://profiles.ihe.net/ITI/VHL/CapabilityStatement/IHE.VHL.TrustAnchor",
  "version" : "1.0.0-comment",
  "name" : "TrustAnchor",
  "title" : "Trust Anchor",
  "status" : "active",
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
  "description" : "CapabilityStatement for Trust Anchor Actor in the IHE IT Infrastructure Technical Framework Supplement IHE VHL. An authorized organization in the trust framework that manages and distributes PKI material—such as public key certificates and revocation lists—to participants in the network. It ensures that this material is trustworthy and available, enabling VHL Sharers and VHL Receivers to verify digital signatures and authenticate the origin of shared data.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["application/fhir+xml", "application/fhir+json"],
  "rest" : [{
    "mode" : "server",
    "documentation" : "Trust Anchor actor manages and distributes PKI material (public key certificates and revocation lists) via DID-based protocols defined in the ITI-YY1 Submit PKI Material with DID and ITI-YY2 Retrieve Trust List with DID transactions."
  }]
}

```
