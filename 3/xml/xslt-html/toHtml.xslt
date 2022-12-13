<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:fn="http://www.w3.org/2005/xpath-functions"
                xmlns:u="http://example.org/xsd">
    <xsl:output method="html" encoding="UTF-8" />
    <xsl:template match="/u:universities">
        <html> 
            <body>
                <h2>Všechny uložené předměty</h2>
                <table>
                    <tr bgcolor="#CCCCCC">
                        <th>Kód</th>
                        <th>Jméno</th>
                        <th>Univerzita</th>
                        <th>Fakulta</th>
                    </tr>
                    <xsl:for-each select="//u:course">
                        <tr>
                            <td>
                                <xsl:value-of select="u:code"/>
                            </td>
                            <td>
                                <xsl:value-of select="u:names/u:name[@xml:lang='cs']"/>
                            </td>
                            <td>
                                <xsl:value-of select="ancestor::u:university/u:names/u:name[@xml:lang='cs']"/>
                            </td>
                            <td>
                                <xsl:value-of select="ancestor::u:faculty/u:names/u:name[@xml:lang='cs']"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                
                <h2>Všichni uložení studenti</h2>
                <table>
                    <tr bgcolor="#CCCCCC">
                        <th>Jméno</th>
                        <th>Datum narození</th>
                        <th>Univerzita</th>
                        <th>Fakulta</th>
                    </tr>
                    <xsl:for-each select="//u:faculty/u:students/u:student">
                        <tr>
                            <td>
                                <xsl:value-of select="u:name"/>
                            </td>
                            <td>
                                <xsl:value-of select="u:birthday"/>
                            </td>
                            <td>
                                <xsl:value-of select="ancestor::u:university/u:names/u:name[@xml:lang='cs']"/>
                            </td>
                            <td>
                                <xsl:value-of select="ancestor::u:faculty/u:names/u:name[@xml:lang='cs']"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                <h2>Všichni uložení učitelé</h2>
                <table>
                    <tr bgcolor="#CCCCCC">
                        <th>Jméno</th>
                        <th>Datum narození</th>
                        <th>Univerzita</th>
                        <th>Fakulta</th>
                    </tr>
                    <xsl:for-each select="//u:faculty/u:teachers/u:teacher">
                        <tr>
                            <td>
                                <xsl:value-of select="u:name"/>
                            </td>
                            <td>
                                <xsl:value-of select="u:birthday"/>
                            </td>
                            <td>
                                <xsl:value-of select="ancestor::u:university/u:names/u:name[@xml:lang='cs']"/>
                            </td>
                            <td>
                                <xsl:value-of select="ancestor::u:faculty/u:names/u:name[@xml:lang='cs']"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

