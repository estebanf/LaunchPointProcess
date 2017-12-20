<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:ProcessISOResponse-ISO_Response_Mana="http://bpms.everteam.com/Processes/Core/ProcessISOResponse/ISO_Response_Manager" xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:ns="urn:intalio.com:connectors:database:launchpointprocess:getcasefromrequestidservice" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:diag="http://bpms.everteam.com/Processes/Integrations/getCaseFromRequestId" xmlns:processimplicitPartner="http://bpms.everteam.com/Processes/Integrations/getCaseFromRequestId/processimplicitPartner" xmlns:this="http://bpms.everteam.com/Processes/Integrations/getCaseFromRequestId/process" xmlns:tns="http://everteam.com/xvar/example" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:metrics="http://test.com/xvar/example" xmlns:caller="http://bpms.everteam.com/Processes/Integrations/getCaseFromRequestId/caller" xmlns:getIsoHighestScore="urn:intalio.com:connectors:database:launchpointprocess:getisohighestscoreservice" xmlns:Exception_management="http://bpms.everteam.com/Processes/Integrations/getCaseFromRequestId/Exception_management">
  <!--XSL Skeleton generated on Thu Dec 14 17:21:08 EST 2017
 for F/LaunchPointProcess/Processes/Integrations/getCaseFromRequestId.bpm
   pool:process
   activity: Reply
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/TransformScoredCaseFromRequest.xslt", $getIsoHighestScoreGetIsoHighestScoreResponse1Msg.parameters, "scoredCase", $CaseHighestScore)
 Input document as defined in the mapper: $getIsoHighestScoreGetIsoHighestScoreResponse1Msg.parameters-->
  <xsl:output/>
  <xsl:param name="scoredCase" select="/.." />
  <xsl:template match="/getIsoHighestScore:getIsoHighestScoreResultSet">
    <Launchpoint:CaseHighestScore>
      <Launchpoint:requestid><xsl:value-of select="$scoredCase/Launchpoint:requestid" /></Launchpoint:requestid>
      <Launchpoint:Case>
        <Launchpoint:CaseId><xsl:value-of select="$scoredCase/Launchpoint:Case/Launchpoint:CaseId" /></Launchpoint:CaseId>
        <Launchpoint:ClientId><xsl:value-of select="$scoredCase/Launchpoint:Case/Launchpoint:ClientId" /></Launchpoint:ClientId>
        <Launchpoint:EnvironmentId><xsl:value-of select="$scoredCase/Launchpoint:Case/Launchpoint:EnvironmentId" /></Launchpoint:EnvironmentId>
        <Launchpoint:BatchId><xsl:value-of select="$scoredCase/Launchpoint:Case/Launchpoint:BatchId" /></Launchpoint:BatchId>
      </Launchpoint:Case>
      <Launchpoint:isoresponse><xsl:value-of select="$scoredCase/Launchpoint:isoresponse" /></Launchpoint:isoresponse>
      <Launchpoint:casestatus><xsl:value-of select="$scoredCase/Launchpoint:casestatus" /></Launchpoint:casestatus>
      <Launchpoint:score><xsl:value-of select="$scoredCase/Launchpoint:score" /></Launchpoint:score>
      	<xsl:choose>
      		<xsl:when test="count(getIsoHighestScore:rows/getIsoHighestScore:row) > 0">
		      	<Launchpoint:highestIsoScore><xsl:value-of select="getIsoHighestScore:rows/getIsoHighestScore:row[1]/getIsoHighestScore:score" /></Launchpoint:highestIsoScore>
      			<Launchpoint:highestIsoScoreValue><xsl:value-of select="getIsoHighestScore:rows/getIsoHighestScore:row[1]/getIsoHighestScore:scorevalue" /></Launchpoint:highestIsoScoreValue>
      		</xsl:when>
      		<xsl:otherwise>
		      	<Launchpoint:highestIsoScore>NONE</Launchpoint:highestIsoScore>
      			<Launchpoint:highestIsoScoreValue>0</Launchpoint:highestIsoScoreValue>
      		</xsl:otherwise>
      	</xsl:choose>
    </Launchpoint:CaseHighestScore>
  </xsl:template>
</xsl:stylesheet>
