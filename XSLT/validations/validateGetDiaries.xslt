<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:Validation="http://www.example.org/Validation">
  <xsl:output/>
  <xsl:template match="/iob_element">
    <!--ClientId-->
    <xsl:variable name="chkClientId">
      <xsl:choose>
        <xsl:when test="ClientId">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="ClientId"/>
            <xsl:with-param name="dataType" select="integer"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--CaseId-->
    <xsl:variable name="chkCaseId">
      <xsl:choose>
        <xsl:when test="CaseId">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="CaseId"/>
            <xsl:with-param name="dataType" select="integer"/>
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
            <xsl:with-param name="dataType" select="datetime"/>
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
            <xsl:with-param name="dataType" select="string"/>
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
            <xsl:with-param name="dataType" select="datetime"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--ModifiedBy-->
    <xsl:variable name="chkModifiedBy">
      <xsl:choose>
        <xsl:when test="ModifiedBy">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="ModifiedBy"/>
            <xsl:with-param name="dataType" select="string"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--DiaryType-->
    <xsl:variable name="chkDiaryType">
      <xsl:choose>
        <xsl:when test="DiaryType">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="DiaryType"/>
            <xsl:with-param name="dataType" select="string"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--DiaryStatus-->
    <xsl:variable name="chkDiaryStatus">
      <xsl:choose>
        <xsl:when test="DiaryStatus">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="DiaryStatus"/>
            <xsl:with-param name="dataType" select="string"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--DueDate-->
    <xsl:variable name="chkDueDate">
      <xsl:choose>
        <xsl:when test="DueDate">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="DueDate"/>
            <xsl:with-param name="dataType" select="datetime"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--DiaryTo-->
    <xsl:variable name="chkDiaryTo">
      <xsl:choose>
        <xsl:when test="DiaryTo">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="DiaryTo"/>
            <xsl:with-param name="dataType" select="string"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <!--Description-->
    <xsl:variable name="chkDescription">
      <xsl:choose>
        <xsl:when test="Description">
          <xsl:call-template name="validator">
            <xsl:with-param name="obj" select="Description"/>
            <xsl:with-param name="dataType" select="string"/>
          </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>false</xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <Validation:DocumentValid>
      <xsl:choose>
        <xsl:when test="$chkClientId='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>ClientId</Validation:element>
        </xsl:when>
        <xsl:when test="$chkCaseId='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>CaseId</Validation:element>
        </xsl:when>
        <xsl:when test="$chkCreateDate='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>CreateDate</Validation:element>
        </xsl:when>
        <xsl:when test="$chkCreatedBy='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>CreatedBy</Validation:element>
        </xsl:when>
        <xsl:when test="$chkModifyDate='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>ModifyDate</Validation:element>
        </xsl:when>
        <xsl:when test="$chkModifiedBy='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>ModifiedBy</Validation:element>
        </xsl:when>
        <xsl:when test="$chkDiaryType='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>DiaryType</Validation:element>
        </xsl:when>
        <xsl:when test="$chkDiaryStatus='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>DiaryStatus</Validation:element>
        </xsl:when>
        <xsl:when test="$chkDueDate='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>DueDate</Validation:element>
        </xsl:when>
        <xsl:when test="$chkDiaryTo='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>DiaryTo</Validation:element>
        </xsl:when>
        <xsl:when test="$chkDescription='false'">
          <Validation:isValid>false</Validation:isValid>
          <Validation:element>Description</Validation:element>
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
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
