<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" 
xmlns:Launchpoint="http://www.example.org/Launchpoint" 
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
xmlns:xs="http://www.w3.org/2001/XMLSchema" 
xmlns:caller="http://bpms.everteam.com/Processes/Integrations/CaseRefresh/caller" 
xmlns:this="http://bpms.everteam.com/Processes/Integrations/CaseRefresh/process" 
xmlns:ns="urn:intalio.com:connectors:database:launchpointprocess:caserefreshmentservice">
  <xsl:template match="/ns:caseRefreshmentResultSet/ns:rows">
    <this:QueryResponse>
      <xsl:apply-templates />
    </this:QueryResponse>
  </xsl:template>
  <xsl:template match="ns:row">
    <Launchpoint:batchId><xsl:value-of select="ns:batchid" /></Launchpoint:batchId>
    <Launchpoint:clientid><xsl:value-of select="ns:clienid" /></Launchpoint:clientid>
    <Launchpoint:environment><xsl:value-of select="ns:environmentid" /></Launchpoint:environment>
    <Launchpoint:case>
      <Launchpoint:CaseId><xsl:value-of select="ns:caseid" /></Launchpoint:CaseId>
      <Launchpoint:ISOIndicator><xsl:value-of select="ns:isoindicator" /></Launchpoint:ISOIndicator>
      <Launchpoint:Score><xsl:value-of select="ns:score" /></Launchpoint:Score>
      <Launchpoint:AccidentDate><xsl:value-of select="ns:accidentdate" /></Launchpoint:AccidentDate>
      <Launchpoint:BenefitAmount><xsl:value-of select="ns:benefitamount" /></Launchpoint:BenefitAmount>
      <Launchpoint:FundingSource><xsl:value-of select="ns:fundingsource" /></Launchpoint:FundingSource>
      <Launchpoint:LOB><xsl:value-of select="ns:lob" /></Launchpoint:LOB>
      <Launchpoint:State><xsl:value-of select="ns:state" /></Launchpoint:State>
      <Launchpoint:WorkComp><xsl:value-of select="ns:workcomp" /></Launchpoint:WorkComp>
      <Launchpoint:CaseStatus><xsl:value-of select="ns:casestatus" /></Launchpoint:CaseStatus>
      <Launchpoint:CaseSource><xsl:value-of select="ns:casesource" /></Launchpoint:CaseSource>
      <Launchpoint:SkipDuplicateCheck>false</Launchpoint:SkipDuplicateCheck>
    </Launchpoint:case>
  </xsl:template>
</xsl:stylesheet>
