<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<html>
		<body style="background-color:Pink;">
			<h1>BYD</h1>
			<h2>Details of BYD's Car Models</h2>
			<table border="3">
				<tr bgcolor="Grey">
					<th>Model</th>
					<th>Battery</th>
					<th>Range</th>
					<th>Price</th>
					<th>Suitable</th>
				</tr>
					<xsl:for-each select="vehicle/details">
						<tr>
							<td><xsl:value-of select="model"/></td>
							<td><xsl:value-of select="battery"/></td>
							<td><xsl:value-of select="range"/></td>
							<td><xsl:value-of select="price"/></td>
							<td><xsl:value-of select="suitable"/></td>
						</tr>
					</xsl:for-each>
			</table>
		</body>
	</html>
</xsl:template>

</xsl:stylesheet>
