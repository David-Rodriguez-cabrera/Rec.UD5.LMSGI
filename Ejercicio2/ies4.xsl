<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <xsl:text>&#xA;</xsl:text>Nombre y Apellidos = David Rodriguez<xsl:text>&#xA;</xsl:text>
        <ol>
        <xsl:for-each select="ies/ciclos/ciclo">
        
        <li><xsl:value-of select="nombre"/></li>
    
        </xsl:for-each>
    </ol>
    </body>
</html>

</xsl:template>
</xsl:stylesheet>