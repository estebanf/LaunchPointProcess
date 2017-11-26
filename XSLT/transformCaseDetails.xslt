<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:diag="http://bpms.everteam.com/Processes/Integrations/getCaseDetails" xmlns:client="http://bpms.everteam.com/Processes/Integrations/getCaseDetails/client" xmlns:processimplicitPartner="http://bpms.everteam.com/Processes/Integrations/getCaseDetails/processimplicitPartner" xmlns:tns="http://everteam.com/xvar/example" xmlns:this="http://bpms.everteam.com/Processes/Integrations/getCaseDetails/process" xmlns:CaseEvaluator-process="http://bpms.everteam.com/Processes/Core/CaseEvaluator/process" xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ns="urn:intalio.com:connectors:database:launchpointprocess:getcaseservice">
  <!--XSL Skeleton generated on Sat Nov 25 11:09:57 EST 2017
 for F/LaunchPointProcess/Processes/Integrations/getCaseDetails.bpm
   pool:process
   activity: Send case
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/transformCaseDetails.xslt", $nsGetCaseResponse1Msg.parameters)
 Input document as defined in the mapper: $nsGetCaseResponse1Msg.parameters-->
  <xsl:output/>
  <!--No parameters are currently passed to doXslTransform.-->
  <xsl:template match="/ns:getCaseResultSet">
    <CaseEvaluator-process:Get_db_infoRequest>
    	<xsl:apply-templates />
    </CaseEvaluator-process:Get_db_infoRequest>
  </xsl:template>
  <xsl:template match="ns:rows">
  	<xsl:apply-templates />
  </xsl:template>
  <xsl:template match="ns:row">
      <Launchpoint:CaseId><xsl:value-of select="ns:caseid" /></Launchpoint:CaseId>
      <Launchpoint:ISOIndicator><xsl:value-of select="ns:isoindicator" /></Launchpoint:ISOIndicator>
      <Launchpoint:Score><xsl:value-of select="ns:score" /></Launchpoint:Score>
      <Launchpoint:AccidentDate><xsl:value-of select="ns:accidentdate" /></Launchpoint:AccidentDate>
      <Launchpoint:BenefitAmount><xsl:value-of select="ns:benefitamount" /></Launchpoint:BenefitAmount>
      <Launchpoint:FundingSource><xsl:value-of select="ns:fundingsource" /></Launchpoint:FundingSource>
      <Launchpoint:LOB><xsl:value-of select="ns:lob" /></Launchpoint:LOB>
      <Launchpoint:WorkComp><xsl:value-of select="ns:workcomp" /></Launchpoint:WorkComp>
      <Launchpoint:CaseStatus><xsl:value-of select="ns:casestatus" /></Launchpoint:CaseStatus>
      <Launchpoint:CaseSource><xsl:value-of select="ns:casesource" /></Launchpoint:CaseSource>
      <Launchpoint:ClientId><xsl:value-of select="ns:clientid" /></Launchpoint:ClientId>
      <Launchpoint:EnvironmentId><xsl:value-of select="ns:environmentid" /></Launchpoint:EnvironmentId>
      <Launchpoint:LifeCycle><xsl:value-of select="ns:lifecycle" /></Launchpoint:LifeCycle>
      <Launchpoint:CloseReason><xsl:value-of select="ns:closereason" /></Launchpoint:CloseReason>
  </xsl:template>  
</xsl:stylesheet>
