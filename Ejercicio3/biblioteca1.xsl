<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>
<xsl:template match="/">
<pre><b>Nombre y Apellidos = David Rodriguez</b></pre>
    <xsl:for-each select="bib/libro">
    <xsl:for-each select="autor">
    <xsl:value-of select="nombre"/>
    <xsl:value-of select="apellidos"/>
</xsl:for-each>
    </xsl:for-each>
</xsl:template>
</xsl:stylesheet>