<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:Exception_Management="http://bpms.everteam.com/Processes/Integrations/sendToISO/Exception_Management" xmlns:logger-process="http://bpms.everteam.com/Processes/Integrations/logger/process" xmlns:ProcessISO="http://bpms.everteam.com/Processes/Integrations/sendToISO/ProcessISO" xmlns:diag="http://bpms.everteam.com/Processes/Integrations/sendToISO" xmlns:ns0="http://tempuri.org/" xmlns:processimplicitPartner="http://bpms.everteam.com/Processes/Integrations/sendToISO/processimplicitPartner" xmlns:this="http://bpms.everteam.com/Processes/Integrations/sendToISO/process" xmlns:tns="http://everteam.com/xvar/example" xmlns:ProcessISOCase-Process_ISO_Case="http://bpms.everteam.com/Processes/Core/ProcessISOCase/Process_ISO_Case" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:metrics="http://test.com/xvar/example">
  <!--XSL Skeleton generated on Wed Jan 24 17:16:11 EST 2018
 for F/LaunchPointProcess/Processes/Integrations/sendToISO.bpm
   pool:process
   activity: Reply
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/transformISOACK.xslt", $ns0SubmitToISOResponse1Msg.parameters/ns0:SubmitToISOResult, "caseid", $thisReceive_requestRequest2Msg.body/Launchpoint:CaseId, "clientid", $thisReceive_requestRequest2Msg.body/Launchpoint:ClientId, "environmentid", $thisReceive_requestRequest2Msg.body/Launchpoint:EnvironmentId, "batchid", $thisReceive_requestRequest2Msg.body/Launchpoint:BatchId)
 Input document as defined in the mapper: $ns0SubmitToISOResponse1Msg.parameters/ns0:SubmitToISOResult-->
  <xsl:output/>
  <xsl:param name="caseid" />
  <xsl:param name="clientid" />
  <xsl:param name="environmentid" />
  <xsl:param name="batchid" />
  <xsl:template match="/ns0:SubmitToISOResult">
    <ProcessISOCase-Process_ISO_Case:Receive_ISO_ACKRequest>
      <Launchpoint:CaseId><xsl:value-of select="$caseid" /></Launchpoint:CaseId>
      <Launchpoint:ClientId><xsl:value-of select="$clientid" /></Launchpoint:ClientId>
      <Launchpoint:EnvironmentId><xsl:value-of select="$environmentid" /></Launchpoint:EnvironmentId>
      <Launchpoint:BatchId><xsl:value-of select="$batchid" /></Launchpoint:BatchId>
      <Launchpoint:content>
		<xsl:copy-of select="." />
      </Launchpoint:content>
    </ProcessISOCase-Process_ISO_Case:Receive_ISO_ACKRequest>
  </xsl:template>
</xsl:stylesheet>
