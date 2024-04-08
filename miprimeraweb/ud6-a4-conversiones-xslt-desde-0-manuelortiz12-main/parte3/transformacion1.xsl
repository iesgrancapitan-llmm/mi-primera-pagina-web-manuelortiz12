<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>Contenido de las etiquetas</h2>
    <table border="1">
      <tr>
        <th>Etiqueta</th>
        <th>Contenido</th>
      </tr>
      <xsl:apply-templates/>
    </table>
  </body>
  </html>
</xsl:template>

<xsl:template match="*">
  <tr>
    <td><xsl:value-of select="name()"/></td>
    <td><xsl:value-of select="."/></td>
  </tr>
</xsl:template>

</xsl:stylesheet>
