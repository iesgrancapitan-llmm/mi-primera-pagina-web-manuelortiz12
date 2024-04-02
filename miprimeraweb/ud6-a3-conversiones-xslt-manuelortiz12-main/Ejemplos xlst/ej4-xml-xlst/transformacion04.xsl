<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Transformación</title>
      </head>
      <body bgcolor="#fd00ff">
        <h1>Agenda</h1>
        <h2>Contactos</h2>
        <xsl:for-each select="/agenda/contactos/persona">
          <xsl:choose>
            <xsl:when test="direccion/localidad='Badajoz'">
              <xsl:value-of select="concat(identificadores/apellidos, ' - Tfno móvil: ',
telefonos/movil)" />
              <br />
            </xsl:when>
            <xsl:when test="direccion/localidad='Cáceres'">
              <xsl:value-of select="concat(identificadores/apellidos, ' - Tfno. casa: ',
telefonos/casa)" />
              <br />
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="concat(identificadores/apellidos, ' - Esta persona no es de Badajoz
ni de Cáceres')" />
              <br />
            </xsl:otherwise>
          </xsl:choose>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>