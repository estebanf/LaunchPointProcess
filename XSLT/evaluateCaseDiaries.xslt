<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="2.0"
	xmlns:getCaseActivities-process="http://bpms.everteam.com/Processes/Integrations/getCaseActivities/process"
	xmlns:getCaseDiaries-process="http://bpms.everteam.com/Processes/Integrations/getCaseDiaries/process"
	xmlns:Launchpoint="http://www.example.org/Launchpoint"
	xmlns:Database="http://bpms.everteam.com/Processes/Core/CaseEvaluator/Database"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:diag="http://bpms.everteam.com/Processes/Core/CaseEvaluator"
	xmlns:client="http://bpms.everteam.com/Processes/Core/CaseEvaluator/client"
	xmlns:this="http://bpms.everteam.com/Processes/Core/CaseEvaluator/process"
	xmlns:tns="http://everteam.com/xvar/example" xmlns:DCM="http://bpms.everteam.com/Processes/Core/CaseEvaluator/DCM"
	xmlns:getDCMCase-process="http://bpms.everteam.com/Processes/Integrations/getDCMCase/process"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:getCaseDetails-process="http://bpms.everteam.com/Processes/Integrations/getCaseDetails/process"
	xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output />
  <xsl:param name="dcmCase" select="/.." />
  <xsl:template match="/Launchpoint:CaseDiaries">
	<xsl:variable name="hasOpenDiaries" select="count(Launchpoint:diaries[Launchpoint:DiaryStatus='Open']) > 0" />
<!-- 	<xsl:variable name="hasBelowCost"   select="count(Launchpoint:diaries[Launchpoint:DiaryType='Below Cost Effective Pursuit' and Launchpoint:DiaryStatus='Open' and xs:date(Launchpoint:DiaryDueDate) &lt; fn:current-date()])   > 0" /> -->
	<xsl:variable name="hasBelowCost"   select="count(Launchpoint:diaries[Launchpoint:DiaryType='Below Cost Effective Pursuit'])   > 0" />
    <Launchpoint:LPCase>
      <Launchpoint:CaseId><xsl:value-of select="$dcmCase/Launchpoint:CaseId" /></Launchpoint:CaseId>
      <Launchpoint:BatchId><xsl:value-of select="$dcmCase/Launchpoint:BatchId" /></Launchpoint:BatchId>
      <Launchpoint:ClientId><xsl:value-of select="$dcmCase/Launchpoint:ClientId" /></Launchpoint:ClientId>
      <Launchpoint:EnvironmentId><xsl:value-of select="$dcmCase/Launchpoint:EnvironmentId" /></Launchpoint:EnvironmentId>
      <Launchpoint:ISOIndicator><xsl:value-of select="$dcmCase/Launchpoint:ISOIndicator" /></Launchpoint:ISOIndicator>
      <Launchpoint:Score><xsl:value-of select="$dcmCase/Launchpoint:Score" /></Launchpoint:Score>
      <Launchpoint:AccidentDate><xsl:value-of select="$dcmCase/Launchpoint:AccidentDate" /></Launchpoint:AccidentDate>
      <Launchpoint:BenefitAmount><xsl:value-of select="$dcmCase/Launchpoint:BenefitAmount" /></Launchpoint:BenefitAmount>
      <Launchpoint:FundingSource><xsl:value-of select="$dcmCase/Launchpoint:FundingSource" /></Launchpoint:FundingSource>
      <Launchpoint:LOB><xsl:value-of select="$dcmCase/Launchpoint:LOB" /></Launchpoint:LOB>
      <Launchpoint:WorkComp><xsl:value-of select="$dcmCase/Launchpoint:WorkComp" /></Launchpoint:WorkComp>
      <Launchpoint:CaseStatus><xsl:value-of select="$dcmCase/Launchpoint:CaseStatus" /></Launchpoint:CaseStatus>
      <Launchpoint:CaseSource><xsl:value-of select="$dcmCase/Launchpoint:CaseSource" /></Launchpoint:CaseSource>
      <Launchpoint:LifeCycle><xsl:value-of select="$dcmCase/Launchpoint:LifeCycle" /></Launchpoint:LifeCycle>
      <Launchpoint:CloseReason><xsl:value-of select="$dcmCase/Launchpoint:CloseReason" /></Launchpoint:CloseReason>
      <Launchpoint:State><xsl:value-of select="$dcmCase/Launchpoint:State" /></Launchpoint:State>
      <Launchpoint:IQResponseReceived><xsl:value-of select="$dcmCase/Launchpoint:IQResponseReceived" /></Launchpoint:IQResponseReceived>
      <Launchpoint:CanClose><xsl:value-of select="not($hasOpenDiaries)" /></Launchpoint:CanClose>
      <Launchpoint:BelowCostEffectivePursuit><xsl:value-of select="$hasBelowCost" /></Launchpoint:BelowCostEffectivePursuit>
      <Launchpoint:IQReturnMail><xsl:value-of select="$dcmCase/Launchpoint:IQReturnMail" /></Launchpoint:IQReturnMail>
      <Launchpoint:InvalidAddress><xsl:value-of select="$dcmCase/Launchpoint:InvalidAddress" /></Launchpoint:InvalidAddress>
      <Launchpoint:IQHold><xsl:value-of select="$dcmCase/Launchpoint:IQHold" /></Launchpoint:IQHold>
      <Launchpoint:ISOSent><xsl:value-of select="$dcmCase/Launchpoint:ISOSent" /></Launchpoint:ISOSent>
      <Launchpoint:ISOResponse><xsl:value-of select="$dcmCase/Launchpoint:ISOResponse" /></Launchpoint:ISOResponse>
      <Launchpoint:vip><xsl:value-of select="$dcmCase/Launchpoint:vip" /></Launchpoint:vip>
      <Launchpoint:IQLetters><xsl:value-of select="$dcmCase/Launchpoint:IQLetters" /></Launchpoint:IQLetters>
      <Launchpoint:daysSinceAccident><xsl:value-of select="$dcmCase/Launchpoint:daysSinceAccident" /></Launchpoint:daysSinceAccident>
      <Launchpoint:BelowCostEffectivePursuitDueDatePassed>
		<xsl:choose>
			<xsl:when test="$hasBelowCost"><xsl:value-of select="xs:date(Launchpoint:diaries[Launchpoint:DiaryType='Below Cost Effective Pursuit'][1]/Launchpoint:DiaryDueDate) &lt; fn:current-date()" /></xsl:when>
			<xsl:otherwise>false</xsl:otherwise>
		</xsl:choose>
      </Launchpoint:BelowCostEffectivePursuitDueDatePassed>
      <Launchpoint:daysSinceLastIQLetter><xsl:value-of select="$dcmCase/Launchpoint:daysSinceLastIQLetter" /></Launchpoint:daysSinceLastIQLetter>
    </Launchpoint:LPCase>  
  </xsl:template>
</xsl:stylesheet>
