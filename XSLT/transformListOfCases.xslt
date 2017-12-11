<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:BusinessRule="http://www.example.org/NewXMLSchema" xmlns:diag="http://bpms.everteam.com/Processes/Integrations/caseMonitor" xmlns:tns="http://everteam.com/xvar/example" xmlns:CaseEvaluator-process="http://bpms.everteam.com/Processes/Core/CaseEvaluator/process" xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:process-monitorimplicitPartner="http://bpms.everteam.com/Processes/Integrations/caseMonitor/process-monitorimplicitPartner" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:getAllCases="urn:intalio.com:connectors:database:launchpointprocess:getallcasesservice" xmlns:ns="http://bpms.everteam.com/LaunchPointProcess" xmlns:this="http://bpms.everteam.com/Processes/Integrations/caseMonitor/process-monitor">
  <!--XSL Skeleton generated on Fri Dec 08 11:24:00 EST 2017
 for F/LaunchPointProcess/Processes/Integrations/caseMonitor.bpm
   pool:process-monitor
   activity: Empty_Intermediate_Event
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/transformListOfCases.xslt", $getAllCasesGetAllCasesResponse1Msg.parameters)
 Input document as defined in the mapper: $getAllCasesGetAllCasesResponse1Msg.parameters-->
  <xsl:output/>
  <!--No parameters are currently passed to doXslTransform.-->
	<xsl:template match="/getAllCases:getAllCasesResultSet"><Launchpoint:lpCases><xsl:apply-templates /></Launchpoint:lpCases></xsl:template>
	<xsl:template match="getAllCases:rows"><xsl:apply-templates /></xsl:template>
	<xsl:template match="getAllCases:row">
      <Launchpoint:lpCase>
        <Launchpoint:CaseId><xsl:value-of select="getAllCases:caseid" /></Launchpoint:CaseId>
        <Launchpoint:ClientId><xsl:value-of select="getAllCases:clientid" /></Launchpoint:ClientId>
        <Launchpoint:EnvironmentId><xsl:value-of select="getAllCases:environmentid" /></Launchpoint:EnvironmentId>
        <Launchpoint:BatchId><xsl:value-of select="getAllCases:batchid" /></Launchpoint:BatchId>
      </Launchpoint:lpCase>
	</xsl:template>
</xsl:stylesheet>
