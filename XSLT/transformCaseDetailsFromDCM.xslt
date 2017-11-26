<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="2.0"
	xmlns:getLaunchpointCase1="__project:///Schemas/integrations/getLaunchpointCase.xsd"
	xmlns:CaseEvaluator-process="http://bpms.everteam.com/Processes/Core/CaseEvaluator/process"
	xmlns:Launchpoint="http://www.example.org/Launchpoint" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema">
	<xsl:template match="/iob_response_root">
		<CaseEvaluator-process:Get_DCM_infoRequest>
			<Launchpoint:CaseId>
				<xsl:value-of select="CaseId" />
			</Launchpoint:CaseId>
			<Launchpoint:ISOIndicator>
				<xsl:value-of select="ISOIndicator" />
			</Launchpoint:ISOIndicator>
			<Launchpoint:Score>
				<xsl:value-of select="Score" />
			</Launchpoint:Score>
			<Launchpoint:AccidentDate>
				<xsl:value-of select="AccidentDate" />
			</Launchpoint:AccidentDate>
			<Launchpoint:BenefitAmount>
				<xsl:value-of select="BenefitAmount" />
			</Launchpoint:BenefitAmount>
			<Launchpoint:FundingSource>
				<xsl:value-of select="FundingSource" />
			</Launchpoint:FundingSource>
			<Launchpoint:LOB>
				<xsl:value-of select="LOB" />
			</Launchpoint:LOB>
			<Launchpoint:WorkComp>
				<xsl:value-of select="WorkComp" />
			</Launchpoint:WorkComp>
			<Launchpoint:CaseStatus>
				<xsl:value-of select="CaseStatus" />
			</Launchpoint:CaseStatus>
			<Launchpoint:CaseSource></Launchpoint:CaseSource>
			<Launchpoint:ClientId>
				<xsl:value-of select="ClientId" />
			</Launchpoint:ClientId>
			<Launchpoint:EnvironmentId></Launchpoint:EnvironmentId>
			<Launchpoint:LifeCycle>
				<xsl:value-of select="LifeCycle" />
			</Launchpoint:LifeCycle>
			<Launchpoint:CloseReason>
				<xsl:value-of select="CloseReason" />
			</Launchpoint:CloseReason>
		</CaseEvaluator-process:Get_DCM_infoRequest>
	</xsl:template>
</xsl:stylesheet>
