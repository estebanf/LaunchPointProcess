<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:ISORequest="http://bpms.everteam.com/Services/REST/ISORequest.rest" xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:Exception_Management="http://bpms.everteam.com/Processes/Integrations/sendToISO/Exception_Management" xmlns:ProcessISO="http://bpms.everteam.com/Processes/Integrations/sendToISO/ProcessISO" xmlns:ISORequest1="__project:///Schemas/integrations/ISORequest.xsd" xmlns:diag="http://bpms.everteam.com/Processes/Integrations/sendToISO" xmlns:processimplicitPartner="http://bpms.everteam.com/Processes/Integrations/sendToISO/processimplicitPartner" xmlns:this="http://bpms.everteam.com/Processes/Integrations/sendToISO/process" xmlns:tns="http://everteam.com/xvar/example" xmlns:ProcessISOCase-Process_ISO_Case="http://bpms.everteam.com/Processes/Core/ProcessISOCase/Process_ISO_Case" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:metrics="http://test.com/xvar/example">
  <!--XSL Skeleton generated on Tue Dec 12 20:00:25 EST 2017
 for F/LaunchPointProcess/Processes/Integrations/sendToISO.bpm
   pool:process
   activity: Reply
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/transformISOACK.xslt", $iSORequestSendToIsoResponse1Msg.response, "caseid", $thisReceive_requestRequest2Msg.body/Launchpoint:CaseId, "clientid", $thisReceive_requestRequest2Msg.body/Launchpoint:ClientId, "environmentid", $thisReceive_requestRequest2Msg.body/Launchpoint:EnvironmentId, "batchid", $thisReceive_requestRequest2Msg.body/Launchpoint:BatchId)
 Input document as defined in the mapper: $iSORequestSendToIsoResponse1Msg.response-->
  <xsl:output/>
  <xsl:param name="caseid">
    <!--Parameter defined in mapper as $thisReceive_requestRequest2Msg.body/Launchpoint:CaseId variable type: this:Receive_requestRequest-->
    <error>Parameter caseid no initialized</error>
  </xsl:param>
  <xsl:param name="clientid">
    <!--Parameter defined in mapper as $thisReceive_requestRequest2Msg.body/Launchpoint:ClientId variable type: this:Receive_requestRequest-->
    <error>Parameter clientid no initialized</error>
  </xsl:param>
  <xsl:param name="environmentid">
    <!--Parameter defined in mapper as $thisReceive_requestRequest2Msg.body/Launchpoint:EnvironmentId variable type: this:Receive_requestRequest-->
    <error>Parameter environmentid no initialized</error>
  </xsl:param>
  <xsl:param name="batchid">
    <!--Parameter defined in mapper as $thisReceive_requestRequest2Msg.body/Launchpoint:BatchId variable type: this:Receive_requestRequest-->
    <error>Parameter batchid no initialized</error>
  </xsl:param>
  <xsl:template match="/ACORD">
    <ProcessISOCase-Process_ISO_Case:Receive_ISO_ACKRequest>
      <Launchpoint:CaseId><xsl:value-of select="$caseid" /></Launchpoint:CaseId>
      <Launchpoint:ClientId>><xsl:value-of select="$caseid" /></Launchpoint:ClientId>
      <Launchpoint:EnvironmentId>><xsl:value-of select="$caseid" /></Launchpoint:EnvironmentId>
      <Launchpoint:BatchId>><xsl:value-of select="$caseid" /></Launchpoint:BatchId>
      <Launchpoint:content>
		<xsl:copy-of select="." />
      </Launchpoint:content>
    </ProcessISOCase-Process_ISO_Case:Receive_ISO_ACKRequest>
  </xsl:template>
</xsl:stylesheet>
