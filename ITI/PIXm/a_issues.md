<div markdown="1" class="stu-note">

### Significant changes from PIXm, Rev 2.1:
- FHIR Implementation Guide instead of [pdf - Rev. 2.1](https://ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_PIXm.pdf)
- Integrated CP-ITI-1222, CP-ITI-1214, CP-ITI-1215 
- Volume 1 Update Use Cases and introduced new Mobile Patient Identifier Cross-reference Feed according to [work item](https://github.com/IHE/IT-Infrastructure/issues/147)
  - Added Security Considerations 
- Volume 2 ITI-83  
  - Added Parameter StructureDefinitions for $pixm operation
  - Added Security Audit Considerations with AuditEvent profile / resource
  - Added IHE Connectathon Samples for ITI-83
- Volume 2 ITI-104
   - New Mobile Patient Identifier Cross-reference Feed [ITI-104] Transaction
   - Profile for specifying Patient elements used by Patient Identifier Cross-reference Manager to correlate identifiers
   - Added the Remove Patient message   
   - Added IHE Connectathon samples ITI-104
   - Added Security Audit Considerations with AuditEvent profile / resource

#### List of questions to ask for the public review
- For the [ITI-104] Mobile Patient Identifier Cross-reference Feed it is proposed to use a RESTFul approach, e.g. to use Conditional Create / Update / Delete with the patient domain identifier. Please provide feedback during Public Comment if this approach is fine or indicate an alternative:
  Alternative approaches discussed were:
   1. Requiring the client to use id instead of identifiers for update/delete in a RESTFul transaction. Client could use $pixm operation to get the id based on the domain identifier. 
   2. Use a transaction Bundle for allowing multiple updates
   3. Use a Message as PMIR is doing it with a MessageHeader in the [ITI-93](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_PMIR.pdf#page=26) transaction
- Feedback to the open issue ***PIXm 020*** which targetId's to return from a Patient Identifier Cross-reference Manager and ***PIXm 021*** about transaction naming and implications.

#### Open Issues and Questions

***PIXm\_007***

*Mobile Patient Identifier Cross-reference Query response &lt;assigner&gt; resource will be required, for cases where the Assigning authority is not an OID or UUID or URI*

*Do we want to use Assigner as an alternative field?*

***PIXm\_015***

*Should we simplify the Parameters given that a Reference datatype can
now carry a Reference.identifier or a Reference.reference?*

***PIXm 016***

*Should we enhance the Parameters returned so that each business
identifier (Identifier) referenced by each Patient can be enumerated.
This will result in each business identifier being listed multiple
times, both at the root and also once for each Patient resource
containing the value in the .identifier element. This seems useful to
the client, but also seems to be beyond the intended use-case for PIX,
and could more appropriately be handled with PDQm, or a secondary query
of the Patient. Concern is that PIXm security model covers identifiers
(reference to Patient is an identifier in FHIR), but by expanding as
proposed this would be returning part of the Patient resource content.*


***PIXm 017***  
*ITI-83 references E.3 which is in [pdf](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_Appx-Z.pdf#page=16), see also [github issue](https://github.com/IHE/publications/issues/110).*


***PIXm 018***  
*PIXm does not yet define a FHIR equivalent for the transactions  PIX Update Notification [ITI-10] and PIXV3 Update Notification [ITI-46], 
we anticipate that it will be added in a future revision.*

***PIXm 019***  
*PIXm allows for the parameters in the operation to be a string URL. The IG builder, when creating the narrative, presumes that these are clickable links. yet in one example we have put in a URN OID. This is recorded as an [issue against the IG builder](https://github.com/HL7/fhir-ig-publisher/issues/296)*

***PIXm 020***  
*If a Patient Identifier Cross-reference Manager creates a "shadow copy" of the feeded patients it may return the created
id's on the Patient Identifier Cross-reference Manager, e.g see [example](http://build.fhir.org/ig/IHE/ITI.PIXm/branches/master/Parameters-pixm-response-mohralice-red-all.json.html) 
where the Patient Identifier Cross-reference Manager created three id's for the three patients out ouf the three different Patient Identity Domains ('Patient/Patient-MohrAlice-Red',Patient/Patient-MohrAlice-Green',Patient/Patient-MohrAlice-Blue') and returns now two targetId's in addition to the two identifiers (red id/identifier is excluded because the sourceIdentifier in Identity Domain Red is already provided in the query).* 

*In addition a Patient Identifier Cross-reference Manager could create a 'golden patient' where all information
is consolidated by the Patient Identifier Cross-reference Manager rules and return also this targetId [example](http://build.fhir.org/ig/IHE/ITI.PIXm/branches/master/Patient-Patient-MohrAlice.html). Could this id also be added in a $pixm Query as a targetId ('Patient/Patient-MohrAlice')? Note: A golden patient is not the scope of PIXm, see the [IHE ITI PMIR](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_PMIR.pdf) profile.* 

*There is continuing discussion in iti-tech if a "shadow copy" can be returned as a targetId, and if yes, if it should be marked by the Patient Identifier Cross-reference Manager in meta.source for these shadow copies or not.*

***PIXm 021***
*The naming for the Mobile Patient Identifier Cross-reference Feed [ITI-104] transaction is in discussion. It might change
depending is applicability to to other profiles, like the [IHE PMIR](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_PMIR.pdf)) profile. 
See [profile considerations/testing](https://gazelle.ihe.net/content/pmirconnectathontestpatients) of PIXm Patient Identifier Cross-Reference Manager and PMIR Patient Identity Registry.*

#### Closed Issues

***CP-ITI-1118*** - asks if the return behavior is well aligned with PDQm.
Seems they both should handle similar conditions similarly. The return
codes were reviewed in PIXm, and found to be appropriate for PIXm as
originally documented.

***PIXm\_010*** 
The $pixm operation is considered the right approach for this profile.

***PIXm\_014*** 
The $pixm operation cannot be replaced with the $match operation, the $match operation is however considered as a proposal for a new version in PDQm.

***CP-ITI-1222, CP-ITI-1214, CP-ITI-1215*** - The sourceIdentifier parameter in the PIXm Query [ITI-83] can include both business identifier and FHIR Resource ids, and the parameter should be matched by the PIXm Manager against FHIR Resource ids (ie Patient.id) and the patient’s business identifiers (ie value(s) in Patient.identifier). Examples and error codes updated. 

</div>
