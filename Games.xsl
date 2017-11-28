<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<head>
			</head>
			<body>
				<table id ="myTable">
					<tr>
						<th onclick="sortTable(0)">Title</th>
						<th onclick="sortTable(1)">Publisher</th>
						<th onclick="sortTable(2)">Rating</th>
						<th onclick="sortTable(3)">Platform</th>
						<th onclick="sortTable(4)">ERSB</th>
					</tr>
					<xsl:for-each select="games/game">
							<tr>
								<td>
									<xsl:value-of select="Title"/>
								</td>
								<td>
									<xsl:value-of select="Publisher"/>
								</td>
								<td>
									<xsl:value-of select="Rating"/>
								</td>
								<td>
									<xsl:value-of select="Platform"/>
								</td>
								<td>
									<xsl:value-of select="ERSB"/>
								</td>
							</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>