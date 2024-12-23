<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile SubscriptionStatus
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:SubscriptionStatus</sch:title>
    <sch:rule context="f:SubscriptionStatus">
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:eventsSinceSubscriptionStart) &gt;= 1">eventsSinceSubscriptionStart: minimum cardinality of 'eventsSinceSubscriptionStart' is 1</sch:assert>
      <sch:assert test="count(f:notificationEvent) &lt;= 0">notificationEvent: maximum cardinality of 'notificationEvent' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
