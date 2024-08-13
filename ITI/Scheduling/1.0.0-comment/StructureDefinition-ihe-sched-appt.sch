<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Appointment
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Appointment</sch:title>
    <sch:rule context="f:Appointment">
      <sch:assert test="count(f:extension[@url = 'https://profiles.ihe.net/ITI/Scheduling/StructureDefinition/extension-status-reason']) &lt;= 1">extension with URL = 'https://profiles.ihe.net/ITI/Scheduling/StructureDefinition/extension-status-reason': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:start) &gt;= 1">start: minimum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:end) &gt;= 1">end: minimum cardinality of 'end' is 1</sch:assert>
      <sch:assert test="count(f:requestedPeriod) &gt;= 1">requestedPeriod: minimum cardinality of 'requestedPeriod' is 1</sch:assert>
      <sch:assert test="count(f:requestedPeriod) &lt;= 1">requestedPeriod: maximum cardinality of 'requestedPeriod' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
