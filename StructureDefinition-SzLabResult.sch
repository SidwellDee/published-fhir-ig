<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Observation
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Observation</sch:title>
    <sch:rule context="f:Observation">
      <sch:assert test="count(f:extension[@url = 'http://172.209.216.154:3447/fhir/StructureDefinition/SzAuthorizerExtension']) &lt;= 1">extension with URL = 'http://172.209.216.154:3447/fhir/StructureDefinition/SzAuthorizerExtension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://172.209.216.154:3447/fhir/StructureDefinition/SzTestingLabExtension']) &lt;= 1">extension with URL = 'http://172.209.216.154:3447/fhir/StructureDefinition/SzTestingLabExtension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
