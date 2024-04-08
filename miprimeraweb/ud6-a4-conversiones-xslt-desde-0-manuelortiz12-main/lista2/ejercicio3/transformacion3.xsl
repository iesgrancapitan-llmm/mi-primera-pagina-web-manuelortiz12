<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" indent="yes"/>

  <xsl:template match="/">
    <xsl:text>Autores españoles:&#10;</xsl:text>
    <xsl:for-each select="//artista[nacionalidad='España']/nombre">
      <xsl:value-of select="."/>
      <xsl:text>&#10;</xsl:text>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="/">
    <table border="1">
      <tr>
        <th>Nombre del disco</th>
      </tr>
      <xsl:for-each select="//cds/cd">
        <tr>
          <xsl:choose>
            <xsl:when test="año &gt; 2000">
              <td style="color:green">
                <xsl:value-of select="titulo"/>
              </td>
            </xsl:when>
            <xsl:otherwise>
              <td style="color:red">
                <xsl:value-of select="titulo"/>
              </td>
            </xsl:otherwise>
          </xsl:choose>
        </tr>
      </xsl:for-each>
    </table>
  </xsl:template>

</xsl:stylesheet>
