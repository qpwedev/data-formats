<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
            <body>
                <h2>Courses</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>University</th>
                        <th>Faculty</th>
                        <th>English name</th>
                        <th>Czech name</th>
                        <th>Code</th>
                        <th>Website</th>
                    </tr>
                    <xsl:for-each select="//u:course">
                        <tr>
                            <td>
                                <xsl:value-of select="u:websites/u:website" />
                            </td>
                            <td>
                                <xsl:value-of select="u:names/u:name[@xml:lang='en']" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet> 