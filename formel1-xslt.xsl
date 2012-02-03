<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html lang="sv">
  <head>
    <title>Formel 1 - 2011</title>
    <style>
      body {
        background-color: white;
        color: black;
      }
      h2 {
        color: darkgreen;
      }
      table {
        display: inline-block;
        text-align: left;
        margin-bottom: 20px;
        margin-right: -5px;
        border-bottom: 1px solid black;
      }
      th {
        font-size: 16px;
        font-weight: bold;
      }
      td {
        width: 150px;
      }
    </style>
  </head>
  <body>
    <h1>Formel 1 - 2011</h1>
    <xsl:apply-templates />
  </body>
  </html>
</xsl:template>
<xsl:template match="//stall">
  <h2><xsl:value-of select="./namn" /></h2>
  <xsl:for-each select="./forare">
    <table>
      <tr>
        <th id="forare">Förare</th>
      </tr>
      <tr>
        <th scope="row">Namn:</th>
        <td><xsl:value-of select="./namn" /></td>
      </tr>
      <tr>
        <th scope="row">Nationalitet:</th>
        <td><xsl:value-of select="./nationalitet" /></td>  
      </tr>
    </table>
  </xsl:for-each>
  <table>  
    <tr>  
      <th id="titlar">Stalltitlar</th>
    </tr>
    <xsl:for-each select="./titlar/titel">
      <tr>
        <th scope="row"><xsl:value-of select="./@typ" />-titlar:</th>
        <td><xsl:value-of select="." /> st</td>
      </tr>
    </xsl:for-each>     
  </table> 
  <table>
    <tr>
      <th id="stallfarger" scope="row">Stallfärger:</th>
      <td><xsl:value-of select="./stallfarger" /></td>
    </tr>
  </table>    
</xsl:template>
</xsl:stylesheet>
