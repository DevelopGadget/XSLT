<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <xsl:variable name="map" select='"test"' />
        <root>
            <xsl:for-each select="root/title">
                <xsl:element name="{$map}">
                    <xsl:value-of select="name"/>
                </xsl:element>
            </xsl:for-each>
        </root>
    </xsl:template>

</xsl:stylesheet>