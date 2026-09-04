<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ImagingStudy
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ImagingStudy</sch:title>
    <sch:rule context="f:ImagingStudy">
      <sch:assert test="count(f:numberOfSeries) &gt;= 1">numberOfSeries: minimum cardinality of 'numberOfSeries' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ImagingStudy/f:series</sch:title>
    <sch:rule context="f:ImagingStudy/f:series">
      <sch:assert test="count(f:numberOfInstances) &gt;= 1">numberOfInstances: minimum cardinality of 'numberOfInstances' is 1</sch:assert>
      <sch:assert test="count(f:instance) &gt;= 1">instance: minimum cardinality of 'instance' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ImagingStudy/f:series/f:instance</sch:title>
    <sch:rule context="f:ImagingStudy/f:series/f:instance">
      <sch:assert test="count(f:extension[@url = 'https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoNumberOfFrames']) &lt;= 1">extension with URL = 'https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoNumberOfFrames': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoKeyObjectDocumentTitle']) &lt;= 1">extension with URL = 'https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoKeyObjectDocumentTitle': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
