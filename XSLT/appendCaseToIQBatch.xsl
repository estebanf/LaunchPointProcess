<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:getIQLetter-dcm="http://bpms.everteam.com/Processes/Integrations/getIQLetter/dcm" xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:getIQBatch-process="http://bpms.everteam.com/Processes/Integrations/getIQBatch/process" xmlns:GenerateFile="__project:///Schemas/GenerateFile.xsd" xmlns:diag="http://bpms.everteam.com/Processes/Core/ProcessIQCase" xmlns:this="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Queue_Monitor" xmlns:tns="http://everteam.com/xvar/example" xmlns:Queue_MonitorimplicitPartner="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Queue_MonitorimplicitPartner" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:metrics="http://test.com/xvar/example" xmlns:generateIQBatch="http://www.example.org/generateIQBatch" xmlns:getOldestQueuedCases-process="http://bpms.everteam.com/Processes/Integrations/getOldestQueuedCases/process" xmlns:ns="http://bpms.everteam.com/LaunchPointProcess">
  <!--XSL Skeleton generated on Tue Dec 05 11:55:35 MST 2017
 for F/LaunchPointProcess/Processes/Core/ProcessIQCase.bpm
   pool:Queue Monitor
   activity: Add case to batch
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/appendCaseToIQBatch.xsl", $iqRequestBatch, "newCase", $Cases)
 Input document as defined in the mapper: $iqRequestBatch-->
  <xsl:output/>
  <xsl:param name="newCase">
    <!--Parameter defined in mapper as $Cases variable type: generateIQBatch:Cases-->
    <error>Parameter newCase no initialized</error>
  </xsl:param>
  <xsl:template match="/generateIQBatch:iob_request_root">
    <generateIQBatch:iob_request_root>
    	<xsl:copy-of select="*"/>
      	<xsl:copy-of select="$newCase"/>
    </generateIQBatch:iob_request_root>
  </xsl:template>
</xsl:stylesheet>
