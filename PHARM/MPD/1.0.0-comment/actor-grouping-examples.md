The actors illustrated the [actors and transactions](actors-transactions.html) can be grouped in different architectures.

This page provides some examples with some information on how this can be specified.


### Central prescription repository

In the central prescription repository, the order placer communicates the prescriptions with a central prescription repository (which therefore implements the specification (actors) of Order Receiver and Order Responder).
Similarly, the Order Consumer consults that repository for checking which prescriptions are available and to fetch the information of those prescriptions.


<figure>
  {% include arch1-central-rx-system.svg %}
  <!-- <figcaption>Actors and Transactions - Dispense</figcaption> -->
</figure>
<br clear="all"/>


### Pull model
In the Pull-Based Architecture, the Order Placer is integrated with the system that holds the prescriptions. When a healthcare entity (acting as an Order Consumer) needs to access a prescription, it explicitly pulls the information from the Order Responder using an on-demand query. 


<figure>
  {% include arch2-pull.svg %}
  <!-- <figcaption>Actors and Transactions - Dispense</figcaption> -->
</figure>
<br clear="all"/>


### Push model
In a Push-Based Architecture, the Order Placer submits a medication order that is immediately pushed to the Order consumer. This is akin to messaging.


<figure>
  {% include arch3-push.svg %}
  <!-- <figcaption>Actors and Transactions - Dispense</figcaption> -->
</figure>
<br clear="all"/>


### Ordering flows

The same actors can be used for ordering workflows, for example when orders need to be send for review by another entity, and that entity then acts as a placer for the updated order.


