<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:Validation="http://www.example.org/Validation">
  <xsl:output/>
  <xsl:template match="/iob_response_root">
    <!--CaseId-->
    <xsl:variable name="chkCaseId">
      <xsl:choose>
        <xsl:when test="CaseId">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="CaseId"/>
            <xsl:with-param name="dataType" select="'integer'"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--ClientId-->
    <xsl:variable name="chkClientId">
      <xsl:choose>
        <xsl:when test="ClientId">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="ClientId"/>
            <xsl:with-param name="dataType" select="'integer'"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--ISOIndicator-->
    <xsl:variable name="chkISOIndicator">
      <xsl:choose>
        <xsl:when test="ISOIndicator">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="ISOIndicator"/>
            <xsl:with-param name="dataType" select="'integer'"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--Score-->
    <xsl:variable name="chkScore">
      <xsl:choose>
        <xsl:when test="Score">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="Score"/>
            <xsl:with-param name="dataType" select="'integer'"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--AccidentDate-->
    <xsl:variable name="chkAccidentDate">
      <xsl:choose>
        <xsl:when test="AccidentDate">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="AccidentDate"/>
            <xsl:with-param name="dataType" select="'datetime'"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--BenefitAmount-->
    <xsl:variable name="chkBenefitAmount">
      <xsl:choose>
        <xsl:when test="BenefitAmount">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="BenefitAmount"/>
            <xsl:with-param name="dataType" select="'double'"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--FundingSource-->
    <xsl:variable name="chkFundingSource">
      <xsl:choose>
        <xsl:when test="FundingSource">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="FundingSource"/>
            <xsl:with-param name="dataType" select="'string'"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--LOB-->
    <xsl:variable name="chkLOB">
      <xsl:choose>
        <xsl:when test="LOB">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="LOB"/>
            <xsl:with-param name="dataType" select="'string'"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--State-->
    <xsl:variable name="chkState">
      <xsl:choose>
        <xsl:when test="State">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="State"/>
            <xsl:with-param name="dataType" select="'string'"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--WorkComp-->
    <xsl:variable name="chkWorkComp">
      <xsl:choose>
        <xsl:when test="WorkComp">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="WorkComp"/>
            <xsl:with-param name="dataType" select="'string'"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--CaseStatus-->
    <xsl:variable name="chkCaseStatus">
      <xsl:choose>
        <xsl:when test="CaseStatus">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="CaseStatus"/>
            <xsl:with-param name="dataType" select="'string'"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--CaseSource-->
    <xsl:variable name="chkCaseSource">
      <xsl:choose>
        <xsl:when test="CaseSource">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="CaseSource"/>
            <xsl:with-param name="dataType" select="'string'"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--SkipDuplicateCheck-->
    <xsl:variable name="chkSkipDuplicateCheck">
      <xsl:choose>
        <xsl:when test="SkipDuplicateCheck">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="SkipDuplicateCheck"/>
            <xsl:with-param name="dataType" select="'boolean'"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--InvalidAddress-->
    <xsl:variable name="chkInvalidAddress">
      <xsl:choose>
        <xsl:when test="InvalidAddress">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="InvalidAddress"/>
            <xsl:with-param name="dataType" select="'boolean'"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--LifecycleDescription-->
    <xsl:variable name="chkLifeCycle">
      <xsl:choose>
        <xsl:when test="LifeCycle">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="LifeCycle"/>
            <xsl:with-param name="dataType" select="'string'"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--CloseReason-->
    <xsl:variable name="chkCloseReason">
      <xsl:choose>
        <xsl:when test="CloseReason">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="CloseReason"/>
            <xsl:with-param name="dataType" select="'string'"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--VipIndicator-->
    <xsl:variable name="chkVipIndecator">
      <xsl:choose>
        <xsl:when test="VipIndecator">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="VipIndecator"/>
            <xsl:with-param name="dataType" select="'boolean'"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--CreateDate-->
    <xsl:variable name="chkCreateDate">
      <xsl:choose>
        <xsl:when test="CreateDate">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="CreateDate"/>
            <xsl:with-param name="dataType" select="'datetime'"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--ModifyDate-->
    <xsl:variable name="chkModifyDate">
      <xsl:choose>
        <xsl:when test="ModifyDate">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="ModifyDate"/>
            <xsl:with-param name="dataType" select="'datetime'"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--CreatedBy-->
    <xsl:variable name="chkCreatedBy">
      <xsl:choose>
        <xsl:when test="CreatedBy">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="CreatedBy"/>
            <xsl:with-param name="dataType" select="'string'"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--ModifyBy-->
    <xsl:variable name="chkModifyBy">
      <xsl:choose>
        <xsl:when test="ModifyBy">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="ModifyBy"/>
            <xsl:with-param name="dataType" select="'string'"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <Validation:DocumentValid>
      <xsl:choose>
        <xsl:when test="$chkCaseId='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>CaseId</Validation:element>
        </xsl:when>
        <xsl:when test="$chkClientId='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>ClientId</Validation:element>
        </xsl:when>
        <xsl:when test="$chkISOIndicator='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>ISOIndicator</Validation:element>
        </xsl:when>
        <xsl:when test="$chkScore='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>Score</Validation:element>
        </xsl:when>
        <xsl:when test="$chkAccidentDate='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>AccidentDate</Validation:element>
        </xsl:when>
        <xsl:when test="$chkBenefitAmount='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>BenefitAmount</Validation:element>
        </xsl:when>
        <xsl:when test="$chkFundingSource='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>FundingSource</Validation:element>
        </xsl:when>
        <xsl:when test="$chkLOB='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>LOB</Validation:element>
        </xsl:when>
        <xsl:when test="$chkState='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>State</Validation:element>
        </xsl:when>
        <xsl:when test="$chkWorkComp='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>WorkComp</Validation:element>
        </xsl:when>
        <xsl:when test="$chkCaseStatus='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>CaseStatus</Validation:element>
        </xsl:when>
        <xsl:when test="$chkCaseSource='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>CaseSource</Validation:element>
        </xsl:when>
        <xsl:when test="$chkSkipDuplicateCheck='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>SkipDuplicateCheck</Validation:element>
        </xsl:when>
        <xsl:when test="$chkInvalidAddress='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>InvalidAddress</Validation:element>
        </xsl:when>
        <xsl:when test="$chkLifeCycle='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>LifeCycle</Validation:element>
        </xsl:when>
        <xsl:when test="$chkCloseReason='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>CloseReason</Validation:element>
        </xsl:when>
        <xsl:when test="$chkVipIndecator='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>VipIndicator</Validation:element>
        </xsl:when>
        <xsl:when test="$chkCreateDate='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>CreateDate</Validation:element>
        </xsl:when>
        <xsl:when test="$chkModifyDate='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>ModifyDate</Validation:element>
        </xsl:when>
        <xsl:when test="$chkCreatedBy='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>CreatedBy</Validation:element>
        </xsl:when>
        <xsl:when test="$chkModifyBy='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>ModifyBy</Validation:element>
        </xsl:when>
        <xsl:otherwise>
          <Validation:isValid>true</Validation:isValid>
          <Validation:element/>
        </xsl:otherwise>
      </xsl:choose>
    </Validation:DocumentValid>
  </xsl:template>
  <xsl:template name="validator">
    <xsl:param name="obj"/>
    <xsl:param name="dataType"/>
    <xsl:choose>
      <xsl:when test="$obj/text() = ''">false</xsl:when>
      <xsl:otherwise>
        <xsl:choose>
          <xsl:when test="$dataType = 'integer' ">
            <xsl:value-of select="string($obj/text()) castable as xs:integer"/>
          </xsl:when>
          <xsl:when test="$dataType = 'string' ">
            <xsl:value-of select="string($obj/text()) castable as xs:string"/>
          </xsl:when>
          <xsl:when test="$dataType = 'double' ">
            <xsl:value-of select="string($obj/text()) castable as xs:double"/>
          </xsl:when>
          <xsl:when test="$dataType = 'boolean' ">
            <xsl:value-of select="string($obj/text()) castable as xs:boolean"/>
          </xsl:when>
          <xsl:when test="$dataType = 'date' ">
            <xsl:value-of select="string($obj/text()) castable as xs:date"/>
          </xsl:when>
          <xsl:when test="$dataType = 'datetime' ">
            <xsl:value-of select="string($obj/text()) castable as xs:dateTime"/>
          </xsl:when>
          <xsl:otherwise>HERE</xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>