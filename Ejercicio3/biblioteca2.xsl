<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">
<xsl:text>&#xA;</xsl:text>Nombre y Apellidos = David Rodriguez<xsl:text>&#xA;</xsl:text>
    <ol>
        <xsl:for-each select="bib/libro">
        <xsl:if test="precio &lt; 100">
        <li>
            <xsl:text>&#xA;</xsl:text><xsl:value-of select="titulo"/><xsl:text>&#xA;</xsl:text>
        </li>
    </xsl:if>
        </xsl:for-each>
    </ol>  
</xsl:template>
</xsl:stylesheet>