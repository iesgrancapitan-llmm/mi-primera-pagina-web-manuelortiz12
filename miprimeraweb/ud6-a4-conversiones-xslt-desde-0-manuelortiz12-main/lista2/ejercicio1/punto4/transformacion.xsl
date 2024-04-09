﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes" />

  <xsl:template match="/">
    <html>
      <body>
          <xsl:apply-templates select="ies/ciclos" />
      </body>
    </html>
  </xsl:template>

  <xsl:template match="/ies/ciclos">
    <ol>
      <xsl:apply-templates select="ciclo" >
        <xsl:sort select="nombre" order="descending" />
      </xsl:apply-templates>
    </ol>
  </xsl:template>

  <xsl:template match="/ies/ciclos/ciclo">
    <li><xsl:apply-templates select="nombre" /> (<xsl:apply-templates select="grado" />)</li>
  </xsl:template>

  <xsl:template match="/ies/ciclos/ciclo/nombre">
    <xsl:value-of select="." />
  </xsl:template>

  <xsl:template match="/ies/ciclos/ciclo/grado">
    <xsl:value-of select="." />
  </xsl:template>
</xsl:stylesheet>