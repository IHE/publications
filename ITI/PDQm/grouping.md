
When the Patient Demographics Supplier is grouped with actors in other IHE profiles that perform patient information reconciliation activities (e.g., the ADT Actor in the IHE Radiology Scheduled Workflow.b Profile), the Patient Demographics Supplier may use the updated information to respond to PDQm Queries. In addition, the Patient Demographics Query for Mobile Profile may play an integral workflow role in conjunction with other IHE profiles.

Those systems that manage patient demographics could implement the Patient Demographics Supplier 
in all three profiles: PDQ, PDQv3, and PDQm. In this way the Patient Demographics Consumer can 
choose the technology stack that best fits. 
[ITI TF-2:Appendix M.4](https://profiles.ihe.net/ITI/TF/Volume2/ch-M.html#M.4) provides additional 
details about Patient Demographics Query Profiles and their relationship with one another. 

The Patient Demographics Supplier may act as a proxy to an existing PDQ or PDQv3 environment as shown in Figures 38.6-1 and 38.6-2. 

<div>
{%include Implementing-PDQm-as-a-gateway.svg%}
</div>
**Figure 38.6-1: Implementing PDQm as a gateway**

