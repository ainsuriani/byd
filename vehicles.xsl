<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>BYD Vehicle Table</title>
        <style>
          body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #ffe6f0;
            padding: 20px;
          }
          table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff0f5;
            box-shadow: 0 0 10px #ff99cc;
          }
          th, td {
            border: 1px solid #ffb6c1;
            padding: 12px;
            text-align: center;
          }
          th {
            background-color: #ff69b4;
            color: white;
            font-size: 16px;
          }
          tr:hover {
            background-color: #ffe0eb;
          }
          h2 {
            color: #d63384;
            text-align: center;
          }
        </style>
      </head>
      <body>
        <h2>BYD Vehicle Specifications</h2>
        <table>
          <tr>
            <th>Car Model</th>
            <th>Horsepower</th>
            <th>Battery</th>
            <th>Price</th>
            <th>Top Speed</th>
          </tr>
          <xsl:for-each select="vehicles/details">
            <tr>
              <td><xsl:value-of select="carmodel" /></td>
              <td><xsl:value-of select="horsepower" /></td>
              <td><xsl:value-of select="battery" /></td>
              <td><xsl:value-of select="price" /></td>
              <td><xsl:value-of select="topspeed" /></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
