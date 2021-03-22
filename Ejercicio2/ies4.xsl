<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <pre><b>Nombre y Apellidos = David Rodriguez</b></pre>
        <xsl:for-each select="ies/ciclos/ciclo">
        <ul>
        <li><xsl:value-of select="nombre"/></li>
    </ul>
        </xsl:for-each>
    </body>
</html>

</xsl:template>
</xsl:stylesheet>