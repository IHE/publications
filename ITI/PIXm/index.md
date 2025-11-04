# 1:41 PIXm Home - Patient Identifier Cross-referencing for mobile (PIXm) v3.1.0

* [**Table of Contents**](toc.md)
* **1:41 PIXm Home**

## 1:41 PIXm Home

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PIXm/ImplementationGuide/ihe.iti.pixm | *Version*:3.1.0 |
| Active as of 2025-11-04 | *Computable Name*:IHE_PIXm |

The ****Patient Identifier Cross-reference for Mobile (PIXm) Profile**** provides RESTful transactions for mobile and lightweight browser-based applications to create, update and delete patient records in a Patient Identifier Cross-reference Manager and to query the Patient Identifier Cross-reference Manager for a patient’s cross-domain identifiers.

| |
| :--- |
| [Significant Changes, Open and Closed Issues](a_issues.md) |

**[Search this IG](https://www.google.com/search?q=site%3Ahttps%3A%2F%2Fprofiles.ihe.net%2FITI%2FPIXm)**

### Organization of This Guide

This guide is organized into following sections:

* Volume 1: Use-Case Analysis 
* [41.1 PIXm Actors, Transactions, and Content Modules](volume-1.md#1411-pixm-actors-transactions-and-content-modules)
* [41.2 PIXm Actor Options](volume-1.md#1412-pixm-actor-options)
* [41.3 PIXm Required Actor Groupings](volume-1.md#1413-pixm-required-actor-groupings)
* [41.4 PIXm Overview](volume-1.md#1414-pixm-overview)
* [41.5 PIXm Security Considerations](volume-1.md#1415-pixm-security-considerations)
* [41.6 PIXm Cross Profile Considerations](volume-1.md#1416-pixm-cross-profile-considerations)
 
* Volume 2: Transaction Detail 
* [3.83 Patient Identifier Cross-reference Query [ITI-83]](ITI-83.md)
* [3.104 Patient Identity Feed FHIR [ITI-104]](ITI-104.md)
 
* Other 
* [Test Plan](5_testplan.md)
* [Changes to Other Documents](other.md)
* [Download and Analysis](download.md)
 

Click on any of the links above, navigate the contents using the [Table of Contents](toc.md) or, if you are looking for a specific artifact, see the index of [Artifacts](artifacts.md).

### Conformance Expectations

IHE uses the normative words: Shall, Should, and May according to [standards conventions](https://profiles.ihe.net/GeneralIntro/ch-E.html).

PIXm uses `Must Support` in StructureDefinitions with the definition found in [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.10-profiling-conventions-for-constraints-on-fhir). This is equivalent to the IHE use of **R2** as defined in [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.10-profiling-conventions-for-constraints-on-fhir).



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "ihe.iti.pixm",
  "url" : "https://profiles.ihe.net/ITI/PIXm/ImplementationGuide/ihe.iti.pixm",
  "version" : "3.1.0",
  "name" : "IHE_PIXm",
  "title" : "Patient Identifier Cross-referencing for mobile (PIXm)",
  "status" : "active",
  "date" : "2025-11-04T14:17:39-06:00",
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
  "description" : "ImplementationGuide for IHE IT Infrastructure Technical Framework Supplement Patient Identifier Cross-referencing for mobile (PIXm)",
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
  "packageId" : "ihe.iti.pixm",
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
      "version" : "1.1.4"
    },
    {
      "id" : "iheitipdqm",
      "uri" : "https://profiles.ihe.net/ITI/PDQm/ImplementationGuide/ihe.iti.pdqm",
      "packageId" : "ihe.iti.pdqm",
      "version" : "3.2.0"
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
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "urn:oid:1.3.6.1.4.1.21367.13.20.3000"
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
            "valueString" : "https://profiles.ihe.net/ITI/PIXm/history.html"
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
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "urn:oid:1.3.6.1.4.1.21367.13.20.3000"
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
            "valueString" : "https://profiles.ihe.net/ITI/PIXm/history.html"
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
          "reference" : "StructureDefinition/IHE.PIXm.Feed.Delete.Audit.Manager"
        },
        "name" : "Audit Event for Patient Identity Feed by the Manager that Deletes a Patient",
        "description" : "Defines constraints on the AuditEvent Resource to record when a Patient Identity Feed Transaction happens, as recorded by the Patient Identity Cross-reference Manager. \n- This profile applies to the Patient Identity Cross-reference Manager actor in \n  - [Remove Patient](ITI-104.html#2310443-remove-patient)\n- Build off of the IHE BasicAudit PatientDelete event\n  - this will result in two .entity elements with the same logical information\n- add the ITI-104 as a subtype\n- client is Patient Identifier Source\n- server is Patient Identifier Cross-reference Manager\n- entity slices for patient are required\n  - filled with the identifier parameter value from the DELETE\n  - will be an identifier, not a reference\n- entity slice for the data\n  - filled with the path of the DELETE\n  - will be the Patient resource id presented\n- entity slice for transaction is available",
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
          "reference" : "StructureDefinition/IHE.PIXm.Feed.Update.Audit.Source"
        },
        "name" : "Audit Event for Patient Identity Feed by the Source that Creates or Updates a Patient",
        "description" : "Defines constraints on the AuditEvent Resource to record when a Patient Identity Feed Transaction happens, as recorded by the Patient Identity Source.\n- This profile applies to the Patient Identity Source actor in \n  - [Add or Revise Patient](ITI-104.html#2310441-add-or-revise-patient)\n  - [Resolve Duplicate Patient](ITI-104.html#2310442-resolve-duplicate-patient)\n- Patient Identity Source records an Update as using a conditional create, so as to support update if exists else create.\n- Build off of the IHE BasicAudit PatientUpdate event\n- add the ITI-104 as a subtype\n- client is Patient Identifier Source\n- server is Patient Identifier Cross-reference Manager\n- entity slices for patient are required\n  - filled with the identifier parameter value from the PUT\n  - will be an identifier, not a reference\n- entity slice for the data\n  - filled with the body of the PUT\n  - will be the Patient resource presented\n- entity slice for transaction is available",
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
          "reference" : "StructureDefinition/IHE.PIXm.Feed.Delete.Audit.Source"
        },
        "name" : "Audit Event for Patient Identity Feed by the Source that Deletes a Patient",
        "description" : "Defines constraints on the AuditEvent Resource to record when a Patient Identity Feed Transaction happens, as recorded by the Patient Identity Source. \n- This profile applies to the Patient Identity Source actor in \n  - [Remove Patient](ITI-104.html#2310443-remove-patient)\n- Build off of the IHE BasicAudit PatientDelete event\n  - this will result in two .entity elements with the same logical information\n- add the ITI-104 as a subtype\n- client is Patient Identifier Source\n- server is Patient Identifier Cross-reference Manager\n- entity slices for patient are required\n  - filled with the identifier parameter value from the DELETE\n  - will be an identifier, not a reference\n- entity slice for the data\n  - filled with the path of the DELETE\n  - will be the Patient resource id presented\n- entity slice for transaction is available",
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
          "reference" : "StructureDefinition/IHE.PIXm.Feed.Create.Audit.Manager"
        },
        "name" : "Audit Event for Patient Identity Feed FHIR by the Manager that Creates a Patient",
        "description" : "Defines constraints on the AuditEvent Resource to record when a Patient Identity Feed FHIR Transaction happens, as recorded by the Patient Identifier Cross-reference Manager.\n- This profile applies to the Patient Identity Cross-reference Manager actor in \n  - [Add or Revise Patient](ITI-104.html#2310441-add-or-revise-patient)\n  - [Resolve Duplicate Patient](ITI-104.html#2310442-resolve-duplicate-patient)\n- Patient Identity Cross-reference Manager knows the requested conditional create is a create, so records this as an create.\n- Build off of the IHE BasicAudit PatientCreate event\n  - A generic FHIR server might not distinguish an ITI-104 \n- add the ITI-104 as a subtype\n- server is Patient Identifier Source\n- server is Patient Identifier Cross-reference Manager\n- entity slices for patient are required\n  - filled with the identifier parameter value from the PUT\n  - will be an identifier, not a reference\n- entity slice for the data\n  - filled with the body of the PUT\n  - will be the Patient resource presented\n- entity slice for transaction is available",
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
          "reference" : "StructureDefinition/IHE.PIXm.Feed.Update.Audit.Manager"
        },
        "name" : "Audit Event for Patient Identity Feed FHIR by the Manager that Updates a Patient",
        "description" : "Defines constraints on the AuditEvent Resource to record when a Patient Identity Feed FHIR Transaction happens, as recorded by the Patient Identifier Cross-reference Manager.\n- This profile applies to the Patient Identity Cross-reference Manager actor in \n  - [Add or Revise Patient](ITI-104.html#2310441-add-or-revise-patient)\n  - [Resolve Duplicate Patient](ITI-104.html#2310442-resolve-duplicate-patient)\n- Patient Identity Cross-reference Manager knows the requested conditional create is an update, so records this as an update.\n- Build off of the IHE BasicAudit PatientUpdate event\n  - A generic FHIR server might not distinguish an ITI-104 \n- add the ITI-104 as a subtype\n- server is Patient Identifier Source\n- server is Patient Identifier Cross-reference Manager\n- entity slices for patient are required\n  - filled with the identifier parameter value from the PUT\n  - will be an identifier, not a reference\n- entity slice for the data\n  - filled with the body of the PUT\n  - will be the Patient resource presented\n- entity slice for transaction is available",
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
          "reference" : "StructureDefinition/IHE.PIXm.Query.Audit.Consumer"
        },
        "name" : "Audit Event for PIXm Query by the Consumer",
        "description" : "Defines constraints on the AuditEvent (AuditMessage) Resource to record when a PIXm Query Transaction happens, as recorded by the Patient Identifier Cross-reference Consumer.\n- Build off of the IHE BasicAudit Patient Query event\n- add the ITI-83 as a subtype\n- client is Patient Identifier Cross-reference Consumer\n- server is Patient Identifier Cross-reference Manager\n- entity slice for query parameters\n- eitity slice for a source patient identifier\n- yes both entities likely say the same thing, but one is specifically the patient identifier, and the other is in query parameter format\n- source is the client",
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
          "reference" : "StructureDefinition/IHE.PIXm.Query.Audit.Manager"
        },
        "name" : "Audit Event for PIXm Query by the Manager",
        "description" : "Defines constraints on the AuditEvent (AuditMessage) Resource to record when a PIXm Query Transaction happens, as recorded by the Patient Identifier Cross-reference Manager.\n- Build off of the IHE BasicAudit Patient Query event\n- add the ITI-83 as a subtype\n- client is Patient Identifier Cross-reference Consumer\n- server is Patient Identifier Cross-reference Manager\n- entity slice for query parameters\n- eitity slice for a source patient identifier\n- yes both entities likely say the same thing, but one is specifically the patient identifier, and the other is in query parameter format\n- source is the server",
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
          "reference" : "AuditEvent/ex-auditPixmFeed-create-manager"
        },
        "name" : "Audit Example of ITI-104 Create at Manager",
        "description" : "Audit Event for Patient Identity Feed FHIR Transaction ITI-104 by the Patient Identifier Cross-reference Manager. The Feed resulted in a Create of a Patient given the feed content, as the given parameter did not previously exist.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Feed.Create.Audit.Manager"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditPixmFeed-delete-manager"
        },
        "name" : "Audit Example of ITI-104 Delete at Manager",
        "description" : "Audit Event for Patient Identity Feed FHIR Transaction ITI-104 Delete by the Patient Identifier Cross-reference Manager",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Feed.Delete.Audit.Manager"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditPixmFeedDelete-manager"
        },
        "name" : "Audit Example of ITI-104 Delete at Manager",
        "description" : "Audit Event for Patient Identity Feed FHIR Transaction ITI-104 Delete by the Patient Identifier Cross-reference Manager.",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Feed.Delete.Audit.Manager"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditPixmFeed-delete-source"
        },
        "name" : "Audit Example of ITI-104 Delete at Source",
        "description" : "Audit Event for Patient Identity Feed FHIR Transaction ITI-104 Delete by the Patient Identity Source",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Feed.Delete.Audit.Source"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditPixmFeedDelete-source"
        },
        "name" : "Audit Example of ITI-104 Delete at Source",
        "description" : "Audit Event for Patient Identity Feed FHIR Transaction ITI-104 Delete by the Patient Identity Source",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Feed.Delete.Audit.Source"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditPixmFeed-update-manager"
        },
        "name" : "Audit Example of ITI-104 Update at Manager",
        "description" : "Audit Event for Patient Identity Feed FHIR Transaction ITI-104 Update by the Patient Identifier Cross-reference Manager",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Feed.Update.Audit.Manager"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditPixmFeed-update-source"
        },
        "name" : "Audit Example of ITI-104 Update at Source",
        "description" : "Audit Event for Patient Identity Feed FHIR Transaction ITI-104 Update by the Patient Identity Source",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Feed.Update.Audit.Source"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditPixmQuery-consumer"
        },
        "name" : "Audit Example of ITI-83 at Consumer",
        "description" : "Audit Event for PIXm Query Transaction ITI-83 by the Patient Identifier Cross-reference Consumer",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Query.Audit.Consumer"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "AuditEvent"
          }
        ],
        "reference" : {
          "reference" : "AuditEvent/ex-auditPixmQuery-manager"
        },
        "name" : "Audit Example of ITI-83 at Manager",
        "description" : "Audit Event for PIXm Query Transaction ITI-83 by the Patient Identifier Cross-reference Manager",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Query.Audit.Manager"
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
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/ex-patient"
        },
        "name" : "Dummy Patient example",
        "description" : "Dummy patient example for completeness sake. No actual use of this resource other than an example target",
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
          "reference" : "OperationOutcome/pixm-response-error-not-found"
        },
        "name" : "Example OperationOutcome - sourceIdentifier Patient Identifier not found",
        "description" : "Example OperationOutcome resulting from a failure find a Patient",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/IHE.PIXm.Consumer"
        },
        "name" : "IHE ITI Patient Identifier Cross-referencing for mobile (PIXm) - Consumer (client)",
        "description" : "The [Patient Identifier Cross-reference Consumer Actor](volume-1.html#141112-patient-identifier-cross-reference-consumer) CapabililtyStatement expresses the requirements that can be utilized while being compliant.\n\n- using FHIR R4\n- using json or xml encoding\n- [ITI-83](ITI-83.html) the $ihe-pix operation\n- should use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)",
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
          "reference" : "CapabilityStatement/IHE.PIXm.Manager"
        },
        "name" : "IHE ITI Patient Identifier Cross-referencing for mobile (PIXm) - Manager (server)",
        "description" : "The [Patient Identifier Cross-reference Manager Actor](volume-1.html#141113-patient-identifier-cross-reference-manager) CapabililtyStatement expresses the requirements that shall be provided.\n\n- using FHIR R4\n- using json and xml encoding\n- support for [ITI-83](ITI-83.html) the $ihe-pix operation\n- support conditional update for [ITI-104]\n- support conditional delete for [ITI-104] if Remove Patient Option is supported\n- should use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)",
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
          "reference" : "CapabilityStatement/IHE.PIXm.Source"
        },
        "name" : "IHE ITI Patient Identifier Cross-referencing for mobile (PIXm) - Source (client)",
        "description" : "The [Patient Identity Source Actor](volume-1.html#141111-patient-identity-source) CapabililtyStatement expresses the requirements that can be utilized while being compliant.\n\n- using FHIR R4\n- using json or xml encoding\n- using conditional update for [ITI-104](ITI-104.html)\n- using conditional delete for [ITI-104](ITI-104.html) if Remove Patient Option is supported\n- provide supported Patient profile for crosss-referencing for [ITI-104](ITI-104.html)\n- should use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationDefinition"
          }
        ],
        "reference" : {
          "reference" : "OperationDefinition/IHE.PIXm.pix"
        },
        "name" : "IHE PIXm $pix Operation",
        "description" : "The OperationDefinition defines the In and Output Parameters for the $ihe-pix operation\n- Input: sourceIdentifier, targetSystem and _format\n- Output: targetIdentifier, targetId\nThis operation is used to retrieve identifiers associated with a Patient Resource from the Patient Identifier Cross-reference Manager.",
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
          "reference" : "StructureDefinition/IHE.PIXm.Query.Parameters.In"
        },
        "name" : "IHE PIXm Query Parameters In",
        "description" : "The StructureDefinition defines the Input Parameters for the $ihe-pix operation\r\n- Input: sourceIdentifier, targetSystem",
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
          "reference" : "StructureDefinition/IHE.PIXm.Query.Parameters.Out"
        },
        "name" : "IHE PIXm Query Parameters Out",
        "description" : "The StructureDefinition defines the Output Parameters for the $ihe-pix operation\r\n- Output: targetId, targetIdentifier",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/Patient-MohrAlice"
        },
        "name" : "Patient Alice Mohr",
        "description" : "Patient Mohr Alice with all domain identifiers, note: this is just a consolidated identifier example will all identifiers from all the domains equivalent to a golden patient, however a golden patient is not the scope of PIXm, see the IHE PMIR profile",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Patient.BirthDateRequired"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/Patient-MohrAlice-Blue"
        },
        "name" : "Patient Alice Mohr (Blue)",
        "description" : "Patient Mohr Alice in Blue Domain",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/Patient-MohrAlice-Green"
        },
        "name" : "Patient Alice Mohr (Green)",
        "description" : "Patient Mohr Alice in Green Domain",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/Patient-MohrAlice-Red"
        },
        "name" : "Patient Alice Mohr (Red)",
        "description" : "Patient Mohr Alice in Red Domain",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/Patient-MohrAlissa-Red"
        },
        "name" : "Patient Alissa Mohr (Red)",
        "description" : "Patient Mohr Alisa in Red Domain",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/Patient-MaidenAlice-Red"
        },
        "name" : "Patient Maiden Alice (Red)",
        "description" : "Patient Maiden Alice in Red Domain",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/Patient-MohrMaidenResolvedByMohrMalice-Red"
        },
        "name" : "Patient Mohr Maiden Resolved by Mohr Alice (Red)",
        "description" : "Patient Mohr Maiden (Duplicate) Resolved by Mohr Alice Red Domain",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/IHE.PIXm.Patient"
        },
        "name" : "PIXm Patient constraints for Feed",
        "description" : "Profile for describing elements which have to be accepted by the Patient Identifier Cross-reference Manager for performing its cross-referencing function.\r\n- requiring name\r\n- mustSupport for identifier, name, telecom, gender birthDate, address and managingOrganization",
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
          "reference" : "StructureDefinition/IHE.PIXm.Patient.BirthDateRequired"
        },
        "name" : "PIXm Patient Profile example for additional Manager constraints",
        "description" : "Example Profile StructureDefinition for describing additional Patient resource constraints (requiring birthDate) by the Patient Identifier Cross-reference Manager for performing its cross-referencing function.\r\n- requiring name and birthDate\r\n- mustSupport for identifier, birthDate, name, telecom, gender birthDate, address and managingOrganization",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/pixm-response-mohralice-red-all"
        },
        "name" : "PIXm Query Response for source identifier",
        "description" : "PIXm Query Response for Patient with source identifier in RED domain for Mohr Alice",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Query.Parameters.Out"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/pixm-response-mohralice-red-to-blue"
        },
        "name" : "PIXm Query Response for source identifier and target system specified",
        "description" : "PIXm Query Response for Patient with source identifier in RED domain and query for BLUE domain for Mohr Alice",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Query.Parameters.Out"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/pixm-request-mohralice-red-all"
        },
        "name" : "PIXm Query with source identifier",
        "description" : "PIXm Query for Patient with source identifier in RED domain for Mohr Alice",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Query.Parameters.In"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/pixm-request-mohralice-red-to-blue"
        },
        "name" : "PIXm Query with source identifier and target system",
        "description" : "PIXm Query for Patient with source identifier in RED domain and query for BLUE domain for Mohr Alice",
        "exampleCanonical" : "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Query.Parameters.In"
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
          "title" : "1:41 PIXm Home",
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
          "title" : "Volume 1:41",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "ITI-83.html"
            }
          ],
          "nameUrl" : "ITI-83.html",
          "title" : "2:3.83 Mobile Patient Identifier Cross-reference Query [ITI-83]",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "ITI-104.html"
            }
          ],
          "nameUrl" : "ITI-104.html",
          "title" : "2:3:104 Patient Identity Feed FHIR [ITI-104]",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "5_testplan.html"
            }
          ],
          "nameUrl" : "5_testplan.html",
          "title" : "Test Plan",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "a_issues.html"
            }
          ],
          "nameUrl" : "a_issues.html",
          "title" : "Significant Changes & Issues",
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
          "title" : "Other",
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
