<!-- Replica la estructura del fichero pero filtrando los elementos y haciendo que
solo aparezcan los que estén en el aula A6.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>  
    <xsl:template match="/">
        <xsl:for-each select="//producto">  
            <xsl:if test="(peso>=7 and peso/@unidad='kg') or (peso>=7000 and peso/@unidad='g')">
                <xsl:value-of select="."/>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

  
  
  
  
  
   <!--  <xsl:template match="/">
           <html>
                <head>
                    <title>Ejercicio2</title>
                </head>
                <body>
                    <ul>
                        <xsl:for-each select="//producto[lugar[@edificio = 'A']/aula = 6]">  
                            <li>
                            Elemento <xsl:value-of select="@codigo" />
                                <ul>
                                    <li>
                                        Nombre: <xsl:value-of select="nombre"/>
                                    </li>
                                    <li>
                                        <xsl:apply-templates select="peso" />
                                    </li>
                                </ul>
                            </li>
                        </xsl:for-each>
                    </ul>
            
                </body>
            </html>
    </xsl:template>
    <xsl:template match="peso">
         Peso: <xsl:value-of select="." /><xsl:value-of select="@unidad" />
    </xsl:template> -->
</xsl:stylesheet>