<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" indent="yes"/>

  <xsl:template match="/">
    <xsl:for-each select="ies/ciclos/ciclo">
      <xsl:value-of select="nombre"/>
      <xsl:text>&#10;</xsl:text>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="/">
    <xsl:for-each select="ies/ciclos/ciclo">
      <p><xsl:value-of select="nombre"/></p>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="/">
    <ul>
      <xsl:for-each select="ies/ciclos/ciclo">
        <li><xsl:value-of select="concat(nombre, ' (', grado, ')')"/></li>
      </xsl:for-each>
    </ul>
  </xsl:template>

  <xsl:template match="/">
    <xsl:variable name="sorted-ciclos" select="ies/ciclos/ciclo">
      <xsl:for-each select="$sorted-ciclos">
        <xsl:sort select="nombre" order="descending"/>
      </xsl:for-each>
    </xsl:variable>
    <ol>
      <xsl:for-each select="$sorted-ciclos">
        <li><xsl:value-of select="concat(nombre, ' (', grado, ')')"/></li>
      </xsl:for-each>
    </ol>
  </xsl:template>

  <xsl:template match="/">
    <html>
      <h1><xsl:value-of select="ies/@nombre"/></h1>
      <table border="1">
        <tr>
          <th>Nombre del ciclo</th>
          <th>Año</th>
        </tr>
        <xsl:for-each select="ies/ciclos/ciclo">
          <tr>
            <td><xsl:value-of select="nombre"/></td>
            <xsl:variable name="color">
              <xsl:choose>
                <xsl:when test="decretoTitulo/@año &gt; 2009">green</xsl:when>
                <xsl:when test="decretoTitulo/@año = 2009">blue</xsl:when>
                <xsl:otherwise>red</xsl:otherwise>
              </xsl:choose>
            </xsl:variable>
            <td style="color:{$color}"><xsl:value-of select="decretoTitulo/@año"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </html>
  </xsl:template>

</xsl:stylesheet>
