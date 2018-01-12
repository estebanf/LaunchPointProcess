<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:getIQBatch-process="http://bpms.everteam.com/Processes/Integrations/getIQBatch/process" xmlns:diag="http://bpms.everteam.com/Processes/Core/ProcessIQCase" xmlns:HumanVerification-process="http://bpms.everteam.com/Processes/Integrations/HumanVerification/process" xmlns:this="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Queue_Monitor" xmlns:tns="http://everteam.com/xvar/example" xmlns:Queue_MonitorimplicitPartner="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Queue_MonitorimplicitPartner" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:metrics="http://test.com/xvar/example" xmlns:getOldestQueuedCases-process="http://bpms.everteam.com/Processes/Integrations/getOldestQueuedCases/process" xmlns:generateFile-process="http://bpms.everteam.com/Processes/Integrations/generateFile/process" xmlns:ns="http://bpms.everteam.com/LaunchPointProcess" xmlns:Process_IQ_Case="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Process_IQ_Case">
  <!--XSL Skeleton generated on Mon Dec 11 13:40:48 EST 2017
 for F/LaunchPointProcess/Processes/Core/ProcessIQCase.bpm
   pool:Queue Monitor
   activity: Get IQDbCase
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/GetIQDbCase.xslt", $IQBatch, "caseid", $CaseResponse/Launchpoint:CaseId)
 Input document as defined in the mapper: $IQBatch-->
  <xsl:output/>
  <xsl:param name="caseid">
    <!--Parameter defined in mapper as $CaseResponse/Launchpoint:CaseId variable type: Launchpoint:IQBatchResponseCaseType-->
    <error>Parameter caseid no initialized</error>
  </xsl:param>
  <xsl:template match="/Launchpoint:IQBatch">
    <Launchpoint:IQDbCase>
    	<xsl:for-each select="Launchpoint:cases">
    		<xsl:if test="Launchpoint:Case/Launchpoint:CaseId = $caseid">
    			<xsl:copy-of select="Launchpoint:id" />
    			<xsl:copy-of select="Launchpoint:Case" />
    		</xsl:if>
    	</xsl:for-each>
    </Launchpoint:IQDbCase>
  </xsl:template>
</xsl:stylesheet>
