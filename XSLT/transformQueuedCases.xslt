<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:diag="http://bpms.everteam.com/Processes/Integrations/getCaseQueued" xmlns:client="http://bpms.everteam.com/Processes/Integrations/getCaseQueued/client" xmlns:processimplicitPartner="http://bpms.everteam.com/Processes/Integrations/getCaseQueued/processimplicitPartner" xmlns:this="http://bpms.everteam.com/Processes/Integrations/getCaseQueued/process" xmlns:tns="http://everteam.com/xvar/example" xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ProcessIQCase-Database="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Database" xmlns:ns="urn:intalio.com:connectors:database:launchpointprocess:getcasequeuedservice">
  <!--XSL Skeleton generated on Fri Dec 01 12:38:30 MST 2017
 for F/LaunchPointProcess/Processes/Integrations/getCaseQueued.bpm
   pool:process
   activity: Send case
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/transformQueuedCases.xslt", $nsGetCaseQueuedResponse2Msg.parameters)
 Input document as defined in the mapper: $nsGetCaseQueuedResponse2Msg.parameters-->
  <xsl:output/>
  <!--No parameters are currently passed to doXslTransform.-->
  <xsl:template match="/ns:getCaseQueuedResultSet">
  	<xsl:choose>
  		<xsl:when test="count(ns:rows/ns:row) &gt; 0">
		    <ProcessIQCase-Database:Send_ResultsResponse><xsl:value-of select="true()"/></ProcessIQCase-Database:Send_ResultsResponse>  		
  		</xsl:when>
  		<xsl:otherwise>
		    <ProcessIQCase-Database:Send_ResultsResponse><xsl:value-of select="false()"/></ProcessIQCase-Database:Send_ResultsResponse>  		
  		</xsl:otherwise>
  	</xsl:choose>

  </xsl:template>
</xsl:stylesheet>
