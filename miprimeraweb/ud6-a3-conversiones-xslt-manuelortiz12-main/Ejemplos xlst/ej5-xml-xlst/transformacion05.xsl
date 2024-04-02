<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Transformación</title>
      </head>
      <body bgcolor="#88aaaa">
        <h1>Agenda</h1>
        <h2>Contactos</h2>
        <table border="3">
          <tr bgcolor="#00dddd">
            <td>Apellidos</td>
            <td>Nombre</td>
            <td>Localidad</td>
            <td>Id</td>
            <td>Tfno casa</td>
            <td>Tfno móvil</td>
            <td>Tfno trabajo</td>
          </tr>
          <xsl:for-each select="/agenda/contactos/persona/identificadores">
            <xsl:sort select="apellidos" order="descending" />
            <tr>
              <td>
                <xsl:value-of select="apellidos" />
              </td>
              <td>
                <xsl:value-of select="nombre" />
              </td>
              <td>
                <xsl:value-of select="../direccion/localidad" />
              </td>
              <td>
                <xsl:value-of select="../@id" />
              </td>
              <td>
                <xsl:if test="../telefonos/casa">
                  <xsl:value-of select="../telefonos/casa" />
                </xsl:if>
              </td>
              <td>
                <xsl:if test="../telefonos/movil">
                  <xsl:value-of select="../telefonos/movil" />
                </xsl:if>
              </td>
              <td>
                <xsl:if test="../telefonos/trabajo">
                  <xsl:value-of select="../telefonos/trabajo" />
                </xsl:if>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>