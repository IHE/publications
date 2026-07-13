# De-Identification Handbook Home - De-Identification Handbook v2.0.0-comment

* [**Table of Contents**](toc.md)
* **De-Identification Handbook Home**

## De-Identification Handbook Home

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/DeId/ImplementationGuide/ihe.iti.deid | *Version*:2.0.0-comment |
| Active as of 2026-06-12 | *Computable Name*:IHE_ITI_DeId |

This handbook explains the PROCESS for removing individually identifiable information from healthcare data. This includes de-identification, pseudonymization, re-linking, design considerations, techniques, and risks. The intended audience is IHE Profile editors and healthcare information technology implementers needing a guide for designing and implementing de-identification systems.

| |
| :--- |
| [Significant Changes, Open and Closed Issues](issues.md) |

### Organization of This Guide

This guide is organized into the following sections:

1. [Introduction to This Handbook](intro.md)
1. [Glossary](glossary.md)
1. [Concepts](concepts.md)
* [Navigating the Complexity of Privacy Concepts](concepts.md#navigating-the-complexity-of-privacy-concepts)
* [Identifiability](concepts.md#identifiability)
* [De-Identification, Pseudonymization, and Anonymization Explained](concepts.md#de-identification-pseudonymization-and-anonymization-explained)
* [Overall De-Identification Approach](concepts.md#overall-de-identification-approach)
* [Re-identification](concepts.md#re-identification)
* [Threats & Attacks](concepts.md#threats--attacks)

1. [Data Types](data-types.md)
1. [Techniques](techniques.md)
* [Classification of de-identification techniques](techniques.md#classification-of-de-identification-techniques)
* [De-Identifying Identifiers](techniques.md#de-identifying-identifiers)
* [De-Identifying Sensitive Attributes](techniques.md#de-identifying-identifiers)
* [Privacy Models](techniques.md#privacy-models)

1. [Process](process.md)
* [Overview of process](process.md#overview-of-process)
* [Analyze the context](process.md#analyze-the-context)
* [Data assessment](process.md#data-assessment)
* [Determine de-identification goals](process.md#determine-de-identification-goals)
* [Assess re-identification risk](process.md#assess-re-identification-risk)
* [Risk mitigation](process.md#risk-mitigation)
* [Implementation](process.md#implementation)
* [Governance](process.md#governance)

1. [De-Identification and Pseudonymization for IHE Profile Editors](ihe-use.md)
1. [Security Considerations](security.md)
* [Design of De-Identification Algorithm](security.md#design-of-de-identification-algorithm)
* [Execution of De-Identification on Data](security.md#execution-of-de-identification-on-data)
* [ATNA and Other Logging Considerations](security.md#atna-and-other-logging-considerations)

1. Exemplar
* [FHIR Examples](fhir-example.md)
* [DICOM Examples](dicom-example.md)
* [HL7 2 Examples](hl7-example.md)
* [Family Planning](family-planning.md)
* [IPS EHDS2](ips-ehds-example.md)

1. Other
* [Download and Analysis](download.md)
* [Significant Changes and Issues](issues.md)

1. [References](references.md)

See also the [Table of Contents](toc.md) and the index of [Artifacts](artifacts.md) defined as part of this implementation guide.

### Conformance Expectations

IHE uses the normative words: "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "MAY", and "OPTIONAL" according to [standards conventions](https://profiles.ihe.net/GeneralIntro/ch-E.html).

#### Must Support

The use of `mustSupport` in StructureDefinition profiles is equivalent to the IHE use of **R2** as defined in [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.10-profiling-conventions-for-constraints-on-fhir).

`mustSupport` only has a meaning on items that are minimal cardinality of zero (0), and applies only to the source actor populating the data. The source actor shall populate the elements marked with MustSupport, if the concept is supported by the actor, a value exists, and security and consent rules permit. The consuming actors should handle these elements being populated or being absent/empty. Note that sometimes mustSupport will appear on elements with a minimal cardinality greater than zero (0), this is due to inheritance from a less constrained profile.



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "ihe.iti.deid",
  "url" : "https://profiles.ihe.net/ITI/DeId/ImplementationGuide/ihe.iti.deid",
  "version" : "2.0.0-comment",
  "name" : "IHE_ITI_DeId",
  "title" : "De-Identification Handbook",
  "status" : "active",
  "date" : "2026-06-12T10:52:17-05:00",
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
  "description" : "This handbook defines the requirements for the de-identification of health information.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "packageId" : "ihe.iti.deid",
  "license" : "CC-BY-4.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.1.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  },
  {
    "id" : "iheitibasicaudit",
    "uri" : "https://profiles.ihe.net/ITI/BALP/ImplementationGuide/ihe.iti.balp",
    "packageId" : "ihe.iti.balp",
    "version" : "1.1.4"
  },
  {
    "id" : "hl7ips",
    "uri" : "http://hl7.org/fhir/uv/ips/ImplementationGuide/hl7.fhir.uv.ips",
    "packageId" : "hl7.fhir.uv.ips",
    "version" : "2.0.0"
  },
  {
    "id" : "ihepccodh",
    "uri" : "https://profiles.ihe.net/PCC/ODH/ImplementationGuide/ihe.pcc.odh",
    "packageId" : "ihe.pcc.odh",
    "version" : "1.0.0"
  },
  {
    "id" : "VitalRecordsCommonLibrary",
    "uri" : "http://hl7.org/fhir/us/vr-common-library/ImplementationGuide/hl7.fhir.us.vr-common-library",
    "packageId" : "hl7.fhir.us.vr-common-library",
    "version" : "2.0.0"
  },
  {
    "id" : "VRDR",
    "uri" : "http://hl7.org/fhir/us/vrdr/ImplementationGuide/hl7.fhir.us.vrdr",
    "packageId" : "hl7.fhir.us.vrdr",
    "version" : "3.0.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2021+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ballot"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "show-inherited-invariants"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "usage-stats-opt-out"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "progress"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "shownav"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://profiles.ihe.net/ITI/DeId/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2021+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ballot"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "show-inherited-invariants"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "usage-stats-opt-out"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "progress"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "shownav"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://profiles.ihe.net/ITI/DeId/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/IHE.BasicAudit.DeIdentification.Source"
      },
      "name" : "Audit Event for De-Identification at Source",
      "description" : "Defines constraints on the AuditEvent Resource to record when a De-Identification happens at the Source.\nNote that a De-Identification event often impacts many different patients, so many AuditEvent resources need to be created so that each Patient is individually represented. \nThis prevents leakage of other patients' that were also De-Identified at the same time.\n\n- Export event\n- subtype of deidentify or pseudonymize\n- shall have source of itself\n- shall have a source agent\n- should have a recipient agent(s) if known\n- may have user, app, organization agent(s)\n  - combine with the Security Token pattern\n- should have the custodian that released the data\n- should have the authorizer that represented the patient (may be the patient)\n- shall have a patient entity\n- may have the consent that authorized the de-identification\n- may have the authorizing client token (saml, jwt, etc)\n- may have the set of data entity(ies)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/IHE.BasicAudit.DeIdentification.Subtype"
      },
      "name" : "Audit Event Subtype for De-Identification",
      "description" : "Defines the AuditEvent Subtype for De-Identification events.\nThis is used to indicate that the AuditEvent is specifically for a De-Identification event.\nThe code is based on the ISO 21089 lifecycle code for de-identification.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AuditEvent"
      }],
      "reference" : {
        "reference" : "AuditEvent/ex-auditReIdentification-source"
      },
      "name" : "Audit Example of authorized Re-Identification at source",
      "description" : "Audit Example for an authorized Re-Identification from source perspective",
      "exampleCanonical" : "https://profiles.ihe.net/ITI/DeId/StructureDefinition/IHE.BasicAudit.DeIdentification.Source"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AuditEvent"
      }],
      "reference" : {
        "reference" : "AuditEvent/ex-auditDeIdentification-source"
      },
      "name" : "Audit Example of De-Identification at source",
      "description" : "Audit Example for a De-Identification from source perspective",
      "exampleCanonical" : "https://profiles.ihe.net/ITI/DeId/StructureDefinition/IHE.BasicAudit.DeIdentification.Source"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/DeIdentificationEntityType"
      },
      "name" : "Entity Type for De-Identification",
      "description" : "These AuditEvent.entity.type are related to De-Identification policy identification.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/DeIdentificationEntityTypeVS"
      },
      "name" : "Entity Type for De-Identification valueset",
      "description" : "ValueSet Entity Type for De-Identification",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/78f68a27-c439-4cd5-9ca2-ebc882468ade"
      },
      "name" : "ex-Bundle-DeathCert-pandemicIPS-VRDR",
      "description" : "The following bundle reflects a complete death certificate record, including:\n* the decedent demographics, including death date/time,\n* their next-of-kin demographics,\n* coded cause of death information,\n* coded usual occupation and associated usual industry,\n* death pronouncer,\n* death certifier,\n* funeral home information, and\n* burial information.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/e817cefe-a7c4-487a-8116-be23cf865f3f"
      },
      "name" : "ex-Bundle-DeathCert-pandemicIPS-VRDR-stage-1",
      "description" : "In addition to pseudonymizing the Decedent Identifiers and Patient name, we are also applying pseudoidentifiers and names for the:\n* Decedent Mother\n* Decedent Father\n* Decedent Spouse\n\nThe indirect identifiers in this record will be addressed during stage 2 de-identification.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/fc7b32fe-13b1-42e9-bca1-ff805587d072"
      },
      "name" : "ex-Bundle-DeathCert-pandemicIPS-VRDR-stage-2",
      "description" : "The following bundle reflects the sample mortality data after applying the approved de-identification methods to the pseudonymized bundle as described in section IPS Data Element Mappings (FHIR). This shows:\n* Date shifting throughout the bundle (applies to the date of death), and\n* Data omissions, noting the data is omitted in emptyReason as ‘withheld’ at the section level, and as ‘masked’ in dataAbsentReason at the data element level.\n\nThe majority of the death certificate is redacted leaving the remaining data deeded for the study:\n* coded cause of death\n* coded usual occupation and associated usual industry,\n* pseudonymized decedent demographics, including date/time of death",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/80c516fd-9c84-4924-875b-bf0048979ae1"
      },
      "name" : "ex-Bundle-secondaryUse-pandemicIPS-example-patient",
      "description" : "The Origional FHIR Document provided by the health Data Holder. \nThe following bundle provides an example view of a record that could be in the research cohort for the pandemic patient. \nThere have been no alterations to this original record.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/430e32bc-be3e-4c42-a17b-461ea4f402d4"
      },
      "name" : "ex-Bundle-secondaryUse-pandemicIPS-example-patient-1-stage-1",
      "description" : "The following bundle provides an example view of the sample patient record after applying pseudonymization. \nThis shows:\n- A pseudo-identifier has been applied to the patient resource and replaces the original patient identifier throughout the document.\n- A pseudo-name has been applied to the patient resource and replaces the original patient name throughout the document. Note that a pseudo-name is required as content is not permitted to be omitted or replaced with a null flavor in FHIR patient resources.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/6603561c-2888-4355-9df4-23675f6eb458"
      },
      "name" : "ex-Bundle-secondaryUse-pandemicIPS-example-patient-1-stage-2",
      "description" : "The following bundle provides an example view of the sample patient record after applying the approved de-identification methods to the pseudonymized bundle as described in section IPS Data Element Mappings (FHIR). \nThis shows:\n- Date shifting throughout the bundle (e.g. dates associated with problems, procedures, medications, immunizations, allergies, etc.)\n- The Patient's birthdate has been date-shifted forward by 107 days.\n- Data omissions, noting the data is omitted in emptyReason as ‘withheld’ at the section level, and as ‘masked’ in dataAbsentReason at the data element level.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/ex-Decedent-pandemicIPS-VRDR"
      },
      "name" : "ex-Decedent-pandemicIPS-VRDR",
      "description" : "The following patient resource represents the decedent referenced in the death certificate document bundle. This is the stage 0 version of the patient, where no de-identification has been applied and all direct identifiers are present.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/ex-Decedent-pandemicIPS-VRDR-stage-1"
      },
      "name" : "ex-Decedent-pandemicIPS-VRDR-stage-1",
      "description" : "Stage 1 de-identification of the patient. \nStage 1 applies reversible pseudonymization to direct identifiers needed for linkage (decedent name and identifier).",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/ex-Decedent-pandemicIPS-VRDR-stage-2"
      },
      "name" : "ex-Decedent-pandemicIPS-VRDR-stage-2",
      "description" : "Stage 2 de-identification of the patient where the telecom is masked, the address is reduced to the first 3 digits of the postal code, the general practitioner can be seen as masked, and the birthdate has been date-shifted forward by 107 days.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/ex-Patient-secondaryUse-pandemicIPS"
      },
      "name" : "ex-Patient-secondaryUse-pandemicIPS",
      "description" : "The following patient resource represents the patient referenced in the IPS document bundle. This is the stage 0 version of the patient, where no de-identification has been applied and all direct identifiers are present.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/ex-Patient-secondaryUse-pandemicIPS-stage-1"
      },
      "name" : "ex-Patient-secondaryUse-pandemicIPS-stage-1",
      "description" : "Stage 1 de-identification of the patient. \nStage 1 applies reversible pseudonymization to direct identifiers needed for linkage (decedent name and identifier).",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/ex-Patient-secondaryUse-pandemicIPS-stage-2"
      },
      "name" : "ex-Patient-secondaryUse-pandemicIPS-stage-2",
      "description" : "Stage 2 de-identification of the patient where the telecom is masked, the address is reduced to the first 3 digits of the postal code, the general practitioner can be seen as masked, and the birthdate has been date-shifted forward by 107 days.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      }],
      "reference" : {
        "reference" : "Practitioner/ex-Practitioner-IPS-SimoneHeps"
      },
      "name" : "ex-Practitioner-IPS-SimoneHeps",
      "description" : "This example practitioner is made to be reference by other example resources realted to IPS.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/IHE.DeId.AuditCreator"
      },
      "name" : "IHE DeId Audit Creator",
      "description" : "CapabilityStatement for [DeIdentification Audit Creator](security.html) Actor in [DeIdentification Handbook](index.html).\n\nThis actor is derived off of the [ATNA Secure Application](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html#9.1.1.2) \nor [ATNA Secure Node](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html#9.1.1.1) actor \nwith [ATNA ATX:FHIR Feed Option](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html). \n\nThis actor is derived off of the [Basic Audit Log Patterns (BALP)](https://profiles.ihe.net/ITI/BALP/index.html) \n[Audit Creator](https://profiles.ihe.net/ITI/BALP/volume-1.html#152111-audit-creator) recording rich audit log entries to ATNA.\n\n- This actor is involved in the generation of De-Identified data, and thus would record [De-Identification Audit Events](StructureDefinition-IHE.BasicAudit.DeIdentification.Source.html)\n- This actor may be involved in events that uncover a Privacy Disclosure, and thus would record [Privacy Disclosure Audit Events](https://build.fhir.org/ig/IHE/ITI.BasicAudit/StructureDefinition-IHE.BasicAudit.PrivacyDisclosure.Source.html).",
      "exampleBoolean" : false
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "De-Identification Handbook Home",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "intro.html"
        }],
        "nameUrl" : "intro.html",
        "title" : "Introduction",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "glossary.html"
        }],
        "nameUrl" : "glossary.html",
        "title" : "Glossary",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "concepts.html"
        }],
        "nameUrl" : "concepts.html",
        "title" : "Concepts",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "data-types.html"
        }],
        "nameUrl" : "data-types.html",
        "title" : "Data Types",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "techniques.html"
        }],
        "nameUrl" : "techniques.html",
        "title" : "Techniques",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "process.html"
        }],
        "nameUrl" : "process.html",
        "title" : "Process",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "ihe-use.html"
        }],
        "nameUrl" : "ihe-use.html",
        "title" : "IHE Use",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "security.html"
        }],
        "nameUrl" : "security.html",
        "title" : "Security Considerations",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "dicom-example.html"
        }],
        "nameUrl" : "dicom-example.html",
        "title" : "DICOM Example",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "fhir-example.html"
        }],
        "nameUrl" : "fhir-example.html",
        "title" : "FHIR Example",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "hl7-example.html"
        }],
        "nameUrl" : "hl7-example.html",
        "title" : "HL7 v2 Example",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "family-planning.html"
        }],
        "nameUrl" : "family-planning.html",
        "title" : "Family Planning Example",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "ips-ehds-example.html"
        }],
        "nameUrl" : "ips-ehds-example.html",
        "title" : "IPS EHDS2",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "download.html"
        }],
        "nameUrl" : "download.html",
        "title" : "Download and Analysis",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "issues.html"
        }],
        "nameUrl" : "issues.html",
        "title" : "Significant Changes and Issues",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "references.html"
        }],
        "nameUrl" : "references.html",
        "title" : "References",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "resources/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
