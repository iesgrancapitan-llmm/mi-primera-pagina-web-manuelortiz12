<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Manuel Ortiz</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background-color: #f0f0f0;
                    }
                    h1 {
                        color: #333333;
                    }
                    table {
                        border-collapse: collapse;
                        border: 2px solid #333333;
                        margin-bottom: 20px;
                    }
                    th, td {
                        border: 1px solid #cccccc;
                        padding: 8px;
                        text-align: left;
                    }
                    .green {
                        color: green;
                    }
                    .red {
                        color: red;
                    }
                </style>
            </head>
            <body>
                <h1>Catálogo de Concesionarios</h1>
                <h2>Primeros 5 vehículos</h2>
                <ol>
                    <xsl:for-each select="/concesionarios/concesionario/catalogo/vehiculo[position() &lt;= 5]">
                        <li><xsl:value-of select="modelo"/></li>
                    </xsl:for-each>
                </ol>
                <h2>Vehículos</h2>
                <table>
                    <tr>
                        <th>Tipo de Vehiculo</th>
                        <th>Modelo</th>
                        <th>Año</th>
                        <th>Precio</th>
                        <th>Kilometros</th>
                    </tr>
                    <xsl:apply-templates select="/concesionarios/concesionario/catalogo/vehiculo[position() &gt; 5 and position() &lt;= 10 ]"></xsl:apply-templates>"/>
                </table>
                <h2>Vehículos con colores condicionales</h2>
                <table>
                    <tr>
                        <th>Tipo de Vehiculo</th>
                        <th>Modelo</th>
                        <th>Año</th>
                        <th>Precio</th>
                        <th>Kilometros</th>
                    </tr>
                    <xsl:apply-templates select="/concesionarios/concesionario/catalogo/vehiculo[position() &gt; 10 and position() &lt;= 15 ]"/>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="vehiculo">
        <xsl:variable name="color">
            <xsl:choose>
                <xsl:when test="anno &gt; 2000">green</xsl:when>
                <xsl:otherwise>red</xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <tr>
            <xsl:attribute name="class">
                <xsl:value-of select="$color"/>
            </xsl:attribute>
            <td><xsl:value-of select="@tipo"/></td>
            <td><xsl:value-of select="modelo"/></td>
            <td><xsl:value-of select="anno"/></td>
            <td><xsl:value-of select="precio"/></td>
            <td><xsl:value-of select="kilometros"/></td>
        </tr>
    </xsl:template>

</xsl:stylesheet>
