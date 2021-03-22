<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <pre><b>Nombre y Apellidos = David Rodriguez</b></pre>
        <h1>IES Nuestra Sra. de los Remedios</h1>
        <table border="1">
            <tr>
            <th>Nombre</th>
            <th>Anio</th>
            </tr>
        <xsl:for-each select="ies/ciclos/ciclo">
        
        <tr>

            <xsl:choose>
                <xsl:when test="@anio &gt; '2009'">
                    <xsl:for-each select="decretoTitulo">
       <td bgcolor="#23FF00">
           
           <xsl:value-of select="@anio"/>
        </td>
        </xsl:for-each>
                    </xsl:when>

                    <xsl:when test="@anio = '2009'">
                        <xsl:for-each select="decretoTitulo">
       <td bgcolor="#00FFF3">
           <xsl:value-of select="@anio"/>
        </td>
        </xsl:for-each>
                    </xsl:when>

                    <xsl:when test="@anio &lt; '2009'">
                        <xsl:for-each select="decretoTitulo">
       <td bgcolor="#FF0000">
           <xsl:value-of select="@anio"/>
        </td>
        </xsl:for-each>
                    </xsl:when>

                    <xsl:otherwise>
                        <td><xsl:value-of select="nombre"/></td>
                        <xsl:for-each select="decretoTitulo">
       <td bgcolor="23FF00">
           <xsl:value-of select="@anio"/>
        </td>
        </xsl:for-each>
                    </xsl:otherwise>
                    </xsl:choose>
       
        </tr>
    
        </xsl:for-each>
    
    </table>
    </body>
</html>

</xsl:template>
</xsl:stylesheet>
