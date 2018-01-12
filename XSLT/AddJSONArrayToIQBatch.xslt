<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:diag="http://bpms.everteam.com/Processes/Integrations/getIQBatch" xmlns:processimplicitPartner="http://bpms.everteam.com/Processes/Integrations/getIQBatch/processimplicitPartner" xmlns:client="http://bpms.everteam.com/Processes/Integrations/getIQBatch/client" xmlns:this="http://bpms.everteam.com/Processes/Integrations/getIQBatch/process" xmlns:GenerateIQBatch="http://bpms.everteam.com/Services/REST/GenerateIQBatch.rest" xmlns:tns="http://everteam.com/xvar/example" xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:ProcessIQCase-Queue_Monitor="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Queue_Monitor" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:generateIQBatch1="__project:///Schemas/integrations/generateIQBatch.xsd">
  <!--XSL Skeleton generated on Fri Jan 12 11:26:46 EST 2018
 for F/LaunchPointProcess/Processes/Integrations/getIQBatch.bpm
   pool:process
   activity: generateIqBatch
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/AddJSONArrayToIQBatch.xslt", $thisEventStartMessageRequest1.body)
 Input document as defined in the mapper: $thisEventStartMessageRequest1.body-->
  <xsl:output/>
  <!--No parameters are currently passed to doXslTransform.-->
  <xsl:template match="/this:Receive_requestRequest">
    <iob_request_root>
      <EnvironmentId><xsl:value-of select="Launchpoint:EnvironmentId" /></EnvironmentId>
      <IQBatchId><xsl:value-of select="Launchpoint:IQBatchId" /></IQBatchId>
      <ClientId><xsl:value-of select="Launchpoint:ClientId" /></ClientId>
      <TotalLetterCount><xsl:value-of select="Launchpoint:TotalLetterCount" /></TotalLetterCount>
      <xsl:for-each select="Launchpoint:Cases">
      <Cases isJsonArray="true">
        <CaseId><xsl:value-of select="Launchpoint:CaseId" /></CaseId>
        <FileId><xsl:value-of select="Launchpoint:FileId" /></FileId>
      </Cases>
      </xsl:for-each>
    </iob_request_root>
  </xsl:template>
</xsl:stylesheet>
