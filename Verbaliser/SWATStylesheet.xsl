<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
<xsl:template match="/">
  <html>
  <head>
  <link><xsl:attribute name="href">../verbalisation.css</xsl:attribute>
  <xsl:attribute name="rel">stylesheet</xsl:attribute> 
  <xsl:attribute name="type">text/css</xsl:attribute>
  </link>
  <title>SWAT Tools output</title>
  </head>
  <body>
  <xsl:if test="count(/swatontology/description)!=0">
   <xsl:for-each select="swatontology/description">
 	<div class="def"><h2><xsl:attribute name="id"><xsl:value-of select="substring-after(@iri, '#')"/></xsl:attribute><xsl:value-of select="title"/> (<xsl:value-of select="title/@type"/>)</h2>
    <table>
    <xsl:for-each select="text/subgroup">
    	<tr><td width="80"><h3><xsl:value-of select="@id"/>
    	</h3></td>
    	<td><xsl:for-each select="sentence">
    	<p><xsl:apply-templates/></p>
    	</xsl:for-each>
    	</td>
    	</tr>
    </xsl:for-each>
    </table>
    </div>
    </xsl:for-each>
    </xsl:if>
    <xsl:if test="count(/swatontology/verbalisation)!=0">
    <xsl:for-each select="swatontology/verbalisation">
<xsl:for-each select="sentence">
<p><xsl:apply-templates/></p>
</xsl:for-each>
    </xsl:for-each> 
    </xsl:if>
  </body>
  </html>
</xsl:template>



<xsl:template match="sentence//text()">
<xsl:copy-of select="."/>
</xsl:template>
  
<xsl:template match="entity">
<xsl:if test="count(/swatontology/description)!=0">
<a>
<xsl:attribute name="href">#<xsl:value-of select="substring-after(@iri, '#')"/></xsl:attribute> 
<xsl:value-of select="."/>
</a>
</xsl:if>
<xsl:if test="count(/swatontology/verbalisation)!=0">
<xsl:value-of select="."/>
</xsl:if>
</xsl:template>

<xsl:template match="lexicon">
</xsl:template>

</xsl:transform>
