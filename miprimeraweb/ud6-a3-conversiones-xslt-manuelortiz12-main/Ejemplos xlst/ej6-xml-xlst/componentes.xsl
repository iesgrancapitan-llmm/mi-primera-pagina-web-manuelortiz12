<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output encoding="utf-8" omit-xml-declaration="yes" method="html" indent="yes" />
    <xsl:template match="/">
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text>
        <html lang="es">
            <body>
                <h1>
                    <xsl:value-of select="componentes/titulo" />
                </h1>
                <table border = "3">
                    <tr>
                        <th>Item</th>
                        <th>Fabricante</th>
                        <th>Modelo</th>
                        <th>Precio</th>
                    </tr>
                    <xsl:for-each select="componentes/componente">
                        <xsl:sort select="precio" data-type="number" order="ascending" />
                        <tr>
                            <td>
                                <xsl:value-of select="item" />
                            </td>
                            <td>
                                <xsl:value-of select="fabricante" />
                            </td>
                            <td>
                                <xsl:value-of select="modelo" />
                            </td>
                            <td>
                                <xsl:value-of select="precio" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>