<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    
    <xsl:output 
        method="html"
        encoding="UTF-8"
        doctype-public="-//W3C//DTD HTML 4.01//EN"
        doctype-system="http://www.w3.org/TR/html4/strict.dtd"
        indent="yes" 
    />
    <xsl:template match="/">
        
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                    <title>les religions des pays</title>
                    <meta charset="utf-8" />
                        <meta name="viewport" content="width=device-width, initial-scale=1" />
                            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
                            <style>
                             body {
                                background-color:white;
                                
                                }
                                
                            </style>
            </head>
            <body>
                <table class="table">
                
                        <tr>
                            <th scope="col">Europe</th>
                            <th scope="col">Muslim</th>
                            <th scope="col">Roman catholic</th>
                            <th scope="col">christian Orthodox</th>
                            <th scope="col">Protestant</th>
                            <th scope="col">Jwish</th>
                        </tr>
               
              
                      
                           
               
                           
                       
                           <xsl:for-each select="mondial/country[encompassed[@continent='europe']]">
                               <tr>
                                   
                                
                                  
                               <th scope="col">
                                  <xsl:value-of select="name"/>
                               </th>
                               <td>
                                  
                                   <xsl:variable name="pourcentage" select="./religion[text()='Muslim']/@percentage"></xsl:variable>
                                   <xsl:variable name="Sm" select="format-number(((population[last()])* $pourcentage) div 100, '#')"></xsl:variable>
                                   <xsl:if test="not($Sm='NaN')">
                                       <xsl:value-of select="$Sm"/>
                                   </xsl:if>
                                   <xsl:if test="$Sm='NaN'">
                                       <xsl:variable name="Smm" select="0"></xsl:variable> 
                                       <xsl:value-of select="$Smm"/>
                                   </xsl:if>
                                     
                               </td>
                                   <td>
                                       
                                       <xsl:variable name="pourcentage" select="./religion[text()='Roman Catholic']/@percentage"></xsl:variable>
                                       <xsl:variable name="Sm" select="format-number(((population[last()])* $pourcentage) div 100, '#')"></xsl:variable>
                                       <xsl:if test="not($Sm='NaN')">
                                           <xsl:value-of select="$Sm"/>
                                       </xsl:if>
                                       <xsl:if test="$Sm='NaN'">
                                           <xsl:variable name="Smm" select="0"></xsl:variable> 
                                           <xsl:value-of select="$Smm"/>
                                       </xsl:if>
                                       
                                   </td>
                                   <td>
                                       
                                       <xsl:variable name="pourcentage" select="./religion[text()='Christian Orthodox']/@percentage"></xsl:variable>
                                       <xsl:variable name="Sm" select="format-number(((population[last()])* $pourcentage) div 100, '#')"></xsl:variable>
                                       <xsl:if test="not($Sm='NaN')">
                                           <xsl:value-of select="$Sm"/>
                                       </xsl:if>
                                       <xsl:if test="$Sm='NaN'">
                                           <xsl:variable name="Smm" select="0"></xsl:variable> 
                                           <xsl:value-of select="$Smm"/>
                                       </xsl:if>
                                       
                                   </td>
                                   <td>
                                       
                                       <xsl:variable name="pourcentage" select="./religion[text()='Protestant']/@percentage"></xsl:variable>
                                       <xsl:variable name="Sm" select="format-number(((population[last()])* $pourcentage) div 100, '#')"></xsl:variable>
                                       <xsl:if test="not($Sm='NaN')">
                                           <xsl:value-of select="$Sm"/>
                                       </xsl:if>
                                       <xsl:if test="$Sm='NaN'">
                                           <xsl:variable name="Smm" select="0"></xsl:variable> 
                                           <xsl:value-of select="$Smm"/>
                                       </xsl:if>
                                       
                                   </td>
                                   <td>
                                       
                                       <xsl:variable name="pourcentage" select="./religion[text()='Jwish']/@percentage"></xsl:variable>
                                       <xsl:variable name="Sm" select="format-number(((population[last()])* $pourcentage) div 100, '#')"></xsl:variable>
                                       <xsl:if test="not($Sm='NaN')">
                                           <xsl:value-of select="$Sm"/>
                                       </xsl:if>
                                       <xsl:if test="$Sm='NaN'">
                                           <xsl:variable name="Smm" select="0"></xsl:variable> 
                                           <xsl:value-of select="$Smm"/>
                                       </xsl:if>
                                       
                                   </td>
                               </tr>
                               
                           </xsl:for-each> 
                         
                   
                        
                       
                </table>
            </body>
        </html>
        
        
        
        
        
        
        
    </xsl:template>
    
    
    
    
    
    
    
</xsl:stylesheet>