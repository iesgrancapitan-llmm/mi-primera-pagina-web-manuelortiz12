<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Transformación</title>
      </head>
      <body bgcolor="#c0c0ff">
        <h1>Agenda</h1>
        <h2>
          Contactos -
          <xsl:value-of select="count(/agenda/contactos/persona)" />
        </h2>
        <xsl:for-each select="/agenda/contactos/persona">
          <b>Apellidos y nombre: </b>
          <xsl:value-of select="identificadores/apellidos" />
          <xsl:text>, </xsl:text>
          <xsl:value-of select="identificadores/nombre" />
          <xsl:if test="direccion/localidad='Badajoz'">
            <b>
              - C.P.:
              <xsl:value-of select="direccion/cp" />
              de Badajoz
            </b>
          </xsl:if>
          <br />
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
