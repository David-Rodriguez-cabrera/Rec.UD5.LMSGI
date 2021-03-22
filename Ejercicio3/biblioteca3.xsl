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
       <td><xsl:value-of select="nombre"/></td>

       <td>

           <xsl:value-of select="@anio"/>
        </td>
    
        </tr>
        </xsl:for-each>
    
    </table>
    </body>
</html>

</xsl:template>
</xsl:stylesheet>