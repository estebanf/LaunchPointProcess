<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="2.0"
	xmlns:this="http://bpms.everteam.com/Processes/Core/ProcessISOResponse/ISO_Response_Manager"
	xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:Tracking="http://www.example.org/Tracking">
	<xsl:template match="/this:Receive_ISO_ResponseRequest">
		<Tracking:ISOResponseTrackingType>
			<Tracking:Pid></Tracking:Pid>
			<Tracking:RequestId>
				<xsl:value-of select="Launchpoint:content/ClaimInvestigationAddRs/RqUID" />
			</Tracking:RequestId>
			<Tracking:CaseId></Tracking:CaseId>
			<Tracking:Clientid></Tracking:Clientid>
			<Tracking:BatchId></Tracking:BatchId>
			<Tracking:EnvironmentId></Tracking:EnvironmentId>
			<Tracking:PreviousScore></Tracking:PreviousScore>
			<Tracking:Content>
				<xsl:copy-of select="Launchpoint:content/ClaimInvestigationAddRs" />
			</Tracking:Content>
			<Tracking:Status></Tracking:Status>
			<Tracking:Score></Tracking:Score>
			<Tracking:IsoResponseReceived></Tracking:IsoResponseReceived>
			<Tracking:PreviousScoreRetrieved></Tracking:PreviousScoreRetrieved>
			<Tracking:IsoResponseSent></Tracking:IsoResponseSent>
			<Tracking:ScoreReceived></Tracking:ScoreReceived>
			<Tracking:DiaryCreated></Tracking:DiaryCreated>
			<Tracking:ActivityCreated></Tracking:ActivityCreated>
			<Tracking:IqCancelled></Tracking:IqCancelled>
			<Tracking:IsoCancelled></Tracking:IsoCancelled>
			<Tracking:CaseClosed></Tracking:CaseClosed>
			<Tracking:ExceptionCreated></Tracking:ExceptionCreated>
			<Tracking:CaseReopened></Tracking:CaseReopened>
			<Tracking:IqSent></Tracking:IqSent>
			<Tracking:IsoResponseReceivedAt></Tracking:IsoResponseReceivedAt>
			<Tracking:PreviousScoreRetrievedAt></Tracking:PreviousScoreRetrievedAt>
			<Tracking:IsoResponseSentAt></Tracking:IsoResponseSentAt>
			<Tracking:ScoreReceivedAt></Tracking:ScoreReceivedAt>
			<Tracking:DiaryCreatedAt></Tracking:DiaryCreatedAt>
			<Tracking:ActivityCreatedAt></Tracking:ActivityCreatedAt>
			<Tracking:IqCancelledAt></Tracking:IqCancelledAt>
			<Tracking:IsoCancelledAt></Tracking:IsoCancelledAt>
			<Tracking:CaseClosedAt></Tracking:CaseClosedAt>
			<Tracking:ExceptionCreatedAt></Tracking:ExceptionCreatedAt>
			<Tracking:CaseReopenedAt></Tracking:CaseReopenedAt>
			<Tracking:IqSentAt></Tracking:IqSentAt>
		</Tracking:ISOResponseTrackingType>
	</xsl:template>
</xsl:stylesheet>
