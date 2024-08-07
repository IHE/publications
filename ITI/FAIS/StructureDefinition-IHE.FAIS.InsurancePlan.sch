<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile InsurancePlan
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:InsurancePlan</sch:title>
    <sch:rule context="f:InsurancePlan">
      <sch:assert test="count(f:implicitRules) &lt;= 0">implicitRules: maximum cardinality of 'implicitRules' is 0</sch:assert>
      <sch:assert test="count(f:modifierExtension) &lt;= 0">modifierExtension: maximum cardinality of 'modifierExtension' is 0</sch:assert>
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:name) &gt;= 1">name: minimum cardinality of 'name' is 1</sch:assert>
      <sch:assert test="count(f:ownedBy) &gt;= 1">ownedBy: minimum cardinality of 'ownedBy' is 1</sch:assert>
      <sch:assert test="count(f:administeredBy) &gt;= 1">administeredBy: minimum cardinality of 'administeredBy' is 1</sch:assert>
      <sch:assert test="count(f:coverage) &gt;= 1">coverage: minimum cardinality of 'coverage' is 1</sch:assert>
      <sch:assert test="count(f:plan) &gt;= 1">plan: minimum cardinality of 'plan' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
