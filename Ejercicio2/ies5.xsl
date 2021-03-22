<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <xsl:text>&#xA;</xsl:text>Nombre y Apellidos = David Rodriguez<xsl:text>&#xA;</xsl:text>
        <h1><xsl:value-of select="ies/@nombre"/></h1>
        <table border="1">
            <tr>
            <th>Nombre</th>
            <th>Anio</th>
            </tr>
        <xsl:for-each select="ies/ciclos/ciclo">
        
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <xsl:choose>
                <xsl:when test="decretoTitulo/@anio &gt; 2009">
                <td><font color ="#00FF00">
                    <xsl:value-of select="decretoTitulo/@anio"/>
                    </font>
                </td>
                </xsl:when>
                <xsl:when test="decretoTitulo/@anio &lt; 2009">
                <td><font color ="#FF0000">
                    <xsl:value-of select="decretoTitulo/@anio"/>
                    </font>
                </td>
                </xsl:when>
                <xsl:when test="decretoTitulo/@anio =2009">
                    <td><font color ="#0000FF">
                        <xsl:value-of select="decretoTitulo/@anio"/>
                        </font>
                    </td>
                </xsl:when>
            </xsl:choose>
        </tr>
    
        </xsl:for-each>
    
    </table>
    </body>
</html>

</xsl:template>
</xsl:stylesheet>