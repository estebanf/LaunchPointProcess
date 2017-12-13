<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:getLaunchpointCase="http://bpms.everteam.com/Services/REST/getLaunchpointCase.rest" xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:Validation="http://www.example.org/Validation" xmlns:diag="http://bpms.everteam.com/Processes/Integrations/getDCMCase" xmlns:BusinessRule="http://www.example.org/NewXMLSchema" xmlns:getLaunchpointCase1="__project:///Schemas/integrations/getLaunchpointCase.xsd" xmlns:client="http://bpms.everteam.com/Processes/Integrations/getDCMCase/client" xmlns:processimplicitPartner="http://bpms.everteam.com/Processes/Integrations/getDCMCase/processimplicitPartner" xmlns:this="http://bpms.everteam.com/Processes/Integrations/getDCMCase/process" xmlns:tns="http://everteam.com/xvar/example" xmlns:CaseEvaluator-process="http://bpms.everteam.com/Processes/Core/CaseEvaluator/process" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:metrics="http://test.com/xvar/example" xmlns:ExceptionManagement="http://bpms.everteam.com/Processes/Integrations/getDCMCase/ExceptionManagement">
  <!--XSL Skeleton generated on Sat Dec 09 06:13:33 EST 2017
 for F/LaunchPointProcess/Processes/Integrations/getDCMCase.bpm
   pool:process
   activity: Send  case
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/transformCaseDetailsFromDCM.xslt", $getLaunchpointCaseGetCaseResponse1Msg.dcmCase)
 Input document as defined in the mapper: $getLaunchpointCaseGetCaseResponse1Msg.dcmCase-->
  <xsl:output/>
  <xsl:param name="clientid" />
  <xsl:param name="caseid" />
  <xsl:param name="batchid" />
  <xsl:param name="environmentid" />
  <xsl:template match="/iob_response_root">
		<CaseEvaluator-process:Get_DCM_infoRequest>
			<Launchpoint:CaseId><xsl:value-of select="$caseid" /></Launchpoint:CaseId>
			<Launchpoint:BatchId><xsl:value-of select="$batchid" /></Launchpoint:BatchId>
			<Launchpoint:ClientId><xsl:value-of select="$clientid" /></Launchpoint:ClientId>
			<Launchpoint:EnvironmentId><xsl:value-of select="$environmentid" /></Launchpoint:EnvironmentId>
			<Launchpoint:ISOIndicator><xsl:value-of select="ISOIndicator" /></Launchpoint:ISOIndicator>
			<Launchpoint:Score><xsl:value-of select="Score" /></Launchpoint:Score>
			<Launchpoint:AccidentDate><xsl:value-of select="AccidentDate" /></Launchpoint:AccidentDate>
			<Launchpoint:BenefitAmount><xsl:value-of select="BenefitAmount" /></Launchpoint:BenefitAmount>
			<Launchpoint:FundingSource><xsl:value-of select="FundingSource" /></Launchpoint:FundingSource>
			<Launchpoint:LOB><xsl:value-of select="LOB" /></Launchpoint:LOB>
			<Launchpoint:WorkComp><xsl:value-of select="WorkComp" /></Launchpoint:WorkComp>
			<Launchpoint:CaseStatus><xsl:value-of select="CaseStatus" /></Launchpoint:CaseStatus>
			<Launchpoint:CaseSource><xsl:value-of select="CaseSource" /></Launchpoint:CaseSource>
			<Launchpoint:LifeCycle><xsl:value-of select="LifeCycle" /></Launchpoint:LifeCycle>
			<Launchpoint:CloseReason></Launchpoint:CloseReason>
			<Launchpoint:State><xsl:value-of select="State" /></Launchpoint:State>
			<Launchpoint:IQResponseReceived />
			<Launchpoint:CanClose />
			<Launchpoint:BelowCostEffectivePursuit />
			<Launchpoint:IQReturnMail />
      		<Launchpoint:InvalidAddress><xsl:value-of select="InvalidAddress" /></Launchpoint:InvalidAddress>
			<Launchpoint:IQHold />
			<Launchpoint:ISOSent />
			<Launchpoint:ISOResponse />
			<Launchpoint:vip><xsl:value-of select="VipIndicator" /></Launchpoint:vip>
			<Launchpoint:IQLetters />
			<Launchpoint:daysSinceAccident><xsl:value-of select="days-from-duration(current-dateTime() - xs:dateTime(AccidentDate))" /></Launchpoint:daysSinceAccident>
			<Launchpoint:BelowCostEffectivePursuitDueDatePassed />
			<Launchpoint:daysSinceLastIQLetter />
    </CaseEvaluator-process:Get_DCM_infoRequest>
  </xsl:template>
</xsl:stylesheet>
