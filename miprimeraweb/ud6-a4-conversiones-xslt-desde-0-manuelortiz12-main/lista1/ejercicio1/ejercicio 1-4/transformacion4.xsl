<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/">
    <html>
      <table border="1">
        <xsl:apply-templates select="ies/ciclos/ciclo"/>
      </table>
    </html>
  </xsl:template>

  <xsl:template match="ciclo">
    <tr>
      <td>
        <xsl:value-of select="nombre"/>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
