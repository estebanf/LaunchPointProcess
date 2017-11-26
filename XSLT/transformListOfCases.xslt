<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:diag="http://bpms.everteam.com/Processes/Core/CaseMonitor" xmlns:this="http://bpms.everteam.com/Processes/Core/CaseMonitor/Pool" xmlns:processimplicitPartner="http://bpms.everteam.com/Processes/Core/CaseMonitor/processimplicitPartner" xmlns:tns="http://everteam.com/xvar/example" xmlns:process="http://bpms.everteam.com/Processes/Core/CaseMonitor/process" xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:getAllCases="urn:intalio.com:connectors:database:launchpointprocess:getallcasesservice" xmlns:ns="http://bpms.everteam.com/LaunchPointProcess">
  <!--XSL Skeleton generated on Sat Nov 25 10:04:03 EST 2017
 for F/LaunchPointProcess/Processes/Core/CaseMonitor.bpm
   pool:process
   activity: Empty_Intermediate_Event
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/transformListOfCases.xslt", $getAllCasesGetAllCasesResponse1Msg.parameters)
 Input document as defined in the mapper: $getAllCasesGetAllCasesResponse1Msg.parameters-->
  <xsl:output/>
  <!--No parameters are currently passed to doXslTransform.-->
  <xsl:template match="/getAllCases:getAllCasesResultSet">
  	<xsl:apply-templates />
  </xsl:template>
  <xsl:template match="getAllCases:rows">
  	<xsl:apply-templates />
  </xsl:template>
  <xsl:template match="getAllCases:row">
    <Launchpoint:caseid><xsl:value-of select="getAllCases:caseid" /></Launchpoint:caseid>
  </xsl:template>
</xsl:stylesheet>
