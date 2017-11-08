<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="2.0"
	xmlns:CreateActivityService="http://bpms.everteam.com/Services/REST/CreateActivityService.rest"
	xmlns:Logging="http://bpms.everteam.com/Services/REST/Logging.rest"
	xmlns:load_scored_iso="urn:intalio.com:connectors:database:launchpointprocess:load_scored_isoservice"
	xmlns:this="http://bpms.everteam.com/Processes/Core/ProcessISOResponse/ISO_Response_Manager"
	xmlns:ns="http://isoscoringaction.rules.launchpointprocess"
	xmlns:Launchpoint="http://www.example.org/Launchpoint"
	xmlns:CreateDiary="__project:///Schemas/CreateDiary.xsd"
	xmlns:UpdateCase="__project:///Schemas/UpdateCase.xsd" xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:DB="http://bpms.everteam.com/Processes/Core/ProcessISOResponse/DB"
	xmlns:ISO="http://bpms.everteam.com/Processes/Core/ProcessISOResponse/ISO"
	xmlns:ax214="http://isoscoringaction.rules.launchpointprocess/bre"
	xmlns:CreateDiaryService="http://bpms.everteam.com/Services/REST/CreateDiaryService.rest"
	xmlns:UpdateStatusService="http://bpms.everteam.com/Services/REST/UpdateStatusService.rest"
	xmlns:diag="http://bpms.everteam.com/Processes/Core/ProcessISOResponse"
	xmlns:CreateActivity="__project:///Schemas/CreateActivity.xsd"
	xmlns:Logging1="__project:///Schemas/Logging.xsd"
	xmlns:ISO_Response_ManagerimplicitPartner="http://bpms.everteam.com/Processes/Core/ProcessISOResponse/ISO_Response_ManagerimplicitPartner"
	xmlns:tns="http://everteam.com/xvar/example" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:ax213="http://isoscoringaction.rules.launchpointprocess/xsd"
	xmlns:Tracking="http://www.example.org/Tracking">
  <!--XSL Skeleton generated on Sun Oct 15 04:41:37 EDT 2017
 for F/LaunchPointProcess/Processes/Core/ProcessISOResponse.bpm
   pool:ISO Response Manager
   activity: Empty_Intermediate_Event
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/AppendIsoCaseToISoResponse.xslt", $load_scored_isoLoad_scored_isoResponse2Msg.parameters, "isoresponse", $ISOResponseCanonical)
 Input document as defined in the mapper: $load_scored_isoLoad_scored_isoResponse2Msg.parameters-->
  <xsl:output/>
  <xsl:param name="isoresponse"></xsl:param>
  <xsl:template match="/load_scored_iso:load_scored_isoResultSet">
  	<xsl:variable name="doc">
  		<xsl:copy-of select="$isoresponse" />
  	</xsl:variable>
    <Tracking:ISOResponseTrackingType>
      <Tracking:RequestId><xsl:value-of select="$doc/Tracking:ISOResponseTrackingType/Tracking:RequestId" /></Tracking:RequestId>
      <Tracking:CaseId><xsl:value-of select="load_scored_iso:rows/load_scored_iso:row[1]/load_scored_iso:caseid"/></Tracking:CaseId>
      <Tracking:ClientId><xsl:value-of select="load_scored_iso:rows/load_scored_iso:row[1]/load_scored_iso:clientid"/></Tracking:ClientId>
      <Tracking:BatchId><xsl:value-of select="load_scored_iso:rows/load_scored_iso:row[1]/load_scored_iso:batchid"/></Tracking:BatchId>
      <Tracking:EnvironmentId><xsl:value-of select="load_scored_iso:rows/load_scored_iso:row[1]/load_scored_iso:environmentid"/></Tracking:EnvironmentId>

	<xsl:variable name="previousScore">
		<xsl:choose>
			<xsl:when
				test="load_scored_iso:rows/load_scored_iso:row[1]/load_scored_iso:score = ''">
				<xsl:text>NONE</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of
					select="load_scored_iso:rows/load_scored_iso:row[1]/load_scored_iso:score" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>
      
      <Tracking:PreviousScore><xsl:value-of select="$previousScore"/></Tracking:PreviousScore>
      <Tracking:Content>
        <xsl:copy-of select="$doc/Tracking:ISOResponseTrackingType/Tracking:content/ClaimInvestigationAddRs" />
      </Tracking:Content>
      <Tracking:Status></Tracking:Status>
      <Tracking:Score></Tracking:Score>
    </Tracking:ISOResponseTrackingType>
  </xsl:template>
</xsl:stylesheet>
