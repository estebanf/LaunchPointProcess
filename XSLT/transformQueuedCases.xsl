<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:diag="http://bpms.everteam.com/Processes/Integrations/getCaseQueued" xmlns:processimplicitPartner="http://bpms.everteam.com/Processes/Integrations/getCaseQueued/processimplicitPartner" xmlns:client="http://bpms.everteam.com/Processes/Integrations/getCaseQueued/client" xmlns:this="http://bpms.everteam.com/Processes/Integrations/getCaseQueued/process" xmlns:tns="http://everteam.com/xvar/example" xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ns="urn:intalio.com:connectors:database:launchpointprocess:getcasequeuedservice" xmlns:ProcessIQCase-Process_IQ_Case="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Process_IQ_Case">
  <!--XSL Skeleton generated on Sat Dec 02 17:35:18 MST 2017
 for F/LaunchPointProcess/Processes/Integrations/getCaseQueued.bpm
   pool:process
   activity: Send case
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/transformQueuedCases.xsl", $nsGetCaseQueuedResponse2Msg.parameters)
 Input document as defined in the mapper: $nsGetCaseQueuedResponse2Msg.parameters-->
  <xsl:output/>
  <!--No parameters are currently passed to doXslTransform.-->
  <xsl:template match="/ns:getCaseQueuedResultSet">
    <ProcessIQCase-Process_IQ_Case:Get_ResultsRequest>
      	<xsl:choose>
  		<xsl:when test="count(ns:rows/ns:row) &gt; 0">
  			<Launchpoint:iqQueued><xsl:value-of select="true()"/></Launchpoint:iqQueued>
		    <Launchpoint:caseId><xsl:value-of select="ns:rows/ns:row[1]/ns:caseid" /></Launchpoint:caseId>
  		</xsl:when>
  		<xsl:otherwise>
		    <Launchpoint:iqQueued><xsl:value-of select="false()"/></Launchpoint:iqQueued>		      		
  		</xsl:otherwise>
  	</xsl:choose>
    </ProcessIQCase-Process_IQ_Case:Get_ResultsRequest>
  </xsl:template>
</xsl:stylesheet>
