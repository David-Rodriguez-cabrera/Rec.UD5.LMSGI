<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <xsl:text>&#xA;</xsl:text>Nombre y Apellidos = David Rodriguez<xsl:text>&#xA;</xsl:text>
        <br></br>
        <xsl:for-each select="ies/ciclos/ciclo">
        <br></br>
        <xsl:value-of select="nombre"/>
        </xsl:for-each>
    </body>
</html>

</xsl:template>
</xsl:stylesheet>