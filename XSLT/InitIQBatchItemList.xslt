<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:getIQBatch-process="http://bpms.everteam.com/Processes/Integrations/getIQBatch/process" xmlns:diag="http://bpms.everteam.com/Processes/Core/ProcessIQCase" xmlns:HumanVerification-process="http://bpms.everteam.com/Processes/Integrations/HumanVerification/process" xmlns:this="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Queue_Monitor" xmlns:tns="http://everteam.com/xvar/example" xmlns:Queue_MonitorimplicitPartner="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Queue_MonitorimplicitPartner" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:metrics="http://test.com/xvar/example" xmlns:generateIQBatch="http://www.example.org/generateIQBatch" xmlns:getOldestQueuedCases-process="http://bpms.everteam.com/Processes/Integrations/getOldestQueuedCases/process" xmlns:generateFile-process="http://bpms.everteam.com/Processes/Integrations/generateFile/process" xmlns:ns="http://bpms.everteam.com/LaunchPointProcess" xmlns:Process_IQ_Case="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Process_IQ_Case">
  <!--XSL Skeleton generated on Mon Dec 11 12:21:42 EST 2017
 for F/LaunchPointProcess/Processes/Core/ProcessIQCase.bpm
   pool:Queue Monitor
   activity: Init  IQ Batch Item List
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/InitIQBatchItemList.xslt", $IQBatch)
 Input document as defined in the mapper: $IQBatch-->
  <xsl:output/>
  <!--No parameters are currently passed to doXslTransform.-->
  <xsl:template match="/Launchpoint:IQBatch">
    <Launchpoint:IQBatchItemList>
      <Launchpoint:EnvironmentId><xsl:value-of select="Launchpoint:cases/Launchpoint:Case[1]/Launchpoint:EnvironmentId" /></Launchpoint:EnvironmentId>
      <Launchpoint:IQBatchId><xsl:value-of select="concat(Launchpoint:clientId,Launchpoint:cases/Launchpoint:id)" /></Launchpoint:IQBatchId>
      <Launchpoint:ClientId><xsl:value-of select="Launchpoint:clientId" /></Launchpoint:ClientId>
      <Launchpoint:TotalLetterCount>0</Launchpoint:TotalLetterCount>
    </Launchpoint:IQBatchItemList>
  </xsl:template>
</xsl:stylesheet>
