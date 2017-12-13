<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:getCaseActivities="__project:///Schemas/integrations/getCaseActivities.xsd" xmlns:Exception_Management="http://bpms.everteam.com/Processes/Integrations/getCaseActivities/Exception_Management" xmlns:Validation="http://www.example.org/Validation" xmlns:diag="http://bpms.everteam.com/Processes/Integrations/getCaseActivities" xmlns:BusinessRule="http://www.example.org/NewXMLSchema" xmlns:processimplicitPartner="http://bpms.everteam.com/Processes/Integrations/getCaseActivities/processimplicitPartner" xmlns:client="http://bpms.everteam.com/Processes/Integrations/getCaseActivities/client" xmlns:this="http://bpms.everteam.com/Processes/Integrations/getCaseActivities/process" xmlns:tns="http://everteam.com/xvar/example" xmlns:CaseEvaluator-process="http://bpms.everteam.com/Processes/Core/CaseEvaluator/process" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:metrics="http://test.com/xvar/example" xmlns:QueryCaseActivities="http://bpms.everteam.com/Services/REST/QueryCaseActivities.rest">
  <!--XSL Skeleton generated on Wed Dec 13 13:23:00 EST 2017
 for F/LaunchPointProcess/Processes/Integrations/getCaseActivities.bpm
   pool:process
   activity: Send activities
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/transformCaseActivities.xslt", $queryCaseActivitiesGetActivitiesResponse1Msg.activities, "caseid", $thisGet_case_idRequest2Msg.body/Launchpoint:CaseId, "clientid", $thisGet_case_idRequest2Msg.body/Launchpoint:ClientId, "environmentid", $thisGet_case_idRequest2Msg.body/Launchpoint:EnvironmentId, "batchid", $thisGet_case_idRequest2Msg.body/Launchpoint:BatchId)
 Input document as defined in the mapper: $queryCaseActivitiesGetActivitiesResponse1Msg.activities-->
  <xsl:output/>
  <xsl:param name="caseid">
    <!--Parameter defined in mapper as $thisGet_case_idRequest2Msg.body/Launchpoint:CaseId variable type: this:get_case_idRequest-->
    <error>Parameter caseid no initialized</error>
  </xsl:param>
  <xsl:param name="clientid">
    <!--Parameter defined in mapper as $thisGet_case_idRequest2Msg.body/Launchpoint:ClientId variable type: this:get_case_idRequest-->
    <error>Parameter clientid no initialized</error>
  </xsl:param>
  <xsl:param name="environmentid">
    <!--Parameter defined in mapper as $thisGet_case_idRequest2Msg.body/Launchpoint:EnvironmentId variable type: this:get_case_idRequest-->
    <error>Parameter environmentid no initialized</error>
  </xsl:param>
  <xsl:param name="batchid">
    <!--Parameter defined in mapper as $thisGet_case_idRequest2Msg.body/Launchpoint:BatchId variable type: this:get_case_idRequest-->
    <error>Parameter batchid no initialized</error>
  </xsl:param>
	<xsl:template match="/iob_response_root">
		<CaseEvaluator-process:Get_activitiesRequest>
			<Launchpoint:Case>
				<Launchpoint:CaseId><xsl:value-of select="$caseid" /></Launchpoint:CaseId>
				<Launchpoint:ClientId><xsl:value-of select="$clientid" /></Launchpoint:ClientId>
				<Launchpoint:EnvironmentId><xsl:value-of select="$environmentid" /></Launchpoint:EnvironmentId>
				<Launchpoint:BatchId><xsl:value-of select="$batchid" /></Launchpoint:BatchId>
			</Launchpoint:Case>
			<xsl:apply-templates />
		</CaseEvaluator-process:Get_activitiesRequest>
	</xsl:template>
	<xsl:template  match="iob_element">
			<Launchpoint:activities>
				<Launchpoint:ActivityType><xsl:value-of select="ActivityType" /></Launchpoint:ActivityType>
				<Launchpoint:ActivityCode><xsl:value-of select="ActivityCode" /></Launchpoint:ActivityCode>
				<Launchpoint:ActivityDescription><xsl:value-of select="Description" /></Launchpoint:ActivityDescription>
				<Launchpoint:CreatedDate><xsl:value-of select="CreateDate" /></Launchpoint:CreatedDate>
				<Launchpoint:CreatedBy><xsl:value-of select="CreatedBy" /></Launchpoint:CreatedBy>
			</Launchpoint:activities>
	</xsl:template>
</xsl:stylesheet>
