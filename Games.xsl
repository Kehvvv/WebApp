<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<head>
				<style>
				  table {
				    border-collapse: collapse;
				  }
					th, {
						background-color:grey;
					}
				  td, th {
				    border: 1px solid #999;
				    padding: 0.5rem;
				    text-align: left;
				  }
				  th {
				    font-weight: bold;
				  }
			  </style>
			</head>
			<body>
				<table>
					<tr>
						<th>Title</th>
						<th>Publisher</th>
						<th>Rating</th>
						<th>Platform</th>
						<th>ERSB</th>
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