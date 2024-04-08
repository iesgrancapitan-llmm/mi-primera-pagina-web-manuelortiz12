<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" indent="yes"/>

  <xsl:template match="/">
    <xsl:for-each select="//autor">
      <xsl:sort select="apellido"/>
      <xsl:number count="autor"/>
      <xsl:text>. </xsl:text>
      <xsl:value-of select="concat(nombre, ' ', apellido)"/>
      <xsl:text>&#10;</xsl:text>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="/">
    <xsl:for-each select="//libro[precio &lt; 100]/titulo">
      <xsl:number count="titulo"/>
      <xsl:text>. </xsl:text>
      <xsl:value-of select="."/>
      <xsl:text>&#10;</xsl:text>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="/">
    <table border="1">
      <tr>
        <th>Precio del libro</th>
        <th>Título del libro</th>
        <th>Año de publicación</th>
      </tr>
      <xsl:for-each select="//libro">
        <xsl:sort select="precio"/>
        <tr>
          <xsl:variable name="color" select="if (precio &gt; 100) then 'red' else 'black'"/>
          <td style="background-color:{$color}">
            <xsl:value-of select="precio"/>
          </td>
          <td>
            <xsl:value-of select="titulo"/>
          </td>
          <td>
            <i><xsl:value-of select="@año"/></i>
          </td>
        </tr>
      </xsl:for-each>
    </table>
  </xsl:template>
  
  <xsl:template match="/">
    <table border="1">
      <tr>
        <th>Título del libro</th>
        <th>Autores</th>
        <th>Editores</th>
      </tr>
      <xsl:for-each select="//libro">
        <xsl:sort select="precio"/>
        <tr>
          <xsl:variable name="color" select="if (precio &gt; 100) then 'red' else 'black'"/>
          <td style="color:{$color}">
            <xsl:value-of select="titulo"/>
            <xsl:if test="precio &gt; 100">(Caro)</xsl:if>
          </td>
          <td>
            <xsl:for-each select="autor">
              <xsl:value-of select="concat(nombre, ' ', apellido)"/>
              <xsl:if test="position() != last()"> </xsl:if>
            </xsl:for-each>
          </td>
          <td>
            <xsl:for-each select="editor">
              <xsl:value-of select="concat(nombre, ' ', apellido, ' ', afiliacion)"/>
              <xsl:if test="position() != last()"> </xsl:if>
            </xsl:for-each>
          </td>
        </tr>
      </xsl:for-each>
    </table>
  </xsl:template>

</xsl:stylesheet>
