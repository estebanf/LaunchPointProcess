<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:getIQBatch-process="http://bpms.everteam.com/Processes/Integrations/getIQBatch/process" xmlns:diag="http://bpms.everteam.com/Processes/Core/ProcessIQCase" xmlns:HumanVerification-process="http://bpms.everteam.com/Processes/Integrations/HumanVerification/process" xmlns:this="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Queue_Monitor" xmlns:tns="http://everteam.com/xvar/example" xmlns:Queue_MonitorimplicitPartner="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Queue_MonitorimplicitPartner" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:metrics="http://test.com/xvar/example" xmlns:generateIQBatch="http://www.example.org/generateIQBatch" xmlns:getOldestQueuedCases-process="http://bpms.everteam.com/Processes/Integrations/getOldestQueuedCases/process" xmlns:generateFile-process="http://bpms.everteam.com/Processes/Integrations/generateFile/process" xmlns:ns="http://bpms.everteam.com/LaunchPointProcess" xmlns:Process_IQ_Case="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Process_IQ_Case">
  <!--XSL Skeleton generated on Mon Dec 11 12:38:17 EST 2017
 for F/LaunchPointProcess/Processes/Core/ProcessIQCase.bpm
   pool:Queue Monitor
   activity: Add item to IQ Batch Item List
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/appendCaseToIQBatch.xsl", $IQBatchItemList, "fileid", $thisReceive_resultsRequest1Msg.body/Launchpoint:FileId, "caseid", $IQDBCaseType/Launchpoint:Case/Launchpoint:CaseId)
 Input document as defined in the mapper: $IQBatchItemList-->
  <xsl:output/>
  <xsl:param name="fileid">
    <!--Parameter defined in mapper as $thisReceive_resultsRequest1Msg.body/Launchpoint:FileId variable type: this:Receive_resultsRequest-->
    <error>Parameter fileid no initialized</error>
  </xsl:param>
  <xsl:param name="caseid">
    <!--Parameter defined in mapper as $IQDBCaseType/Launchpoint:Case/Launchpoint:CaseId variable type: Launchpoint:IQDBCaseType-->
    <error>Parameter caseid no initialized</error>
  </xsl:param>
  <xsl:template match="/Launchpoint:IQBatchItemList">
    <Launchpoint:IQBatchItemList>
      <Launchpoint:EnvironmentId><xsl:value-of select="Launchpoint:EnvironmentId"/></Launchpoint:EnvironmentId>
      <Launchpoint:IQBatchId><xsl:value-of select="Launchpoint:IQBatchId"/></Launchpoint:IQBatchId>
      <Launchpoint:ClientId><xsl:value-of select="Launchpoint:ClientId"/></Launchpoint:ClientId>
      <Launchpoint:TotalLetterCount><xsl:value-of select="Launchpoint:TotalLetterCount + 1"/></Launchpoint:TotalLetterCount>
      <xsl:for-each select="Launchpoint:Cases">
	      <Launchpoint:Cases>
	        <Launchpoint:CaseId><xsl:value-of select="Launchpoint:CaseId"/></Launchpoint:CaseId>
	        <Launchpoint:FileId><xsl:value-of select="Launchpoint:FileId"/></Launchpoint:FileId>
	      </Launchpoint:Cases>
      </xsl:for-each>
      <Launchpoint:Cases>
        <Launchpoint:CaseId><xsl:value-of select="$caseid"/></Launchpoint:CaseId>
        <Launchpoint:FileId><xsl:value-of select="$fileid"/></Launchpoint:FileId>
      </Launchpoint:Cases>
    </Launchpoint:IQBatchItemList>
  </xsl:template>
</xsl:stylesheet>
