<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:createActivity-process="http://bpms.everteam.com/Processes/Integrations/createActivity/process" xmlns:tns="http://www.example.org/Launchpoint" xmlns:Database="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Database" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:logger-process="http://bpms.everteam.com/Processes/Integrations/logger/process" xmlns:diag="http://bpms.everteam.com/Processes/Core/ProcessIQCase" xmlns:Queue_Monitor="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Queue_Monitor" xmlns:customVariable="http://everteam.com/xvar/example" xmlns:DCM="http://bpms.everteam.com/Processes/Core/ProcessIQCase/DCM" xmlns:getCaseQueued-process="http://bpms.everteam.com/Processes/Integrations/getCaseQueued/process" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:metrics="http://test.com/xvar/example" xmlns:Process_IQ_CaseimplicitPartner="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Process_IQ_CaseimplicitPartner" xmlns:Case_Evaluator="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Case_Evaluator" xmlns:this="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Process_IQ_Case">
  <!--XSL Skeleton generated on Fri Jan 12 11:49:49 EST 2018
 for F/LaunchPointProcess/Processes/Core/ProcessIQCase.bpm
   pool:Process IQ Case
   activity: Create IQ Sent activity
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/IQLetterSentActivity.xslt", $thisEventStartMessageRequest1.body)
 Input document as defined in the mapper: $thisEventStartMessageRequest1.body-->
  <xsl:output/>
  <!--No parameters are currently passed to doXslTransform.-->
  <xsl:template match="/this:Receive_IQRequest">
    <createActivity-process:Receive_requestRequest>
      <tns:Case>
        <tns:CaseId><xsl:value-of select="tns:Case/tns:CaseId" /></tns:CaseId>
        <tns:ClientId><xsl:value-of select="tns:Case/tns:ClientId" /></tns:ClientId>
        <tns:EnvironmentId><xsl:value-of select="tns:Case/tns:EnvironmentId" /></tns:EnvironmentId>
        <tns:BatchId><xsl:value-of select="tns:Case/tns:BatchId" /></tns:BatchId>
      </tns:Case>
      <tns:Activity>
        <tns:ActivityType>Outgoing Letter</tns:ActivityType>
        <tns:ActivityCode>
        	<xsl:choose>
        		<xsl:when test="tns:letter = '1'">Outgoing Letter : IQ(FIRST)</xsl:when>
        		<xsl:when test="tns:letter = '2'">Outgoing Letter : IQ(SECOND)</xsl:when>
        		<xsl:when test="tns:letter = '3'">Outgoing Letter : IQ(THIRD)</xsl:when>
        		<xsl:when test="tns:letter = '4'">Outgoing Letter : IQ(FOURTH)</xsl:when>
        	</xsl:choose>        </tns:ActivityCode>
        <tns:ActivityDescription>
        	<xsl:choose>
        		<xsl:when test="tns:letter = '1'">Outgoing Letter : IQ(FIRST)</xsl:when>
        		<xsl:when test="tns:letter = '2'">Outgoing Letter : IQ(SECOND)</xsl:when>
        		<xsl:when test="tns:letter = '3'">Outgoing Letter : IQ(THIRD)</xsl:when>
        		<xsl:when test="tns:letter = '4'">Outgoing Letter : IQ(FOURTH)</xsl:when>
        	</xsl:choose>
        </tns:ActivityDescription>
        <tns:CreatedDate><xsl:value-of select="current-dateTime()" /></tns:CreatedDate>
        <tns:CreatedBy>BPM</tns:CreatedBy>
      </tns:Activity>
      <tns:source>string</tns:source>
    </createActivity-process:Receive_requestRequest>
  </xsl:template>
</xsl:stylesheet>
