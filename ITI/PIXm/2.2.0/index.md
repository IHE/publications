
<!-- ## Patient Identifier Cross-reference for Mobile Profile (PIXm) -->

The ***Patient Identifier Cross-reference for* Mobile** ***Integration Profile*** provides RESTful transactions for mobile and lightweight browser-based applications to create, update and delete Patient Ressources in a Patient Identifier Cross-reference Manager and to query the Patient Identifier Cross-reference Manager for a list of patient’s cross-domain
identifiers assigned to the same patient person by the Patient Identifier Cross-reference Manager.

The ***Patient Identifier Cross-reference for* Mobile** ***Integration Profile*** requires the Patient Identifier Cross-reference Manager to implement rules and algorithm to link patient records from different domains to provide the cross-domain identifiers assigned to the same patient person.  

This profile provides lightweight alternative to the transactions defined in the **PIX** and **PIXV3** profiles, using HTTP RESTful transactions.

This profile does not assume the Patient Identifier Cross-reference Manager to have the ability to act as a full-fledged HL7<sup>®</sup> FHIR<sup>®</sup> server, other than for the profiled transaction. PIXm can be used to provide a RESTful interface to a PIX or PIXV3 Patient Identifier Cross-reference Manager without providing other FHIR services.

<div markdown="1" class="stu-note">

| [Significant Changes, Open, and Closed Issues](a_issues.html) |
{: .grid}

**[Search this IG](https://www.google.com/search?q=site%3Ahttps%3A%2F%2Fprofiles.ihe.net%2FITI%2FPIXm)**

</div>

### Organization of This Guide
This guide is organized into four main sections:

1. Volume 1: Use-Case analysis
   1. [41.1 PIXm Actors, Transactions, and Content Modules](volume-1.html#1411-pixm-actors-transactions-and-content-modules)
   2. [41.2 PIXm Actor Options](volume-1.html#1412-pixm-actor-options)
   3. [41.3 PIXm Required Actor Groupings](volume-1.html#1413-pixm-required-actor-groupings)
   4. [41.4 PIXm Overview](volume-1.html#1414-pixm-overview)
   5. [41.5 PIXm Security Considerations](volume-1.html#1415-pixm-security-considerations)
   6. [41.6 PIXm Cross Profile Considerations](volume-1.html#1416-pixm-cross-profile-considerations)
   7. [Test Plan](5_testplan.html)

2. Volume 2: Transaction Detail
   1. [3.83 Patient Identifier Cross-reference Query [ITI-83]](ITI-83.html)
   2. [3.104 Mobile Patient Identifier Cross-reference Feed [ITI-104]](ITI-104.html)


Click on any of the links above, head on over the [table of contents](toc.html), or
if you are looking for a specific artifact, check out the [index](artifacts.html).

#### Must Support`

PIXm uses `Must Support` in StructureDefinitions with the definition found in [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.10-profiling-conventions-for-constraints-on-fhir). This is equivalent to IHE use of **R2**.

#### Download 

You can also download:

* [this entire guide](full-ig.zip),
* the definition resources in [json](definitions.json.zip), [xml](definitions.xml.zip), or [ttl](definitions.ttl.zip) format, or
* the example resources in [json](examples.json.zip), [xml](examples.xml.zip) or [ttl](examples.ttl.zip) format.

The source code for this Implementation Guide can be found on [Github](https://github.com/IHE/ITI.PIXm).
