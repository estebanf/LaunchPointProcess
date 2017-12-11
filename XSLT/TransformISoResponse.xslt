<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:Evaluator="http://bpms.everteam.com/Processes/Integrations/getIsoResponse/Evaluator" xmlns:diag="http://bpms.everteam.com/Processes/Integrations/getIsoResponse" xmlns:BusinessRule="http://www.example.org/NewXMLSchema" xmlns:processimplicitPartner="http://bpms.everteam.com/Processes/Integrations/getIsoResponse/processimplicitPartner" xmlns:tns="http://everteam.com/xvar/example" xmlns:this="http://bpms.everteam.com/Processes/Integrations/getIsoResponse/process" xmlns:CaseEvaluator-process="http://bpms.everteam.com/Processes/Core/CaseEvaluator/process" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:caller="http://bpms.everteam.com/Processes/Integrations/getIsoResponse/caller" xmlns:ns="urn:intalio.com:connectors:database:launchpointprocess:getisohighestscoreservice">
  <!--XSL Skeleton generated on Mon Dec 11 17:51:10 EST 2017
 for F/LaunchPointProcess/Processes/Integrations/getIsoResponse.bpm
   pool:process
   activity: Message_End_Event
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/TransformISoResponse.xslt", $nsGetIsoHighestScoreResponse1Msg.parameters, "caseid", $thisReceive_CaseRequest2Msg.body/Launchpoint:Case/Launchpoint:CaseId, "clientid", $thisReceive_CaseRequest2Msg.body/Launchpoint:Case/Launchpoint:ClientId, "environmentid", $thisReceive_CaseRequest2Msg.body/Launchpoint:Case/Launchpoint:EnvironmentId, "batchid", $thisReceive_CaseRequest2Msg.body/Launchpoint:Case/Launchpoint:BatchId)
 Input document as defined in the mapper: $nsGetIsoHighestScoreResponse1Msg.parameters-->
  <xsl:output/>
  <xsl:param name="caseid">
    <!--Parameter defined in mapper as $thisReceive_CaseRequest2Msg.body/Launchpoint:Case/Launchpoint:CaseId variable type: this:Receive_CaseRequest-->
    <error>Parameter caseid no initialized</error>
  </xsl:param>
  <xsl:param name="clientid">
    <!--Parameter defined in mapper as $thisReceive_CaseRequest2Msg.body/Launchpoint:Case/Launchpoint:ClientId variable type: this:Receive_CaseRequest-->
    <error>Parameter clientid no initialized</error>
  </xsl:param>
  <xsl:param name="environmentid">
    <!--Parameter defined in mapper as $thisReceive_CaseRequest2Msg.body/Launchpoint:Case/Launchpoint:EnvironmentId variable type: this:Receive_CaseRequest-->
    <error>Parameter environmentid no initialized</error>
  </xsl:param>
  <xsl:param name="batchid">
    <!--Parameter defined in mapper as $thisReceive_CaseRequest2Msg.body/Launchpoint:Case/Launchpoint:BatchId variable type: this:Receive_CaseRequest-->
    <error>Parameter batchid no initialized</error>
  </xsl:param>
  <xsl:template match="/ns:getIsoHighestScoreResultSet">
    <CaseEvaluator-process:Get_ISO_responseRequest>
      <Launchpoint:Case>
        <Launchpoint:CaseId><xsl:value-of select="$caseid" /></Launchpoint:CaseId>
        <Launchpoint:ClientId><xsl:value-of select="$clientid" /></Launchpoint:ClientId>
        <Launchpoint:EnvironmentId><xsl:value-of select="$environmentid" /></Launchpoint:EnvironmentId>
        <Launchpoint:BatchId><xsl:value-of select="batchid" /></Launchpoint:BatchId>
      </Launchpoint:Case>
      <Launchpoint:score>
      	<xsl:choose>
      		<xsl:when test="count(ns:rows/ns:row) > 0"><xsl:value-of select="ns:rows/ns:row[1]/ns:score" /></xsl:when>
      		<xsl:otherwise>NONE</xsl:otherwise>
      	</xsl:choose>
      </Launchpoint:score>
      <Launchpoint:scoreValue>
      	<xsl:choose>
      		<xsl:when test="count(ns:rows/ns:row) > 0"><xsl:value-of select="ns:rows/ns:row[1]/ns:scorevalue" /></xsl:when>
      		<xsl:otherwise>0</xsl:otherwise>
      	</xsl:choose>
      </Launchpoint:scoreValue>
    </CaseEvaluator-process:Get_ISO_responseRequest>
  </xsl:template>
</xsl:stylesheet>
