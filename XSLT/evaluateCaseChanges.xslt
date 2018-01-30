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
	xmlns:getCaseDetails-process="http://bpms.everteam.com/Processes/Integrations/getCaseDetails/process">
	<xsl:param name="dcmCase" select="/.." />
  <xsl:template match="/Launchpoint:LPCase">
  	<xsl:variable name="ISOIndicator" select="Launchpoint:ISOIndicator != $dcmCase/Launchpoint:ISOIndicator" />
  	<xsl:variable name="Score" select="Launchpoint:Score != $dcmCase/Launchpoint:Score" />
  	<xsl:variable name="AccidentDate" select="Launchpoint:AccidentDate != $dcmCase/Launchpoint:AccidentDate" />
  	<xsl:variable name="BenefitAmount" select="Launchpoint:BenefitAmount != $dcmCase/Launchpoint:BenefitAmount" />
  	<xsl:variable name="FundingSource" select="Launchpoint:FundingSource != $dcmCase/Launchpoint:FundingSource" />
  	<xsl:variable name="LOB" select="Launchpoint:LOB != $dcmCase/Launchpoint:LOB" />
  	<xsl:variable name="WorkComp" select="Launchpoint:WorkComp != $dcmCase/Launchpoint:WorkComp" />
  	<xsl:variable name="CaseStatus" select="Launchpoint:CaseStatus != $dcmCase/Launchpoint:CaseStatus" />
  	<xsl:variable name="CaseSource" select="Launchpoint:CaseSource != $dcmCase/Launchpoint:CaseSource" />
  	<xsl:variable name="State" select="Launchpoint:State != $dcmCase/Launchpoint:State" />
  	<xsl:variable name="LifeCycle" select="Launchpoint:LifeCycle != $dcmCase/Launchpoint:LifeCycle" />
  	<xsl:variable name="CloseReason" select="Launchpoint:CloseReason != $dcmCase/Launchpoint:CloseReason" />
  	<xsl:variable name="IQResponseReceived" select="Launchpoint:IQResponseReceived != $dcmCase/Launchpoint:IQResponseReceived" />
  	<xsl:variable name="IQResponseReceivedReason" select="Launchpoint:IQResponseReceivedReason != $dcmCase/Launchpoint:IQResponseReceivedReason" />
  	<xsl:variable name="CanClose" select="Launchpoint:CanClose != $dcmCase/Launchpoint:CanClose" />
  	<xsl:variable name="BelowCostEffectivePursuit" select="Launchpoint:BelowCostEffectivePursuit != $dcmCase/Launchpoint:BelowCostEffectivePursuit" />
  	<xsl:variable name="IQReturnMail" select="Launchpoint:IQReturnMail != $dcmCase/Launchpoint:IQReturnMail" />
  	<xsl:variable name="InvalidAddress" select="Launchpoint:InvalidAddress != $dcmCase/Launchpoint:InvalidAddress" />
  	<xsl:variable name="IQHold" select="Launchpoint:IQHold != $dcmCase/Launchpoint:IQHold" />
  	<xsl:variable name="ISOSent" select="Launchpoint:ISOSent != $dcmCase/Launchpoint:ISOSent" />
  	<xsl:variable name="ISOResponse" select="Launchpoint:ISOResponse != $dcmCase/Launchpoint:ISOResponse" />
  	<xsl:variable name="vip" select="Launchpoint:vip != $dcmCase/Launchpoint:vip" />
  	<xsl:variable name="IQLetters" select="Launchpoint:IQLetters != $dcmCase/Launchpoint:IQLetters" />
  	<xsl:variable name="daysSinceAccident" select="Launchpoint:daysSinceAccident != $dcmCase/Launchpoint:daysSinceAccident" />
  	<xsl:variable name="BelowCostEffectivePursuitDueDatePassed" select="Launchpoint:BelowCostEffectivePursuitDueDatePassed != $dcmCase/Launchpoint:BelowCostEffectivePursuitDueDatePassed" />
  	<xsl:variable name="daysSinceLastIQLetter" select="Launchpoint:daysSinceLastIQLetter != $dcmCase/Launchpoint:daysSinceLastIQLetter" />
    <Launchpoint:lpCaseChangesTracker>
      <Launchpoint:caseid><xsl:value-of select="Launchpoint:CaseId" /></Launchpoint:caseid>
      <Launchpoint:hasChanges><xsl:value-of select="$ISOIndicator or $Score or $AccidentDate or $BenefitAmount or $FundingSource or $LOB or $WorkComp or $CaseStatus or $CaseSource or $LifeCycle or $CloseReason or $IQResponseReceived or $CanClose or $BelowCostEffectivePursuit or $IQReturnMail or $State" /></Launchpoint:hasChanges>
      <Launchpoint:changes>
        <Launchpoint:ISOIndicatorChanged><xsl:value-of select="$ISOIndicator" /></Launchpoint:ISOIndicatorChanged>
        <Launchpoint:ScoreChanged><xsl:value-of select="$Score" /></Launchpoint:ScoreChanged>
        <Launchpoint:AccidentDateChanged><xsl:value-of select="$AccidentDate" /></Launchpoint:AccidentDateChanged>
        <Launchpoint:BenefitAmountChanged><xsl:value-of select="$BenefitAmount" /></Launchpoint:BenefitAmountChanged>
        <Launchpoint:FundingSourceChanged><xsl:value-of select="$FundingSource" /></Launchpoint:FundingSourceChanged>
        <Launchpoint:LOBChanged><xsl:value-of select="$LOB" /></Launchpoint:LOBChanged>
        <Launchpoint:WorkCompChanged><xsl:value-of select="$WorkComp" /></Launchpoint:WorkCompChanged>
        <Launchpoint:CaseStatusChanged><xsl:value-of select="$CaseStatus" /></Launchpoint:CaseStatusChanged>
        <Launchpoint:CaseSourceChanged><xsl:value-of select="$CaseSource" /></Launchpoint:CaseSourceChanged>
        <Launchpoint:LifeCycleChanged><xsl:value-of select="$LifeCycle" /></Launchpoint:LifeCycleChanged>
        <Launchpoint:CloseReasonChanged><xsl:value-of select="$CloseReason" /></Launchpoint:CloseReasonChanged>
        <Launchpoint:StateChanged><xsl:value-of select="$State" /></Launchpoint:StateChanged>
        <Launchpoint:IQResponseReceivedChanged><xsl:value-of select="$IQResponseReceived" /></Launchpoint:IQResponseReceivedChanged>
        <Launchpoint:IQResponseReceivedReasonChanged><xsl:value-of select="$IQResponseReceivedReason" /></Launchpoint:IQResponseReceivedReasonChanged>
        <Launchpoint:CanCloseChanged><xsl:value-of select="$CanClose" /></Launchpoint:CanCloseChanged>
        <Launchpoint:BelowCostEffectivePursuitChanged><xsl:value-of select="$BelowCostEffectivePursuit" /></Launchpoint:BelowCostEffectivePursuitChanged>
        <Launchpoint:IQReturnMailChanged><xsl:value-of select="$IQReturnMail" /></Launchpoint:IQReturnMailChanged>
        <Launchpoint:InvalidAddressChanged><xsl:value-of select="$InvalidAddress" /></Launchpoint:InvalidAddressChanged>
        <Launchpoint:IQHoldChanged><xsl:value-of select="$IQHold" /></Launchpoint:IQHoldChanged>
        <Launchpoint:ISOSentChanged><xsl:value-of select="$ISOSent" /></Launchpoint:ISOSentChanged>
        <Launchpoint:ISOResponseChanged><xsl:value-of select="$ISOResponse" /></Launchpoint:ISOResponseChanged>
        <Launchpoint:vipChanged><xsl:value-of select="$vip" /></Launchpoint:vipChanged>
        <Launchpoint:IQLettersChanged><xsl:value-of select="$IQLetters" /></Launchpoint:IQLettersChanged>
        <Launchpoint:daysSinceAccidentChanged><xsl:value-of select="$daysSinceAccident" /></Launchpoint:daysSinceAccidentChanged>
        <Launchpoint:BelowCostEffectivePursuitDueDatePassedChanged><xsl:value-of select="$BelowCostEffectivePursuitDueDatePassed" /></Launchpoint:BelowCostEffectivePursuitDueDatePassedChanged>
        <Launchpoint:daysSinceLastIQLetterChanged><xsl:value-of select="$daysSinceLastIQLetter" /></Launchpoint:daysSinceLastIQLetterChanged>
      </Launchpoint:changes>
    </Launchpoint:lpCaseChangesTracker>
  </xsl:template>
</xsl:stylesheet>
