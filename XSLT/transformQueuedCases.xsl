<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:diag="http://bpms.everteam.com/Processes/Integrations/getCaseQueued" xmlns:client="http://bpms.everteam.com/Processes/Integrations/getCaseQueued/client" xmlns:processimplicitPartner="http://bpms.everteam.com/Processes/Integrations/getCaseQueued/processimplicitPartner" xmlns:this="http://bpms.everteam.com/Processes/Integrations/getCaseQueued/process" xmlns:tns="http://everteam.com/xvar/example" xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ns="urn:intalio.com:connectors:database:launchpointprocess:getcasequeuedservice" xmlns:ProcessIQCase-Process_IQ_Case="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Process_IQ_Case">
  <!--XSL Skeleton generated on Mon Dec 11 07:32:10 EST 2017
 for F/LaunchPointProcess/Processes/Integrations/getCaseQueued.bpm
   pool:process
   activity: Send case
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/transformQueuedCases.xsl", $nsGetCaseQueuedResponse2Msg.parameters, "caseId", $thisEventStartMessageRequest1.body/Launchpoint:CaseId)
 Input document as defined in the mapper: $nsGetCaseQueuedResponse2Msg.parameters-->
  <xsl:output/>
  <xsl:param name="caseId">
    <!--Parameter defined in mapper as $thisEventStartMessageRequest1.body/Launchpoint:CaseId variable type: this:Get_case_idRequest-->
    <error>Parameter caseId no initialized</error>
  </xsl:param>
  <xsl:template match="/ns:getCaseQueuedResultSet">
    <ProcessIQCase-Process_IQ_Case:Get_ResultsRequest>
      <Launchpoint:iqQueued>boolean</Launchpoint:iqQueued>
      <Launchpoint:Case>
        <Launchpoint:CaseId>string</Launchpoint:CaseId>
        <Launchpoint:ClientId>string</Launchpoint:ClientId>
        <Launchpoint:EnvironmentId>string</Launchpoint:EnvironmentId>
        <Launchpoint:BatchId>string</Launchpoint:BatchId>
      </Launchpoint:Case>
    </ProcessIQCase-Process_IQ_Case:Get_ResultsRequest>
  </xsl:template>
</xsl:stylesheet>
