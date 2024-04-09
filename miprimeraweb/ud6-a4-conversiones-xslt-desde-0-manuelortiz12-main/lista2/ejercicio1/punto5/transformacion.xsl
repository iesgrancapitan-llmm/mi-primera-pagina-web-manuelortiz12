﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes" />

  <xsl:template match="/">
    <html>
      <body>
          <xsl:apply-templates select="ies" />
      </body>
    </html>
  </xsl:template>

  <xsl:template match="/ies">
    <h1><xsl:value-of select="@nombre" /></h1>
    <xsl:apply-templates select="ciclos" />
  </xsl:template>

  <xsl:template match="/ies/ciclos">
    <table border="1">
      <tr><th>Nombre</th><th>Año</th></tr>
      <xsl:apply-templates select="ciclo" />
    </table>
  </xsl:template>

  <xsl:template match="/ies/ciclos/ciclo">
    <tr>
      <td><xsl:apply-templates select="nombre" /></td>
      <td><xsl:apply-templates select="decretoTitulo" /></td>
    </tr>
  </xsl:template>

  <xsl:template match="/ies/ciclos/ciclo/nombre">
    <xsl:value-of select="." />
  </xsl:template>

  <xsl:template match="/ies/ciclos/ciclo/decretoTitulo">
    <xsl:choose>
      <xsl:when test="@año &gt; 2009">
        <span style="color: green;"><xsl:value-of select="@año" /></span>
      </xsl:when>
      <xsl:when test="@año &lt; 2009">
        <span style="color: red"><xsl:value-of select="@año" /></span>
      </xsl:when>
      <xsl:otherwise>
        <span style="color: blue"><xsl:value-of select="@año" /></span>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>