<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0"
xmlns:xsl= "http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <xsl:text>&#xA;</xsl:text>Nombre y Apellidos = David Rodriguez<xsl:text>&#xA;</xsl:text>
                <table border="1">
                    <xsl:for-each select="bib/libro">
                    <xsl:sort select="precio" order="ascending" data-type="number"/>
                    <xsl:choose>
                    <xsl:when test="precio &gt; 100">
                        <tr>
                            <td><xsl:value-of select="precio"/></td>
                            <td bgcolor= '#FF0000'><xsl:value-of select="titulo"/></td>
                            <td><i><xsl:value-of select="@anie"/></i></td>
                        </tr>
                    </xsl:when>
                    <xsl:when test="precio &lt; 100">
                        <tr>
                            <td><xsl:value-of select="precio"/></td>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><i><xsl:value-of select="@anie"/></i></td>
                        </tr>
                    </xsl:when>
                    </xsl:choose>     
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>