# Patient Demographics Query for Mobile - Patient Demographics Query for Mobile (PDQm) v3.2.0

* [**Table of Contents**](toc.md)
* **Patient Demographics Query for Mobile**

## Patient Demographics Query for Mobile

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PDQm/ImplementationGuide/ihe.iti.pdqm | *Version*:3.2.0 |
| Active as of 2025-11-04 | *Computable Name*:IHE_PDQm |

The Patient Demographics Query for Mobile (PDQm) Profile defines a lightweight RESTful interface to a patient demographics supplier leveraging technologies readily available to mobile applications and lightweight browser based applications.

| |
| :--- |
| [Significant Changes, Open and Closed Issues](issues.md) |

**[Search this IG](https://www.google.com/search?q=site%3Ahttps%3A%2F%2Fprofiles.ihe.net%2FITI%2FPDQm)**

### Organization of This Guide

This guide is organized into the following sections:

* Volume 1: Profiles 
* [PDQm Introduction](volume-1.md)
* [PDQm Actors and Transactions](volume-1.md#1381-pdqm-actors-and-transactions)
* [PDQm Actor Options](volume-1.md#1382-pdqm-actor-options)
* [PDQm Required Groupings](volume-1.md#1383-pdqm-required-actor-grouping)
* [PDQm Overview](volume-1.md#1384-pdqm-overview)
* [PDQm Security Considerations](volume-1.md#1385-pdqm-security-considerations)
* [PDQm Cross-Profile Considerations](volume-1.md#1386-pdqm-cross-profile-considerations)
 
* Volume 2: Transaction Detail 
* [Mobile Patient Demographics Query [ITI-78]](ITI-78.md)
* [Patient Demographics Match [ITI-119]](ITI-119.md)
 
* Other 
* [Changes to Other IHE Specifications](other.md)
* [Download and Analysis](download.md)
* [Test Plan](testplan.md)
 

See also the [Table of Contents](toc.md) and the index of [Artifacts](artifacts.md) defined as part of this implementation guide.

### Conformance Expectations

IHE uses the normative words: "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "MAY", and "OPTIONAL" according to [standards conventions](https://profiles.ihe.net/GeneralIntro/ch-E.html).

PDQm uses `Must Support` in StructureDefinition profiles. This is equivalent to the IHE use of **R2** as defined in [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.10-profiling-conventions-for-constraints-on-fhir).



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "ihe.iti.pdqm",
  "url" : "https://profiles.ihe.net/ITI/PDQm/ImplementationGuide/ihe.iti.pdqm",
  "version" : "3.2.0",
  "name" : "IHE_PDQm",
  "title" : "Patient Demographics Query for Mobile (PDQm)",
  "status" : "active",
  "date" : "2025-11-04T12:07:10-06:00",
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
  "description" : "The Patient Demographics Query for Mobile (PDQm) Profile defines a lightweight RESTful interface to a patient demographics supplier leveraging technologies readily available to mobile applications and lightweight browser based applications.",
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
  "packageId" : "ihe.iti.pdqm",
  "license" : "CC-BY-4.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [
    {
      "id" : "hl7tx",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
        }
      ],
      "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
      "packageId" : "hl7.terminology.r4",
      "version" : "6.5.0"
    },
    {
      "id" : "hl7ext",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
        }
      ],
      "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
      "packageId" : "hl7.fhir.uv.extensions.r4",
      "version" : "5.2.0"
    },
    {
      "id" : "iheitibasicaudit",
      "uri" : "https://profiles.ihe.net/ITI/BALP/ImplementationGuide/ihe.iti.balp",
      "packageId" : "ihe.iti.balp",
      "version" : "1.1.x"
    }
  ],
  "definition" : {
    "extension" : [
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2020+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "Trial-Implementation"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "show-inherited-invariants"
          },
          {
            "url" : "value",
            "valueString" : "false"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "usage-stats-opt-out"
          },
          {
            "url" : "value",
            "valueString" : "false"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "logging"
          },
          {
            "url" : "value",
            "valueString" : "progress"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "shownav"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "false"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "urn:ihe:event-type-code"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "pin-canonicals"
          },
          {
            "url" : "value",
            "valueString" : "pin-multiples"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://profiles.ihe.net/ITI/PDQm/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
        "valueCode" : "hl7.fhir.uv.tools.r4#0.8.0"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2020+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "Trial-Implementation"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "show-inherited-invariants"
          },
          {
            "url" : "value",
            "valueString" : "false"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "usage-stats-opt-out"
          },
          {
            "url" : "value",
            "valueString" : "false"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "logging"
          },
          {
            "url" : "value",
            "valueString" : "progress"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "shownav"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "false"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "urn:ihe:event-type-code"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "pin-canonicals"
          },
          {
            "url" : "value",
            "valueString" : "pin-multiples"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://profiles.ihe.net/ITI/PDQm/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      }
    ],
    "resource" : [
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.PDQm.Match.Audit.Consumer"
        },
        "name" : "Audit Event for PDQm Match at Consumer",
        "description" : "Defines constraints on the AuditEvent (AuditMessage) Resource for a Patient Demographics Consumer to record when it performs a Patient Demographics Match [ITI-119](./ITI-119.html).\n- Build off of the IHE BasicAudit Query event\n- add the ITI-119 as a subtype\n- client is Patient Demographics Consumer\n- server is Patient Demographics Supplier\n- entity slice for query are REQUIRED\n- entity slice for transaction is available\n- entity for patient SHOULD be used when one patient is explicitly identified in the query parameters\n- source is the client",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.PDQm.Match.Audit.Supplier"
        },
        "name" : "Audit Event for PDQm Match at Supplier",
        "description" : "Defines constraints on the AuditEvent (AuditMessage) Resource when a Patient Demographics Supplier responds to a Patient Demographics Match [ITI-119](./ITI-119.html).\n- Build off of the IHE BasicAudit Query event\n- add the ITI-119 as a subtype\n- client is Patient Demographics Consumer\n- server is Patient Demographics Supplier\n- entity slice for query are REQUIRED\n- entity slice for transaction is available\n- entity for patient SHOULD be used when one patient is explicitly identified in the query parameters\n- source is the server",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.PDQm.Query.Audit.Consumer"
        },
        "name" : "Audit Event for PDQm Query at Consumer",
        "description" : "Defines constraints on the AuditEvent (AuditMessage) Resource for a Patient Demographics Consumer to record when it performs a Patient Demographics Query [ITI-78](./ITI-78.html).\n- Build off of the IHE BasicAudit Query event\n- add the ITI-78 as a subtype\n- client is Patient Demographics Consumer\n- server is Patient Demographics Supplier\n- entity slice for query are REQUIRED\n- entity slice for transaction is available\n- entity for patient SHOULD be used when one patient is explicitly identified in the query parameters\n- source is the client",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.PDQm.Query.Audit.Supplier"
        },
        "name" : "Audit Event for PDQm Query at Supplier",
        "description" : "Defines constraints on the AuditEvent (AuditMessage) Resource when a Patient Demographics Supplier responds to a Patient Demographics Query [ITI-78](./ITI-78.html).\n- Build off of the IHE BasicAudit Query event\n- add the ITI-78 as a subtype\n- client is Patient Demographics Consumer\n- server is Patient Demographics Supplier\n- entity slice for query are REQUIRED\n- entity slice for transaction is available\n- entity for patient SHOULD be used when one patient is explicitly identified in the query parameters\n- source is the server",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditPdqmMatch-consumer"
        },
        "name" : "Audit Example of ITI-119 at Consumer",
        "description" : "Audit Event for PDQm Query Transaction by the Patient Identifier Cross-reference Consumer\n\nWhere the $match operation was executed with the [example request parameters Bundle](Parameters-ex-match-input-patient-only.html).",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Match.Audit.Consumer"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditPdqmMatch-supplier"
        },
        "name" : "Audit Example of ITI-119 at Supplier",
        "description" : "Audit Event for PDQm Match Transaction by the Patient Identifier Cross-reference Supplier\n\nWhere the $match operation was executed with the [example request parameters Bundle](Parameters-ex-match-input-patient-only.html).\n\nNote the Supplier may choose to record patient identities found, but is not required to.\n\nGiven the Supplier chooses to record a patient in the AuditEvent \nWhen the search finds multiple Patients, \nThen the Supplier would create an AuditEvent for each of those Patients. \n\nThis example shows where ex-patient is returned. This single result does not affect the response returned on the ITI-119 that would include all results.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Match.Audit.Supplier"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditPdqmQuery-consumer"
        },
        "name" : "Audit Example of ITI-78 at Consumer",
        "description" : "Audit Event for PDQm Query Transaction by the Patient Identifier Cross-reference Consumer\n\nwhere the Query was executed with a GET as follows:\n\n```\nGET https://server.example.com/fhir/Patient?family=MOHR&given=ALICE&active=true&gender=female\nAccept: application/fhir+json; fhirVersion=4.0\n```",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Query.Audit.Consumer"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditPdqmQuery-supplier"
        },
        "name" : "Audit Example of ITI-78 at Supplier",
        "description" : "Audit Event for PDQm Query Transaction by the Patient Identifier Cross-reference Supplier\n\nwhere the Query was executed with a GET as follows:\n\n```\nGET https://server.example.com/fhir/Patient?family=MOHR&given=ALICE&active=true&gender=female\nAccept: application/fhir+json; fhirVersion=4.0\n```\n\nNote the Supplier may choose to record patient identities found, but is not required to.\n\nGiven the Supplier chooses to record a patient in the AuditEvent \nWhen the search finds multiple Patients, \nThen the Supplier would create an AuditEvent for each of those Patients. \n\nThis example shows where ex-patient is returned. This single result does not affect the response returned on the ITI-78 that would include all results.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Query.Audit.Supplier"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Device"
          }
        ],
        "reference" : {
          "reference" : "Device/ex-device"
        },
        "name" : "Dummy Device example",
        "description" : "Dummy Device example for completeness sake. No actual use of this resource other than an example target",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/ex-match-input-count"
        },
        "name" : "Example $match Input Parameters Where count Is Specified",
        "description" : "Example of Parameters resource to be supplied for ITI-119 input when count is specified.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.MatchParametersIn"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/ex-match-input-patient-only"
        },
        "name" : "Example $match Input Parameters Where Only Patient Is Specified",
        "description" : "Example of Parameters resource to be supplied for ITI-119 input when only the Patient parameter is specified.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.MatchParametersIn"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/ex-match-input-onlyCertainMatches"
        },
        "name" : "Example $match Input Parameters Where onlyCertainmatches Is Specified",
        "description" : "Example of Parameters resource to be supplied for ITI-119 input when onlyCertainMatches is specified.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.MatchParametersIn"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-match-output"
        },
        "name" : "Example $match Output Bundle - 1 Patient",
        "description" : "Example of Bundle resource to be returned for ITI-119 output. This is a simple case where only one patient is returned.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.MatchParametersOut"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-match-output-warning"
        },
        "name" : "Example $match Output Bundle - 1 Patient and 1 Warning",
        "description" : "Example of Bundle resource to be returned for ITI-119 output. 1 patient is returned alongside a warning.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.MatchParametersOut"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-match-output-multiple"
        },
        "name" : "Example $match Output Bundle - 2 Patients",
        "description" : "Example of Bundle resource to be returned for ITI-119 output. 2 Patients are found in the search result.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.MatchParametersOut"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-match-output-error"
        },
        "name" : "Example $match Output Bundle - Error",
        "description" : "Example of Bundle resource to be returned for ITI-119 output. No Patients are found in the search result.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.MatchParametersOut"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-match-output-empty"
        },
        "name" : "Example $match Output Bundle - No Patients Found",
        "description" : "Example of Bundle resource to be returned for ITI-119 output. No Patients are found in the search result.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.MatchParametersOut"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ex-QueryPatientResourceResponseMessage"
        },
        "name" : "Example of a Query Patient Resource Response message",
        "description" : "Example of a Query Patient Resource Response message with a single Patient",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.QueryPatientResourceResponseMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationOutcome"
          }
        ],
        "reference" : {
          "reference" : "OperationOutcome/ex-match-failure"
        },
        "name" : "Example OperationOutcome - $match Failure",
        "description" : "Example OperationOutcome resulting from a failure to invoke $match",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationOutcome"
          }
        ],
        "reference" : {
          "reference" : "OperationOutcome/ex-match-warning"
        },
        "name" : "Example OperationOutcome - $match Warning",
        "description" : "Example OperationOutcome containing a warning to be returned for $match",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/ex-match-input-patient"
        },
        "name" : "Example Patient input for PDQm $match",
        "description" : "Example of a Patient resource to be used as input for $match",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.MatchInputPatient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/ex-patient"
        },
        "name" : "Example PDQm Patient",
        "description" : "Example Patient instance of the PDQm Patient profile.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/ex-patient-mothers-maiden-name"
        },
        "name" : "Example PDQm Patient with Mothers Maiden Name Extension",
        "description" : "Example Patient instance of the PDQm Patient profile where the Patient has the mother's maiden name specified.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationDefinition"
          }
        ],
        "reference" : {
          "reference" : "OperationDefinition/PDQmMatch"
        },
        "name" : "PDQm $Match",
        "description" : "This operation implements the [Patient Demographics Match \\[ITI-119\\]](ITI-119.html) transaction.\nIt is fully compatible with the [$match Operation on Patient](http://hl7.org/fhir/R4/patient-operation-match.html). \nThe only changes are to constrain the input parameters to use the [PDQm Patient Profile for $match Input](StructureDefinition-IHE.PDQm.MatchInputPatient.html) profile\nand to constring the output parameters to use the [PDQm Patient Profile](StructureDefinition-IHE.PDQm.Patient.html) profile.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.PDQm.MatchParametersIn"
        },
        "name" : "PDQm Match Input Parameters Profile",
        "description" : "The PDQm Match Input Parameters Profile describes the Parameters Resource that is to be posted to the $match endpoint when invoking ITI-119.\nThis profile is consistent with the expections of the [Patient-match operation in FHIR core](http://hl7.org/fhir/R4/patient-operation-match.html),\nexcept the input resource SHALL be an instance of the [PDQm Patient Profile for $match Input](StructureDefinition-IHE.PDQm.MatchInputPatient.html).\n\nNote that the only REQUIRED parameter is the Patient Resource. When only the Patient is supplied, it can be POSTed directly to the $match endpoint\nwithout being wrapped in a Parameters Resource, as long as it conforms to the [PDQm Patient Profile for $match Input](StructureDefinition-IHE.PDQm.MatchInputPatient.html).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.PDQm.MatchParametersOut"
        },
        "name" : "PDQm Match Output Bundle Profile",
        "description" : "The PDQm Match Output Bundle Profile describes the Bundle that SHALL be returned in response to an ITI-119 transaction.\nThis profile is consistent with the expections of the [Patient-match operation in FHIR core](http://hl7.org/fhir/R4/patient-operation-match.html),\nexcept the Patient Resources SHALL be instances of the [PDQm Patient Profile](StructureDefinition-IHE.PDQm.Patient.html).\n\nSince the response to the $match Operation contains only one parameter, the Bundle resource is returned directly rather\nthan inside of a Parameters resource.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/IHE.PDQm.PatientDemographicsConsumerMatch"
        },
        "name" : "PDQm Patient Demographics Consumer Actor Implementing Match Operation Option",
        "description" : "The PDQm Patient Demographics Consumer Actor (client) requirements CapabililtyStatement expresses the requirements that can be utilized while being compliant. This capability statement implements the Match Operation Option.\n\n- Invoke the $match operation on a FHIR endpoint\n- Using FHIR R4\n- Input and output parameters conform to the PDQm Profiles\n- MAY request json or xml encoding\n- SHOULD use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/IHE.PDQm.PatientDemographicsConsumerQuery"
        },
        "name" : "PDQm Patient Demographics Consumer Actor Implementing Patient Search Option",
        "description" : "The PDQm Patient Demographics Consumer Actor (client) requirements CapabililtyStatement expresses the requirements that can be utilized while being compliant. This capability statement implements the Patient Search Option.\n\n- Query against the FHIR endpoint to the Patient Resource endpoint\n- Using FHIR R4\n- MAY request json or xml encoding\n- SHOULD use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)\n- [Search Parameters that MAY be used](ITI-78.html#23784121-search-parameters)\n  - _id\n  - active\n  - family\n  - given\n  - identifier\n  - telecom\n  - birthdate\n  - address\n  - gender\n  - mothersMaidenName",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/IHE.PDQm.PatientDemographicsSupplier"
        },
        "name" : "PDQm Patient Demographics Supplier Actor",
        "description" : "The PDQm Patient Demographics Supplier Actor (server) requirements CapabililtyStatement expresses the requirements that SHALL be provided.\n\n- Query against the FHIR endpoint to the Patient Resource endpoint\n- Using FHIR R4\n- SHALL support both json or xml encoding\n- SHOULD use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)\n- [Search Parameters that SHALL be supported](ITI-78.html#23784121-search-parameters)\n  - _id\n  - active\n  - family\n  - given\n  - identifier\n  - telecom\n  - birthdate\n  - address\n  - gender\n  - mothersMaidenName\n- SHALL support the `:exact` modifier on search parameters of type string\n- SHALL return Patient Resources conforming to the PDQm Patient Profile",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/IHE.PDQm.PatientDemographicsSupplierMatch"
        },
        "name" : "PDQm Patient Demographics Supplier Actor Implementing Match Operation Option",
        "description" : "The PDQm Patient Demographics Supplier Actor (server) requirements CapabililtyStatement expresses the requirements that SHALL be provided. This capability statement implements the Match Operation Option.\n\n- Query against the FHIR endpoint to the Patient Resource endpoint\n- Using FHIR R4\n- SHALL support both json or xml encoding\n- SHOULD use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)\n- [Search Parameters that SHALL be supported](ITI-78.html#23784121-search-parameters)\n  - _id\n  - active\n  - family\n  - given\n  - identifier\n  - telecom\n  - birthdate\n  - address\n  - gender\n  - mothersMaidenName\n- SHALL support the `:exact` modifier on search parameters of type string\n- SHALL support the PDQm $match operation\n- SHALL return Patient Resources conforming to the PDQm Patient Profile",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.PDQm.Patient"
        },
        "name" : "PDQm Patient Profile",
        "description" : "#### Overview\n\nThe PDQm Patient Profile establiashes the following base requirements:\n- when any element in FHIR Core Patient are known, and when authorized to return the element, then all elements that are core to FHIR Patient SHOULD be returned\n- forbids modifier extensions and implicit rules - so that all uses do not need to be concerned with changes to the meaning of the core elements of the Patient resource\n- adds the `patient-mothersMaidenName` extension as an extension available to hold the mother's maiden name\n\n#### Use of Business Identifiers\n\nTo facilitate working with and matching resources across specifications and servers, `Patient.identifier` is REQUIRED. Including business identifiers in `Patient.identifier` is important for\nallowing the Patient resource to maintain identity outside of the context of the FHIR server on which it resides. \nThis would be the case when the resource is copied to another server, saved to a file, migrated to a new FHIR server, etc.\n\n`Patient.identifier` is typically populated with an identifier assigned by an assigning authority in the \nlocal patient identifier domain. Populating with identifiers issued by jurisdictional authorities, such as\nthe patient's national identifier, drivers license number, jurisdictional healthcare identifier, etc., is also \ntypical when policy allows for those identifiers to be disclosed to the client system. \n\nWhen no existing business identifier exists, the Patient Demographics Supplier might construct one in one of the \nfollowing ways:\n\n**Option 1**:  Populate `Patient.identifier.value` with the full URL for the Patient resource as it would be accessed by\nthe client when doing a READ request. In this case, the corresponding value for `Patient.identifier.system`\nSHALL be `urn:ietf:rfc:3986`.\n\n**Option 2**:  Populate `Patient.identifier.value` with a [Universally Unique Identifier](https://en.wikipedia.org/wiki/Universally_unique_identifier),\nincluding the `urn:uuid:` prefix. In this case, the corresponding value for `Patient.identifier.system` \nSHALL be `urn:ietf:rfc:3986`. The UUID SHOULD be persisted within the FHIR resource so that subsequent accesses \nreturn the same identifier, but it is not REQUIRED in environments where doing so is not possible. \n\n#### Handling of Patient.link\nWhen multiple Patient Resources are used to represent the same Patient, Patient.link SHALL be used to describe\nthe relationship between the resources. \n\nWhen returning Patient Resources, the Patient Demographics SHALL ensure that:\n* No more that one Patient Resource referencing a Patient Identity contains `active=true`\n* When returning multiple Patient Resources for the same Patient, `Patient.link` SHALL be used to describe the relationship between each Patient Resource\n* When one Patient Resource has become subsumed by another, the subsumed Patient SHALL use `Patient.link` to point at the surviving Patinet Resource and `Patient.link.type` SHALL be `replaced-by`.\n\nPatient Demographics Consumers SHOULD be able to traverse Patient.link and use Patient.active to determine if a given Patient is currently active in the system.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.PDQm.MatchInputPatient"
        },
        "name" : "PDQm Patient Profile for $match Input",
        "description" : "The PDQm Patient Profile for $match Input SHALL be provided as input to the ITI-119 transaction. \n- While it is not REQUIRED that the input to $match be a valid FHIR instance, it is RECOMMENDED to supply as many elements as possible to facilitate matching.\n- modifierExtension and implicitRules SHALL not be specified.\n- The patient-mothersMaidenName extension is available to hold the mother's maiden name",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.PDQm.QueryPatientResourceResponseMessage"
        },
        "name" : "PDQm Query Patient Resource Response message",
        "description" : "A profile on the Query Patient Resource Response message for ITI-78",
        "exampleBoolean" : false
      }
    ],
    "page" : {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "toc.html"
        }
      ],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "index.html"
            }
          ],
          "nameUrl" : "index.html",
          "title" : "Patient Demographics Query for Mobile",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "volume-1.html"
            }
          ],
          "nameUrl" : "volume-1.html",
          "title" : "1:38 Patient Demographics Query for Mobile (PDQm)",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "ITI-78.html"
            }
          ],
          "nameUrl" : "ITI-78.html",
          "title" : "2:3.78 Mobile Patient Demographics Query [ITI-78]",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "ITI-119.html"
            }
          ],
          "nameUrl" : "ITI-119.html",
          "title" : "2:3.119 Patient Demographics Match [ITI-119]",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "testplan.html"
            }
          ],
          "nameUrl" : "testplan.html",
          "title" : "PDQm Test Plan",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "issues.html"
            }
          ],
          "nameUrl" : "issues.html",
          "title" : "Significant Changes and Issues",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "other.html"
            }
          ],
          "nameUrl" : "other.html",
          "title" : "Changes to other IHE Specifications",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "download.html"
            }
          ],
          "nameUrl" : "download.html",
          "title" : "Download and Analysis",
          "generation" : "markdown"
        }
      ]
    },
    "parameter" : [
      {
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
      }
    ]
  }
}

```
