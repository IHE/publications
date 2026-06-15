# TEFCA Health Information Exchange - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TEFCA Health Information Exchange**

## TEFCA Health Information Exchange 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/ExampleScenario/UseCaseTEFCA | *Version*:1.0.0-comment |
| Active as of 2026-06-14 | *Computable Name*:TEFCA |

The [Trusted Exchange Framework and Common Agreement (TEFCA)](https://www.healthit.gov/topic/interoperability/policy/trusted-exchange-framework-and-common-agreement-tefca) is a United States initiative established by the Office of the National Coordinator for Health IT (ONC) and operated by the Sequoia Project as the Recognized Coordinating Entity (RCE). TEFCA provides a single on-ramp for nationwide health information exchange by establishing a common set of principles, terms, and conditions that enable nationwide interoperability.

Under TEFCA, Qualified Health Information Networks (QHINs) serve as the primary exchange intermediaries, facilitating data sharing among Health Information Networks (HINs), healthcare providers, payers, and public health agencies. Each QHIN must meet rigorous security, privacy, and technical requirements to participate in the TEFCA ecosystem.

**Relevance to VHL:**

TEFCA's trust model aligns with the VHL profile's trust network architecture. In the context of VHL:

* QHINs and their participants can act as VHL Sharers and VHL Receivers within the TEFCA trust framework
* TEFCA's credential and certificate management infrastructure can serve as a trust anchor for VHL exchanges
* The individual (patient) retains control over sharing their health records via VHL, consistent with TEFCA's patient access principles

**OAuth with SSRAA Option:**

Organizations already using OAuth with UDAP (via the [HL7 SSRAA IG](http://hl7.org/fhir/us/udap-security/)) can leverage VHL for health record sharing without additional authentication infrastructure. TEFCA participants, for example, can use their existing TEFCA-issued X.509 certificates and UDAP Dynamic Client Registration to authenticate VHL exchanges, enabling seamless interoperability within established national-scale health information networks.



## Resource Content

```json
{
  "resourceType" : "ExampleScenario",
  "id" : "UseCaseTEFCA",
  "url" : "https://profiles.ihe.net/ITI/VHL/ExampleScenario/UseCaseTEFCA",
  "version" : "1.0.0-comment",
  "name" : "TEFCA",
  "status" : "active",
  "date" : "2026-06-14T15:37:09-05:00",
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
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "purpose" : "The [Trusted Exchange Framework and Common Agreement (TEFCA)](https://www.healthit.gov/topic/interoperability/policy/trusted-exchange-framework-and-common-agreement-tefca) is a United States initiative established by the Office of the National Coordinator for Health IT (ONC) and operated by the Sequoia Project as the Recognized Coordinating Entity (RCE). TEFCA provides a single on-ramp for nationwide health information exchange by establishing a common set of principles, terms, and conditions that enable nationwide interoperability.\n\nUnder TEFCA, Qualified Health Information Networks (QHINs) serve as the primary exchange intermediaries, facilitating data sharing among Health Information Networks (HINs), healthcare providers, payers, and public health agencies. Each QHIN must meet rigorous security, privacy, and technical requirements to participate in the TEFCA ecosystem.\n\n**Relevance to VHL:**\n\nTEFCA's trust model aligns with the VHL profile's trust network architecture. In the context of VHL:\n- QHINs and their participants can act as VHL Sharers and VHL Receivers within the TEFCA trust framework\n- TEFCA's credential and certificate management infrastructure can serve as a trust anchor for VHL exchanges\n- The individual (patient) retains control over sharing their health records via VHL, consistent with TEFCA's patient access principles\n\n**OAuth with SSRAA Option:**\n\nOrganizations already using OAuth with UDAP (via the [HL7 SSRAA IG](http://hl7.org/fhir/us/udap-security/)) can leverage VHL for health record sharing without additional authentication infrastructure. TEFCA participants, for example, can use their existing TEFCA-issued X.509 certificates and UDAP Dynamic Client Registration to authenticate VHL exchanges, enabling seamless interoperability within established national-scale health information networks."
}

```
