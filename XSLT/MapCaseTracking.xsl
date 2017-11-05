<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="2.0"
	xmlns:Case_ManagerimplicitPartner="http://bpms.everteam.com/Processes/Core/CaseManagement/Case_ManagerimplicitPartner"
	xmlns:tns="http://www.example.org/Launchpoint" xmlns:ns="http://caseidentificationrule.rules.launchpointprocess"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ax210="http://caseidentificationrule.rules.launchpointprocess/bre"
	xmlns:Logging-Log_and_Track="http://bpms.everteam.com/Processes/Core/Logging/Log_and_Track"
	xmlns:this="http://bpms.everteam.com/Processes/Core/CaseManagement/Case_Manager"
	xmlns:ProcessIQCase-Process_IQ_Case="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Process_IQ_Case"
	xmlns:diag="http://bpms.everteam.com/Processes/Core/CaseManagement"
	xmlns:customVariable="http://everteam.com/xvar/example"
	xmlns:ProcessISOCase-Process_ISO_Case="http://bpms.everteam.com/Processes/Core/ProcessISOCase/Process_ISO_Case"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:Tracking="http://www.example.org/Tracking"
	xmlns:Queue_Service="http://bpms.everteam.com/Processes/Core/CaseManagement/Queue_Service"
	xmlns:ax29="http://caseidentificationrule.rules.launchpointprocess/xsd">
  <!--XSL Skeleton generated on Sun Nov 05 13:05:33 MST 2017
 for F/LaunchPointProcess/Processes/Core/CaseManagement.bpm
   pool:Case Manager
   activity: Extract case
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/MapCaseTracking.xsl", $BatchTrackingType/Tracking:Cases, "pos", $emptyCounter)
 Input document as defined in the mapper: $BatchTrackingType/Tracking:Cases-->
  <xsl:output/>
  <xsl:param name="pos">
    <!--Parameter defined in mapper as $emptyCounter variable type: xs:unsignedInt-->
    <error>Parameter pos no initialized</error>
  </xsl:param>
  <xsl:template match="/Tracking:Cases">
    <Tracking:CaseTracking>
      <Tracking:CaseId><xsl:value-of select="tns:Case[position()=$pos]/tns:CaseId"/></Tracking:CaseId>
      <Tracking:IsoIndicator><xsl:value-of select="tns:Case[position()=$pos]/tns:IsoIndicator"/></Tracking:IsoIndicator>
      <Tracking:Score><xsl:value-of select="tns:Case[position()=$pos]/tns:Score"/></Tracking:Score>
      <Tracking:AccidentDate><xsl:value-of select="tns:Case[position()=$pos]/tns:AccidentDate"/></Tracking:AccidentDate>
      <Tracking:BenefitAmount><xsl:value-of select="tns:Case[position()=$pos]/tns:BenefitAmount"/></Tracking:BenefitAmount>
      <Tracking:FundingSource><xsl:value-of select="tns:Case[position()=$pos]/tns:FundingSource"/></Tracking:FundingSource>
      <Tracking:LOB><xsl:value-of select="tns:Case[position()=$pos]/tns:LOB"/></Tracking:LOB>
      <Tracking:State><xsl:value-of select="tns:Case[position()=$pos]/tns:State"/></Tracking:State>
      <Tracking:WorkComp><xsl:value-of select="tns:Case[position()=$pos]/tns:WorkComp"/></Tracking:WorkComp>
      <Tracking:CaseStatus><xsl:value-of select="tns:Case[position()=$pos]/tns:CaseStatus"/></Tracking:CaseStatus>
      <Tracking:CaseSource><xsl:value-of select="tns:Case[position()=$pos]/tns:CaseSource"/></Tracking:CaseSource>
      <Tracking:CaseType><xsl:value-of select="tns:Case[position()=$pos]/tns:CaseType"/></Tracking:CaseType>
      <Tracking:BatchId></Tracking:BatchId>
      <Tracking:CaseReceived></Tracking:CaseReceived>
      <Tracking:CaseIdentified></Tracking:CaseIdentified>
      <Tracking:CaseReceivedAt></Tracking:CaseReceivedAt>
      <Tracking:CaseIdentifiedAt></Tracking:CaseIdentifiedAt>
    </Tracking:CaseTracking>
  </xsl:template>
</xsl:stylesheet>
