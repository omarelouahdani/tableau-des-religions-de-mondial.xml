<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" indent="yes"></xsl:output>
    <xsl:template match="/">
        
        <table class="table">
            
            <tr>
                <th scope="col">  </th>
                <th scope="col">Muslim</th>
                <th scope="col">Roman catholic</th>
                <th scope="col">christian Orthodox</th>
                <th scope="col">Protestant</th>
                <th scope="col">Jwish</th>
            </tr>
            
            
            
            
            
            
            
            <xsl:for-each select="/*/continent">
                <tr>
                    <xsl:variable name="cont" select="@id"></xsl:variable>
                    <th scope="col">
                        <xsl:value-of select="@id"></xsl:value-of>    
                    </th>
                    <td>
                       <xsl:variable name="VR" select="sum(//country/encompassed[@continent=$cont]/parent::country/religion[text()='Muslim']/(@percentage  * parent::country/population[last()] div 100))"></xsl:variable>
                        <xsl:value-of select="format-number($VR,'#')"></xsl:value-of>
                    </td>
                    <td>
                       <xsl:variable name="VR" select="sum(//country/encompassed[@continent=$cont]/parent::country/religion[text()='Roman catholic']/(@percentage  * parent::country/population[last()] div 100))"></xsl:variable>
                       <xsl:value-of select="format-number($VR,'#')"></xsl:value-of>
                    </td>
                    <td>
                       <xsl:variable name="VR" select="sum(//country/encompassed[@continent=$cont]/parent::country/religion[text()='christian Orthodox']/(@percentage  * parent::country/population[last()] div 100))"></xsl:variable>
                       <xsl:value-of select="format-number($VR,'#')"></xsl:value-of>
                    </td>
                    <td>
                       <xsl:variable name="VR" select="sum(//country/encompassed[@continent=$cont]/parent::country/religion[text()='Protestant']/(@percentage  * parent::country/population[last()] div 100))"></xsl:variable>
                       <xsl:value-of select="format-number($VR,'#')"></xsl:value-of>
                    </td>
                    <td>
                       <xsl:variable name="VR" select="sum(//country/encompassed[@continent=$cont]/parent::country/religion[text()='Jwish']/(@percentage  * parent::country/population[last()] div 100))"></xsl:variable>
                       <xsl:value-of select="format-number($VR,'#')"></xsl:value-of>
                    </td>
                    
                     
                </tr>
                    
                
                
                
            </xsl:for-each> 
            
            
            
            
        </table>
        
        
        
        
        
        
        
    </xsl:template>
</xsl:stylesheet>