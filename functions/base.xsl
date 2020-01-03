
<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <root>
            <xsl:for-each select="Base/Aditional">
                <xsl:if test="Name != 'CM'">
                    <test>
                        <xsl:value-of select="Value">
                        </xsl:value-of>
                    </test>
                </xsl:if>
            </xsl:for-each>
            <test>
                <xsl:value-of select="sum(/Base/Aditional[/Name = 'CM']/Value)">
                </xsl:value-of>
            </test>
        </root>
    </xsl:template>
</xsl:stylesheet>