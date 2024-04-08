<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/biblioteca">
    <html>
        <head>
            <title>Catálogo de la Biblioteca</title>
        </head>
        <body>
            <h1>Libros en la Biblioteca</h1>
            <table border="1">
                <tr>
                    <th>Título</th>
                    <th>Autor</th>
                    <th>Año</th>
                    <th>Precio</th>
                </tr>

                <xsl:for-each select="libro">
                    <tr>
                        <td><xsl:value-of select="titulo"/></td>
                        <td><xsl:value-of select="autor"/></td>
                        <td><xsl:value-of select="año"/></td>
                        <td><xsl:value-of select="precio"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>
