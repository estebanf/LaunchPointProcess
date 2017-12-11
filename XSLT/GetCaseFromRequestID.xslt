<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:diag="http://bpms.everteam.com/Processes/Integrations/getCaseFromRequestId" xmlns:ProcessISOResponse-ISO_Response_Mana="http://bpms.everteam.com/Processes/Core/ProcessISOResponse/ISO_Response_Manager" xmlns:processimplicitPartner="http://bpms.everteam.com/Processes/Integrations/getCaseFromRequestId/processimplicitPartner" xmlns:this="http://bpms.everteam.com/Processes/Integrations/getCaseFromRequestId/process" xmlns:tns="http://everteam.com/xvar/example" xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns="urn:intalio.com:connectors:database:launchpointprocess:getcasefromrequestidservice" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:caller="http://bpms.everteam.com/Processes/Integrations/getCaseFromRequestId/caller" xmlns:Exception_management="http://bpms.everteam.com/Processes/Integrations/getCaseFromRequestId/Exception_management">
  <!--XSL Skeleton generated on Mon Dec 11 02:12:58 EST 2017
 for F/LaunchPointProcess/Processes/Integrations/getCaseFromRequestId.bpm
   pool:process
   activity: Reply
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/GetCaseFromRequestID.xslt", $nsGetCaseFromRequestIdResponse1Msg.parameters, "requestid", $thisReceive_requestRequest2Msg.body/Launchpoint:requestid)
 Input document as defined in the mapper: $nsGetCaseFromRequestIdResponse1Msg.parameters-->
  <xsl:output/>
  <xsl:param name="requestid">
    <!--Parameter defined in mapper as $thisReceive_requestRequest2Msg.body/Launchpoint:requestid variable type: this:Receive_requestRequest-->
    <error>Parameter requestid no initialized</error>
  </xsl:param>
  <xsl:template match="/ns:getCaseFromRequestIdResultSet">
    <ProcessISOResponse-ISO_Response_Mana:Receive_caseRequest>
      <Launchpoint:requestid><xsl:value-of select="$requestid" /></Launchpoint:requestid>
      <Launchpoint:Case>
        <Launchpoint:CaseId><xsl:value-of select="ns:rows/ns:row[1]/ns:caseid" /></Launchpoint:CaseId>
        <Launchpoint:ClientId><xsl:value-of select="ns:rows/ns:row[1]/ns:clientid" /></Launchpoint:ClientId>
        <Launchpoint:EnvironmentId><xsl:value-of select="ns:rows/ns:row[1]/ns:environmentid" /></Launchpoint:EnvironmentId>
        <Launchpoint:BatchId><xsl:value-of select="ns:rows/ns:row[1]/ns:batchid" /></Launchpoint:BatchId>
      </Launchpoint:Case>
      <Launchpoint:isoresponse><xsl:value-of select="ns:rows/ns:row[1]/ns:isoresponse" /></Launchpoint:isoresponse>
    </ProcessISOResponse-ISO_Response_Mana:Receive_caseRequest>
  </xsl:template>
</xsl:stylesheet>
