<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile MedicationRequest
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:MedicationRequest</sch:title>
    <sch:rule context="f:MedicationRequest">
      <sch:assert test="count(f:authoredOn) &gt;= 1">authoredOn: minimum cardinality of 'authoredOn' is 1</sch:assert>
      <sch:assert test="count(f:dosageInstruction) &gt;= 1">dosageInstruction: minimum cardinality of 'dosageInstruction' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:dosageInstruction</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:sequence) &lt;= 1">sequence: maximum cardinality of 'sequence' is 1</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:patientInstruction) &lt;= 1">patientInstruction: maximum cardinality of 'patientInstruction' is 1</sch:assert>
      <sch:assert test="count(f:timing) &lt;= 1">timing: maximum cardinality of 'timing' is 1</sch:assert>
      <sch:assert test="count(f:asNeeded[x]) &lt;= 1">asNeeded[x]: maximum cardinality of 'asNeeded[x]' is 1</sch:assert>
      <sch:assert test="count(f:site) &lt;= 1">site: maximum cardinality of 'site' is 1</sch:assert>
      <sch:assert test="count(f:route) &lt;= 1">route: maximum cardinality of 'route' is 1</sch:assert>
      <sch:assert test="count(f:method) &lt;= 1">method: maximum cardinality of 'method' is 1</sch:assert>
      <sch:assert test="count(f:maxDosePerPeriod) &lt;= 1">maxDosePerPeriod: maximum cardinality of 'maxDosePerPeriod' is 1</sch:assert>
      <sch:assert test="count(f:maxDosePerAdministration) &lt;= 1">maxDosePerAdministration: maximum cardinality of 'maxDosePerAdministration' is 1</sch:assert>
      <sch:assert test="count(f:maxDosePerLifetime) &lt;= 1">maxDosePerLifetime: maximum cardinality of 'maxDosePerLifetime' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:dosageInstruction/f:doseAndRate</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction/f:doseAndRate">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:rate[x]) &lt;= 1">rate[x]: maximum cardinality of 'rate[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
