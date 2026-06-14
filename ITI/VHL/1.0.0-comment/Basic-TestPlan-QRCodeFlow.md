# Resource TestPlan-QRCodeFlow



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "TestPlan-QRCodeFlow",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-TestPlan.url",
    "valueUri" : "https://profiles.ihe.net/ITI/VHL/TestPlan/TestPlan-QRCodeFlow"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-TestPlan.version",
    "valueString" : "1.0.0-comment"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-TestPlan.name",
    "valueString" : "TestPlan_QRCodeFlow"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-TestPlan.title",
    "valueString" : "Integration Test Plan – QR Code Generation and Validation Flow"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-TestPlan.status",
    "valueCode" : "active"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-TestPlan.date",
    "valueDateTime" : "2026-06-14T15:36:12-05:00"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-TestPlan.publisher",
    "valueString" : "IHE IT Infrastructure Technical Committee"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-TestPlan.contact",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.ihe.net/ihe_domains/it_infrastructure/"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-TestPlan.contact",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "iti@ihe.net"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-TestPlan.contact",
    "valueContactDetail" : {
      "name" : "IHE IT Infrastructure Technical Committee",
      "telecom" : [{
        "system" : "email",
        "value" : "iti@ihe.net"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-TestPlan.description",
    "valueMarkdown" : "Integration test plan for the **QR Code Generation and Validation Flow** of the IHE ITI\nVerifiable Health Links (VHL) profile.\n\nScope: validates multi-actor, cross-transaction scenarios that span ITI-YY3 (Generate VHL),\nITI-YY4 (Provide VHL), and ITI-YY5 (Retrieve Manifest). Tests verify that the QR code\ngenerated in YY3 can be decoded in YY4, that the decoded VHL payload's manifest URL is used\ncorrectly in YY5, and that the full end-to-end pipeline including passcode handling, signature\nverification, and VHL authorization succeeds.\n\nActors exercised: VHL Holder, VHL Sharer, VHL Receiver."
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-TestPlan.jurisdiction",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
        "code" : "001"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-TestPlan.scope",
    "valueReference" : {
      "reference" : "ActorDefinition/VHLHolder"
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-TestPlan.scope",
    "valueReference" : {
      "reference" : "ActorDefinition/VHLSharer"
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-TestPlan.scope",
    "valueReference" : {
      "reference" : "ActorDefinition/VHLReceiver"
    }
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-TestPlan.testCase.sequence",
      "valueInteger" : 1
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-TestPlan.testCase.testRun.narrative",
        "valueMarkdown" : "Execute all scenarios in the Gherkin integration feature file\n`integration-qrcode-flow.feature`.\n\nScenario groups:\n- **Group A – VHL Generation (YY3):** VHL Holder requests VHL; VHL Sharer generates a valid\n  HCERT-signed QR code; VHL payload URL is verifiable; passcode is retained by VHL Holder.\n- **Group B – QR Presentation and Decoding (YY4):** VHL Receiver decodes the QR code\n  generated in Group A using the trust list; COSE signature verified; decoded manifest URL\n  matches the YY5 endpoint; passcode is obtained from VHL Holder when P flag is present.\n- **Group C – Manifest Retrieval (YY5):** VHL Receiver uses the decoded folder ID and URL\n  to send an authenticated HTTP POST; VHL Sharer verifies the receiver's signature using the\n  trust list; correct passcode results in HTTP 200 Bundle; incorrect passcode results in 422.\n- **Group D – Full End-to-End:** Complete flow from YY3 generation through YY4 decode to YY5\n  manifest retrieval succeeds; passcode-protected variant succeeds end-to-end.\n- **Group E – Expired and Revoked VHL Rejection:** VHL Receiver rejects an expired QR code at\n  YY4 without proceeding to YY5; VHL Sharer returns 403 for a revoked VHL at YY5.\n\nThese scenarios require pipeline state: the QR code from YY3 feeds YY4, and the decoded\npayload from YY4 feeds YY5."
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-TestPlan.testCase.testRun.script.language",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "urn:ietf:bcp:13",
              "code" : "text/x-gherkin"
            }],
            "text" : "Gherkin"
          }
        },
        {
          "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-TestPlan.testCase.testRun.script.sourceString",
          "valueString" : "integration-qrcode-flow.feature"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-TestPlan.testCase.testRun.script"
      }],
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-TestPlan.testCase.testRun"
    }],
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-TestPlan.testCase"
  }],
  "code" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/fhir-types",
      "code" : "TestPlan"
    }]
  }
}

```
