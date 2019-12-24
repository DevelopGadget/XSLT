<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <h2>Cars</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <xsl:for-each select="root/title">
                            <th>
                                <xsl:value-of select="name"/>
                            </th>
                        </xsl:for-each>
                    </tr>
                    <xsl:for-each select="root/result">
                        <xsl:sort select="make_id"/>
                        <xsl:if test="make_id &gt; 100">
                            <tr>
                                <td>
                                    <xsl:value-of select="make_id"/>
                                </td>
                                <td>
                                    <xsl:value-of select="make"/>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>