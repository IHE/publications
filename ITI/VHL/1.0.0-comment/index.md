# Verifiable Health Links (VHL) Home - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* **Verifiable Health Links (VHL) Home**

## Verifiable Health Links (VHL) Home

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/ImplementationGuide/ihe.iti.vhl | *Version*:1.0.0-comment |
| Active as of 2026-06-14 | *Computable Name*:IHE_ITI_VHL |

The Verifiable Health Links (VHL) profile defines protocols and patterns that allow the sharing of health documents in a auditable and verfiable manner within and across jurisdictional boundaries. The VHL profile describes mechanisms, the VHLs, that an individual, the VHL Holder, uses to provide authorize access to their health records from an issuer, the [VHL Sharer](ActorDefinition-VHLSharer.md), to a third party, the [VHL Receiver](ActorDefinition-VHLReceiver.md). The means by which the VHL is held by the VHL Holder or shared by the VHL Holder to the [VHL Receiver](ActorDefinition-VHLReceiver.md) are beyond the scope of this profile.

| |
| :--- |
| [Significant Changes, Open and Closed Issues](issues.md) |

### Organization of This Guide

This guide is organized into the following sections:

1. Volume 1:
1. [Introduction](volume-1.md)
1. [Actors, Transactions, and Content](volume-1.md#actors-and-transactions)
1. [Actor Options](volume-1.md#actor-options)
1. [Actor Required Groupings](volume-1.md#required-groupings)
1. [Overview](volume-1.md#overview)
1. [Security Considerations](volume-1.md#security-considerations)
1. [Cross Profile Considerations](volume-1.md#other-grouping)

1. Volume 2: Transaction Detail
1. [Submit PKI Material with DID [ITI-YY1]](ITI-YY1.md)
1. [Retrieve Trust List with DID [ITI-YY2]](ITI-YY2.md)
1. [Generate VHL [ITI-YY3]](ITI-YY3.md)
1. [Provide VHL [ITI-YY4]](ITI-YY4.md)
1. [Retrieve Manifest [ITI-YY5]](ITI-YY5.md)

1. Other
1. [Test Plan](testplan.md)
1. [Changes to Other IHE Specifications](other.md)
1. [Download and Analysis](download.md)
1. [Appendix A: Comparison of VHL and SHL](vhl_vs_shl.md)

See also the [Table of Contents](toc.md) and the index of [Artifacts](artifacts.md) defined as part of this implementation guide.

### Conformance Expectations

IHE uses the normative words: "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "MAY", and "OPTIONAL" according to [standards conventions](https://profiles.ihe.net/GeneralIntro/ch-E.html).

#### Must Support

The use of `mustSupport` in StructureDefinition profiles equivalent to the IHE use of **R2** as defined in [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.10-profiling-conventions-for-constraints-on-fhir).

mustSupport of true - only has a meaning on items that are minimal cardinality of zero (0), and applies only to the source actor populating the data. The source actor shall populate the elements marked with MustSupport, if the concept is supported by the actor, a value exists, and security and consent rules permit. The consuming actors should handle these elements being populated or being absent/empty. Note that sometimes mustSupport will appear on elements with a minimal cardinality greater than zero (0), this is due to inheritance from a less constrained profile.



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "ihe.iti.vhl",
  "url" : "https://profiles.ihe.net/ITI/VHL/ImplementationGuide/ihe.iti.vhl",
  "version" : "1.0.0-comment",
  "name" : "IHE_ITI_VHL",
  "title" : "Verifiable Health Links",
  "status" : "active",
  "date" : "2026-06-14T15:36:12-05:00",
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
  "description" : "Patient Mediated sharing of their health information using internet accessible verifiable health link.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "packageId" : "ihe.iti.vhl",
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
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2024+"
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
        "valueString" : "produce-jekyll-data"
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
        "valueString" : "path-binary"
      },
      {
        "url" : "value",
        "valueString" : "input/tests/features"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-test"
      },
      {
        "url" : "value",
        "valueString" : "input/tests/features"
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
        "valueString" : "https://profiles.ihe.net/ITI/VHL/history.html"
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
        "valueString" : "2024+"
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
        "valueCode" : "produce-jekyll-data"
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
        "valueCode" : "path-binary"
      },
      {
        "url" : "value",
        "valueString" : "input/tests/features"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-test"
      },
      {
        "url" : "value",
        "valueString" : "input/tests/features"
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
        "valueString" : "https://profiles.ihe.net/ITI/VHL/history.html"
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
        "valueString" : "Requirements"
      }],
      "reference" : {
        "reference" : "Requirements/AuditEventAccess"
      },
      "name" : "Audit Event - Accessed Health Data",
      "description" : "**Purpose:**  \nEnsure that the VHL Sharer records audit events when health documents are accessed or retrieved using a Verified Health Link (VHL).\n\n**Description:**  \nThe [VHL Sharer](ActorDefinition-VHLSharer.html) MAY record audit events for critical events involving document access. These MAY include:\n* A request from a [VHL Holder](ActorDefinition-VHLHolder.html) to generate a VHL\n* A request from a [VHL Receiver](ActorDefinition-VHLReceiver.html) to retrieve one or more health documents using a valid VHL\n* Any access to protected health content triggered by the use of a VHL",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Requirements"
      }],
      "reference" : {
        "reference" : "Requirements/AuditEventReceived"
      },
      "name" : "Audit Event - Received Health Data",
      "description" : "**Purpose:**  \nEnsure that the VHL Receiver generates audit records when receiving and using a Verified Health Link (VHL) to retrieve health information, in support of accountability and traceability.\n\n**Description:**  \nThe [VHL Receiver](ActorDefinition-VHLReceiver.html) MAY record audit events for critical events during its handling of a VHL. These MAY include:\n* Receipt of a VHL from a [VHL Holder](ActorDefinition-VHLHolder.html)\n* Verification of the VHL's digital signature and trust chain\n* Use of the VHL to retrieve referenced health documents from a [VHL Sharer](ActorDefinition-VHLSharer.html)\n* Access, rendering, or internal processing of the retrieved documents",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Requirements"
      }],
      "reference" : {
        "reference" : "Requirements/CreateSecureChannel"
      },
      "name" : "Create Secure Channel",
      "description" : "The [VHL Sharer](ActorDefinition-VHLSharer.html) and [VHL Receiver](ActorDefinition-VHLReceiver.html) SHALL jointly establish a secure connection prior to executing any Verified Health Link (VHL) transactions involving the exchange of sensitive data.\n\nThis requirement is satisfied by implementing secure channel establishment as defined in the [Audit Trail and Node Authentication (ATNA)](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html) Profile, specifically through the Authenticate Node [ITI-19] transaction.\n\nThis requirement entails:\n* The VHL Receiver initiating a secure connection as the client and presenting valid credentials\n* The VHL Sharer responding as the server, presenting its own credentials and validating the client's credentials against a trusted Certificate Authority or Trust Anchor\n\nEstablishing this secure channel ensures confidentiality, integrity, and bilateral authentication of all subsequent communications, and fulfills the trust obligations defined in the [Establish Trust](Requirements-EstablishTrust.html) requirement.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Requirements"
      }],
      "reference" : {
        "reference" : "Requirements/EstablishTrust"
      },
      "name" : "Establish Trust",
      "description" : "Before participating in any Verified Health Link (VHL) transactions, the [VHL Sharer](ActorDefinition-VHLSharer.html) and [VHL Receiver](ActorDefinition-VHLReceiver.html) SHALL establish a trust relationship based on shared acceptance of a designated [Trust Anchor](ActorDefinition-TrustAnchor.html).\n\nTrust is established by referencing and accepting public key material published and distributed in accordance with this specification ( via [Retrieve Trust List Response](Requirements-RespondtoRetrieveTrustListRequest.html)).\n\nAll participants SHALL validate digital signatures using keys that are anchored in the agreed trust framework.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ExampleScenario"
      }],
      "reference" : {
        "reference" : "ExampleScenario/UseCaseEVAC"
      },
      "name" : "European Vaccination Card (EVC)",
      "description" : "Use case describing the European Vaccination Card, a citizen-held portable vaccination record enabling bilateral verification across EU member states via an interoperable trust architecture.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Requirements"
      }],
      "reference" : {
        "reference" : "Requirements/RespondtoGenerateVHLRequest"
      },
      "name" : "Generate a VHL Authorization Mechanism Based on Query Parameters",
      "description" : "The [VHL Sharer](ActorDefinition-VHLSharer.html) SHALL generate a Verified Health Link (VHL) to be issued to a [VHL Holder](ActorDefinition-VHLHolder.html).\n\nThe Sharer SHALL conduct all necessary tasks to prepare the content referenced by the VHL. These tasks MAY be further defined by applicable content profiles or implementation guides, and MAY include:\n* Generation of new documents in real time;\n* Querying for existing documents (e.g., IPS, CDA, FHIR Bundles) associated with the VHL Holder; or\n* Creation of digital signatures on one or more documents.\n\nOnce content preparation is complete, the Sharer SHALL construct the VHL payload and sign it to produce a cryptographically verifiable authorization mechanism.\n\n**Optional behaviors:**\n* The Sharer MAY record consent in accordance with the [Record Consent](Requirements-RecordConsent.html) requirement.\n* The Sharer MAY log an audit event describing the VHL issuance, in accordance with the [Audit Event – Accessed Health Data](Requirements-AuditEventAccess.html) requirement.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "OperationDefinition"
      }],
      "reference" : {
        "reference" : "OperationDefinition/generate-vhl"
      },
      "name" : "Generate VHL",
      "description" : "This operation generates a Verifiable Health Link (VHL) for transmission or display. The VHL MAY be returned as a QR code (HCERT/CWT) or, when the VHL Sharer supports the VC Envelope Option, as a signed W3C Verifiable Credential.\n\nInput Parameters:\n- sourceIdentifier: Patient identifier (required)\n- exp: Expiration time in Epoch seconds (optional)\n- flag: Single-character flags in alphabetical order - L (long-term use), P (Passcode required), U (direct file access) (optional)\n- label: Short description up to 80 characters (optional)\n- passcode: User-supplied passcode for passcode-protected VHLs (optional)\n- purposeOfUse: Purpose(s) of use the VHL Holder is authorizing for this share, bound to the HL7 v3 PurposeOfUse value set (optional). Populates Consent.provision.purpose when an IHE PCF Consent is bound to the generated folder.\n- format: Requested output carrier - 'qrcode' (default) or 'vc'. 'vc' requires the VHL Sharer to support the VC Envelope Option.\n\nOutput Generation:\n- When format=qrcode: Returns a Binary resource containing the QR code image (PNG or SVG format) that encodes the VHL as an HCERT/CWT structure.\n- When format=vc: Returns a Binary resource (media type application/vc+ld+json) containing a JSON-LD Verifiable Credential whose credentialSubject carries the VHL payload, signed with the VHL Sharer's trust-network key using W3C Data Integrity (DataIntegrityProof, cryptosuite ecdsa-2019).\n- Exactly one of qrcode or verifiableCredential SHALL be populated.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ExampleScenario"
      }],
      "reference" : {
        "reference" : "ExampleScenario/UseCaseHajjPilgrimage"
      },
      "name" : "Hajj Pilgrimage VHL Flow",
      "description" : "Use case describing the sharing of pilgrim health records (International Patient Summary) during Hajj using VHL with WHO GDHCN trust infrastructure for cross-border verification.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Requirements"
      }],
      "reference" : {
        "reference" : "Requirements/InitiateRetrieveTrustListRequest"
      },
      "name" : "Initiate Retrieve Trust List Request",
      "description" : "A [VHL Sharer](ActorDefinition-VHLSharer.html) or [VHL Receiver](ActorDefinition-VHLReceiver.html), as a participant in the trust network, SHALL be capable of retrieving public key infrastructure (PKI) material from a designated [Trust Anchor](ActorDefinition-TrustAnchor.html).\n\nThe retrieved material MAY include:\n* Public key certificates and associated trust lists\n* Certificate revocation data (e.g., CRLs, OCSP responses)\n* Metadata used to:\n  - Validate digital signatures on VHLs and related resources\n  - Establish secure connections\n  - Decrypt content protected via asymmetric encryption\n\nParticipants SHOULD cache the received trust list to reduce network and server load.\n\n**Preconditions:**\n* The requesting participant knows in advance the endpoint from which to retrieve PKI material, as published or distributed by the Trust Anchor.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Requirements"
      }],
      "reference" : {
        "reference" : "Requirements/InitiateSubmitPKIMaterialRequest"
      },
      "name" : "Initiate Submit PKI Material Request",
      "description" : "When a [VHL Sharer](ActorDefinition-VHLSharer.html) or [VHL Receiver](ActorDefinition-VHLReceiver.html) generates a new public-private key pair for use within the VHL trust network, they SHALL submit the corresponding public key material to the [Trust Anchor](ActorDefinition-TrustAnchor.html) for validation and inclusion in the trust list.\n\nThe submission MAY include metadata to support categorization of key usage (e.g., digital signatures, encryption, secure channels) and business or operational context.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "TestPlan"
      }],
      "reference" : {
        "reference" : "TestPlan/TestPlan-QRCodeFlow"
      },
      "name" : "Integration Test Plan – QR Code Generation and Validation Flow",
      "description" : "Integration test plan for the **QR Code Generation and Validation Flow** of the IHE ITI\nVerifiable Health Links (VHL) profile.\n\nScope: validates multi-actor, cross-transaction scenarios that span ITI-YY3 (Generate VHL),\nITI-YY4 (Provide VHL), and ITI-YY5 (Retrieve Manifest). Tests verify that the QR code\ngenerated in YY3 can be decoded in YY4, that the decoded VHL payload's manifest URL is used\ncorrectly in YY5, and that the full end-to-end pipeline including passcode handling, signature\nverification, and VHL authorization succeeds.\n\nActors exercised: VHL Holder, VHL Sharer, VHL Receiver.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "TestPlan"
      }],
      "reference" : {
        "reference" : "TestPlan/TestPlan-TrustEstablishment"
      },
      "name" : "Integration Test Plan – Trust Establishment",
      "description" : "Integration test plan for the **Trust Establishment** workflow of the IHE ITI Verifiable Health\nLinks (VHL) profile.\n\nScope: validates multi-actor, cross-transaction scenarios that span ITI-YY1 (Submit PKI Material)\nand ITI-YY2 (Retrieve Trust List) and cannot be covered by unit tests. Tests verify that a DID\nDocument submitted in YY1 is subsequently retrievable via YY2 in the same session, that both\nthe VHL Sharer and VHL Receiver can retrieve peer keys, that a full round-trip signature\nverification succeeds, and that revocation propagates correctly across actors.\n\nActors exercised: VHL Sharer, Trust Anchor, VHL Receiver.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ExampleScenario"
      }],
      "reference" : {
        "reference" : "ExampleScenario/UseCasePH4H"
      },
      "name" : "Pan-American Highway for Health (PH4H)",
      "description" : "Use case describing cross-border health record sharing in the Americas using VHL to support continuity of care for internal migrants across overlapping trust networks.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Requirements"
      }],
      "reference" : {
        "reference" : "Requirements/ProvideVHL"
      },
      "name" : "Provide VHL",
      "description" : "The Provide VHL transaction enables a [VHL Holder](ActorDefinition-VHLHolder.html) to transmit a Verified Health Link (VHL) to a [VHL Receiver](ActorDefinition-VHLReceiver.html). The VHL serves as a signed authorization mechanism that allows the Receiver to subsequently retrieve one or more health documents from a VHL Sharer.\n\nDepending on the use case, the VHL MAY be rendered or transmitted using formats such as QR code or deep link (HTTPS URL).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Requirements"
      }],
      "reference" : {
        "reference" : "Requirements/ReceiveTrustList"
      },
      "name" : "Receive Trust List",
      "description" : "A [VHL Sharer](ActorDefinition-VHLSharer.html) or [VHL Receiver](ActorDefinition-VHLReceiver.html), after receiving PKI material from a [Trust Anchor](ActorDefinition-TrustAnchor.html), SHALL validate and process the trust information for subsequent cryptographic operations.\n\nParticipants SHOULD:\n* Cache the received trust list or certificate material to reduce network and server load\n* Validate digital signatures or trust paths before use in VHL validation or secure channel sessions\n* Monitor certificate expiration or revocation status where applicable",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Requirements"
      }],
      "reference" : {
        "reference" : "Requirements/RespondtoProvideVHL"
      },
      "name" : "Receive VHL authorization mechanism",
      "description" : "The [VHL Receiver](ActorDefinition-VHLReceiver.html) SHALL be capable of receiving a Verified Health Link (VHL) from a [VHL Holder](ActorDefinition-VHLHolder.html) through a supported transport mechanism (e.g., QR code scan, direct URL, or digital message).\n\nUpon receipt, the Receiver SHALL:\n* Parse the VHL\n* Validate its digital signature against a trusted key published by a recognized Trust Anchor\n* Prepare to retrieve the associated health documents\n\nReceipt of the VHL may occur through direct user interaction (e.g., scanning a QR code) or automated channels, depending on the implementation context.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Requirements"
      }],
      "reference" : {
        "reference" : "Requirements/RecordAccessToHealthData"
      },
      "name" : "Record Access to Health Data",
      "description" : "The [VHL Sharer](ActorDefinition-VHLSharer.html) MAY record audit events when health data is accessed through a Verified Health Link (VHL). These events support accountability, traceability, and compliance with applicable security and privacy regulations.\n\nAudit records MAY include the following metadata:\n* Timestamp of the access event\n* Identity of the accessing actor (e.g., person or system)\n* Type and identifier of the accessed resource (e.g., DocumentReference)\n* Purpose of access, where available (e.g., treatment, consent verification)\n* Outcome of the event (e.g., success, failure)\n\nAudit events SHALL be represented using the FHIR `AuditEvent` resource, and SHOULD conform to applicable IHE profiles such as ATNA where appropriate. Implementers MAY define additional audit logging behavior to meet jurisdictional or organizational policies.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Requirements"
      }],
      "reference" : {
        "reference" : "Requirements/RecordConsent"
      },
      "name" : "Record Consent",
      "description" : "The [VHL Sharer](ActorDefinition-VHLSharer.html) SHALL record the consent granted by a [VHL Holder](ActorDefinition-VHLHolder.html) to authorize the sharing of their health data via a Verified Health Link (VHL). This consent confirms that the Holder agrees to the creation of a VHL and its use by authorized [VHL Receivers](ActorDefinition-VHLReceiver.html) to access specific health documents.\n\nIn this requirement, the VHL Sharer acts as a Consent Recorder, as defined in the [Privacy Consent on FHIR (PCF)](https://profiles.ihe.net/ITI/PCF/index.html) profile. Specifically, the Sharer SHALL initiate the [Access Consent - ITI-108](https://profiles.ihe.net/ITI/PCF/ITI-108.html) transaction to formally capture the Holder's consent.\n\nThe ITI-108 transaction SHOULD be invoked as part of the actions triggered by a Generate VHL request, particularly when legal, jurisdictional, or organizational policy requires explicit, recorded consent prior to enabling document sharing.\n\nThis requirement enables lawful, transparent sharing of personal health information across organizations and trust domains.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Requirements"
      }],
      "reference" : {
        "reference" : "Requirements/InitiateVHLGenerationRequest"
      },
      "name" : "Request that a VHL authorization mechanism be issued",
      "description" : "A [VHL Holder](ActorDefinition-VHLHolder.html) initiates a request to a [VHL Sharer](ActorDefinition-VHLSharer.html) to generate a Verified Health Link (VHL) that references one or more health documents. The resulting VHL allows the Holder to subsequently share access to those documents with a [VHL Receiver](ActorDefinition-VHLReceiver.html).\nThe Holder MAY include optional parameters to constrain or protect the issued VHL-such as defining an expiration period, scoping which documents are included, or requiring a passcode for retrieval. These parameters guide the Sharer's issuance of the VHL and influence the conditions under which the associated documents may be accessed.\n\n**Preconditions:**\n  * The [VHL Holder](ActorDefinition-VHLHolder.html) SHALL trust that the [VHL Sharer](ActorDefinition-VHLSharer.html) has been authorized by its jurisdiction to generate VHLs and to provide access to the corresponding health documents.\n  * Optionally, the [VHL Holder](ActorDefinition-VHLHolder.html) has selected consent directives or selective disclosure preferences, as permitted by the applicable content profile.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Requirements"
      }],
      "reference" : {
        "reference" : "Requirements/RequestVHLDocument"
      },
      "name" : "Request VHL Document",
      "description" : "The [VHL Receiver](ActorDefinition-VHLReceiver.html) SHALL initiate a request to retrieve a single health document from a [VHL Sharer](ActorDefinition-VHLSharer.html), using a previously received and validated Verified Health Link (VHL).\n\nThis transaction SHALL be conducted over a secure channel. Both the Receiver and Sharer SHALL validate each other's participation in the trust network using PKI material published by the [Trust Anchor](ActorDefinition-TrustAnchor.html).\n\n**Optional behaviors:**\n* The VHL Receiver MAY verify the digital signature of the returned health document to confirm its authenticity, integrity, and provenance, as defined in the [Verify Document Signature](Requirements-VerifyDocumentSignature.html) requirement.\n* The VHL Sharer MAY record an audit event documenting the access request by the Receiver, in accordance with the [Audit Event – Received Health Data](Requirements-AuditEventReceived.html) requirement.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Requirements"
      }],
      "reference" : {
        "reference" : "Requirements/RequestVHLDocuments"
      },
      "name" : "Request VHL Documents",
      "description" : "The [VHL Receiver](ActorDefinition-VHLReceiver.html) SHALL initiate a request to retrieve a set of health documents from a [VHL Sharer](ActorDefinition-VHLSharer.html), using a previously received and validated Verified Health Link (VHL).\n\nBoth the Receiver and Sharer SHALL validate each other's participation in the trust network using PKI material published by the [Trust Anchor](ActorDefinition-TrustAnchor.html).\n\n**Optional behaviors:**\n* The VHL Sharer MAY record an audit event documenting the access request by the Receiver, in accordance with the [Audit Event – Received Health Data](Requirements-AuditEventReceived.html) requirement.\n* This transaction MAY be conducted over a secure channel, as defined in the [Audit Trail and Node Authentication (ATNA)](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html#9.1) Profile.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Requirements"
      }],
      "reference" : {
        "reference" : "Requirements/RespondtoSubmitPKIMaterialRequest"
      },
      "name" : "Respond to Submit PKI Material Request",
      "description" : "Upon receipt of public key material from a [VHL Sharer](ActorDefinition-VHLSharer.html) or [VHL Receiver](ActorDefinition-VHLReceiver.html), the [Trust Anchor](ActorDefinition-TrustAnchor.html) SHALL validate, organize, sign, and expose the PKI material as part of a trusted, canonical trust list.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Requirements"
      }],
      "reference" : {
        "reference" : "Requirements/RespondtoRetrieveTrustListRequest"
      },
      "name" : "Retrieve Trust List Response",
      "description" : "Upon receipt of Retrieve Trust List Request from a [VHL Sharer](ActorDefinition-VHLSharer.html) or [VHL Receiver](ActorDefinition-VHLReceiver.html), the [Trust Anchor](ActorDefinition-TrustAnchor.html) SHALL organize, sign, and expose the PKI material as part of a trusted, canonical trust list.\n\nThis MAY include:\n* Public key certificates, trust chains, or JWKS structures\n* Revocation data (CRL or OCSP)\n* Usage metadata (e.g., key type, scope, intended usage)\n\nThe Trust Anchor SHALL only respond with validated and trustworthy material in accordance with the governance policies of the VHL trust framework. This signed trust list enables all participants in the VHL trust network to verify digital signatures and establish secure connections in accordance with the governance policies of the Trust Anchor.\n\nUpon receipt of this response, participants SHALL process the trust list as described in [Receive Trust List](Requirements-ReceiveTrustList.html).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ExampleScenario"
      }],
      "reference" : {
        "reference" : "ExampleScenario/UseCaseTEFCA"
      },
      "name" : "TEFCA Health Information Exchange",
      "description" : "Use case describing how US TEFCA participants (QHINs, providers, payers) can act as VHL Sharers and Receivers using existing TEFCA certificate infrastructure as a trust anchor for VHL exchanges.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "TestPlan"
      }],
      "reference" : {
        "reference" : "TestPlan/TestPlan-TrustAnchor"
      },
      "name" : "Test Plan – Trust Anchor",
      "description" : "Unit test plan for the **Trust Anchor** actor of the IHE ITI Verifiable Health Links (VHL) profile.\n\nScope: validates all behaviour expected of a Trust Anchor as described in ITI-YY1 (responder)\nand ITI-YY2 (responder). Each test suite (testCase) corresponds to one transaction and exercises\nthree atomic feature files: message semantics (shared), responder expected actions, and security\nconsiderations.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "TestPlan"
      }],
      "reference" : {
        "reference" : "TestPlan/TestPlan-VHLReceiver"
      },
      "name" : "Test Plan – VHL Receiver",
      "description" : "Unit test plan for the **VHL Receiver** actor of the IHE ITI Verifiable Health Links (VHL) profile.\n\nScope: validates all behaviour expected of a VHL Receiver across its four transactions:\nsubmitting its own PKI material (ITI-YY1 initiator), retrieving the trust list (ITI-YY2\ninitiator), decoding and validating a VHL QR code (ITI-YY4 responder), and requesting the\ndocument manifest (ITI-YY5 initiator). Each test suite exercises three atomic feature files.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "TestPlan"
      }],
      "reference" : {
        "reference" : "TestPlan/TestPlan-VHLSharer"
      },
      "name" : "Test Plan – VHL Sharer",
      "description" : "Unit test plan for the **VHL Sharer** actor of the IHE ITI Verifiable Health Links (VHL) profile.\n\nScope: validates all behaviour expected of a VHL Sharer across its four transactions:\nsubmitting its own PKI material (ITI-YY1 initiator), retrieving the trust list to obtain peer\nkeys (ITI-YY2 initiator), generating VHLs on demand (ITI-YY3 responder), and serving document\nmanifests to authorised VHL Receivers (ITI-YY5 responder). Each test suite corresponds to one\ntransaction and exercises three atomic feature files.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      }],
      "reference" : {
        "reference" : "ActorDefinition/TrustAnchor"
      },
      "name" : "Trust Anchor",
      "description" : "An authorized organization in the trust framework that manages and distributes PKI material—such as public key certificates and revocation lists—to participants in the network.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/IHE.VHL.TrustAnchor"
      },
      "name" : "Trust Anchor",
      "description" : "CapabilityStatement for Trust Anchor Actor in the IHE IT Infrastructure Technical Framework Supplement IHE VHL. An authorized organization in the trust framework that manages and distributes PKI material—such as public key certificates and revocation lists—to participants in the network. It ensures that this material is trustworthy and available, enabling VHL Sharers and VHL Receivers to verify digital signatures and authenticate the origin of shared data.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Requirements"
      }],
      "reference" : {
        "reference" : "Requirements/VerifyDocumentSignature"
      },
      "name" : "Verify Document Signature",
      "description" : "The [VHL Receiver](ActorDefinition-VHLReceiver.html), upon receiving a digitally signed health document from a [VHL Sharer](ActorDefinition-VHLSharer.html), MAY verify the document's digital signature using previously retrieved PKI material.\n\nThis verification process confirms the authenticity, integrity, and provenance of the document independently of the Verified Health Link (VHL) itself.\n\nThe public key used for this verification MAY:\n* Originate from a different trust network than the one used to validate the VHL\n* Be unrelated to the key used to validate the VHL signature\n\nImplementers SHOULD consult cross-profile guidance regarding interoperability with the [IHE Document Digital Signature (DSG) profile](https://profiles.ihe.net/ITI/TF/Volume1/ch-37.html), particularly in cases where additional attestation, long-term non-repudiation, or multi-party signatures are involved.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      }],
      "reference" : {
        "reference" : "ActorDefinition/VHLHolder"
      },
      "name" : "VHL Holder",
      "description" : "An individual—typically the patient or their delegate—who possesses a Verified Health Link (VHL) and presents it to a VHL Receiver.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      }],
      "reference" : {
        "reference" : "ActorDefinition/VHLReceiver"
      },
      "name" : "VHL Receiver",
      "description" : "A system or organization that receives a VHL from a VHL Holder and uses it to retrieve health documents from a VHL Sharer, after verifying the authenticity and integrity of the VHL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/VHLReceiverCapabilityStatement"
      },
      "name" : "VHL Receiver Client Capability Statement",
      "description" : "Capability Statement for a VHL Receiver implementing the Retrieve Manifest [ITI-YY5] transaction as a client. This client searches for List resources using VHL-authorized manifest URLs and can request inclusion of DocumentReference resources via the _include parameter.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      }],
      "reference" : {
        "reference" : "ActorDefinition/VHLSharer"
      },
      "name" : "VHL Sharer",
      "description" : "A system that generates VHLs, provides them to a VHL Holder, and responds to requests from a VHL Receiver to retrieve document manifests authorized by the VHL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/VHLSharerCapabilityStatement"
      },
      "name" : "VHL Sharer Server Capability Statement",
      "description" : "Capability Statement for a VHL Sharer implementing the Retrieve Manifest [ITI-YY5] transaction as a server. This server supports FHIR search on List resources with _include parameter to retrieve document manifests authorized by Verified Health Links.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ExampleScenario"
      }],
      "reference" : {
        "reference" : "ExampleScenario/UseCaseGDHCN"
      },
      "name" : "WHO GDHCN Trust Establishment",
      "description" : "Use case describing how participating jurisdictions establish trust within the WHO Global Digital Health Certification Network (GDHCN) through PKI material submission and trust list distribution.",
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
        "title" : "Verifiable Health Links (VHL) Home",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "volume-1.html"
        }],
        "nameUrl" : "volume-1.html",
        "title" : "1:XX Verifiable Health Links (VHL) - Volume 1",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "ITI-YY1.html"
        }],
        "nameUrl" : "ITI-YY1.html",
        "title" : "2:3.YY1 Submit PKI Material with DID",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "ITI-YY2.html"
        }],
        "nameUrl" : "ITI-YY2.html",
        "title" : "2:3.YY2 Retrieve Trust List with DID",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "ITI-YY3.html"
        }],
        "nameUrl" : "ITI-YY3.html",
        "title" : "2:3.YY3 Generate VHL",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "ITI-YY4.html"
        }],
        "nameUrl" : "ITI-YY4.html",
        "title" : "2:3.YY4 Provide VHL",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "ITI-YY5.html"
        }],
        "nameUrl" : "ITI-YY5.html",
        "title" : "2:3.YY5 Retrieve Manifest",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "testplan.html"
        }],
        "nameUrl" : "testplan.html",
        "title" : "Test Plan",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "other.html"
        }],
        "nameUrl" : "other.html",
        "title" : "Changes to Other IHE Specifications",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "vhl_vs_shl.html"
        }],
        "nameUrl" : "vhl_vs_shl.html",
        "title" : "Appendix A: Comparison of health links",
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
      "code" : "path-pages",
      "value" : "input/tests/features"
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
