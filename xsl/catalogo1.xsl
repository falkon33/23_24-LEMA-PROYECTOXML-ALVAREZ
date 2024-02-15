<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<!-- Se define una variable "almacenXml" para obtener los datos almacenados en el archivo dnd.xml -->
	<xsl:variable name="dnd" select="document('../xml/dnd.xml')"/>
	
	<xsl:template match="/">
		
		<html lang="es">
			<head>
				<title>Premade characters</title>
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
				<link rel="stylesheet" href="../css/main.css" />
			</head>
			<body>
				
				<!-- Header -->
				<header id="header">
					<div class="inner">
						<a class="logo">Characters</a>
						<nav id="nav">
							<a href="../index.html">Home</a>
							<a href="catalogo1.xml">Characters</a>
							<a href="catalogo2.xml">Spels</a>
							<a href="catalogo3.xml">Prices</a>
							<a href="contacto.html">Contact</a>
						</nav>
					</div>
				</header>
				<a href="#menu" class="navPanelToggle"><span class="fa fa-bars"></span></a>
				
				<!-- Main -->
				<section id="main" >
					<div class="inner">
						<header>
							<h1>Premade characters</h1>
						</header>
						<!-- Poner codigo aqui -->
					</div>
				</section>
				<section>
					<xsl:for-each select="$dnd/dnd/characters/character">
						<div class="inner">
							<table>
								<tr>
									<th colspan="6">
										<h3 class="align-center">Character level: <xsl:value-of select="@level"/></h3>
									</th>
								</tr>
								<tr>
									<th colspan="6">
										<h3 class="align-center">Principal class:</h3>
										<p class="align-center"><a href="https://www.dndbeyond.com/classes/{img}"><img class="sqr" src="../images/{img}.jpeg"/></a></p>
									</th>
								</tr>
								<tr>
									<th colspan="6">
										<h3 class="align-center">Classes:</h3>
									</th>
								</tr>
								<tr>
									<td colspan="6">
										<xsl:for-each select="class">
											<xsl:value-of select="levels"/> levels of <xsl:value-of select="name"/>&#160;
										</xsl:for-each>
									</td>
								</tr>
								<tr>
									<th colspan="6"><h3 class="align-center">Race:</h3></th>
								</tr>
								<tr>
									<td colspan="6"><xsl:value-of select="race"/></td>
								</tr>
								<tr>
									<th colspan="6"><h3 class="align-center">Armor class: </h3></th>
								</tr>
								<tr>
									<td colspan="6"><xsl:value-of select="ac"/></td>
								</tr>
								<tr>
									<th colspan="6"><h3 class="align-center">Hitpoints: </h3></th>
								</tr>
								<tr>
									<td colspan="6"><xsl:value-of select="hitpoints"/></td>
								</tr>
								<tr>
									<th colspan="6"> <h3 class="align-center">Proficiencies:</h3></th>
									<xsl:for-each select="proficiencies/*">
										<xsl:if test=". != 'no'">
											<tr>
												<td colspan="6"><b><xsl:value-of select="name()"/>: </b><xsl:value-of select="."/></td>
											</tr>
										</xsl:if>
									</xsl:for-each>
								</tr>
								<xsl:for-each select="spell_slot/*">
									<tr>
										<td colspan="6"><b>Spell slot level <xsl:value-of select="position()"/>: </b><xsl:value-of select="."/></td>
									</tr>								
								</xsl:for-each>
								<tr>
									<th colspan="6"> <h3 class="align-center">Stats:</h3></th>
								</tr>
								<tr>
									<xsl:for-each select="stats/*">
										<td><b><xsl:value-of select="name()"/>:</b> <xsl:value-of select="."/></td>
									</xsl:for-each>
								</tr>
								<tr>
									<th colspan="6"> <h3 class="align-center">Features:</h3></th>
								</tr>
								<xsl:for-each select="features/*">
									<tr>
										<td colspan="6"><b>Feature<xsl:value-of select="position()"/>: </b><xsl:value-of select="."/></td>
									</tr>
								</xsl:for-each>
								<tr>
									<th colspan="6"> <h3 class="align-center">Inventory:</h3></th>
								</tr>
								<xsl:for-each select="inventory/*">
									<tr>
										<td colspan="6"><b>Item<xsl:value-of select="position()"/>: </b><xsl:value-of select="."/></td>
									</tr>
								</xsl:for-each>
							</table>
						</div>
					</xsl:for-each>
				</section>
				
				<!-- Footer -->
				<footer id="footer">
					<div class="inner">
						<div class="copyright">
							2024 DyD Sami , Aketza , Dani
							<ul class="icons">
								<li><a href="#"><img src="../images/twiter.png" alt="twiter" width="30" height="30"/></a></li>
								<li><a href="#"><img src="../images/facebook.png" alt="twiter" width="30" height="30"/></a></li>
								<li><a href="#"><img src="../images/instagram.png" alt="twiter" width="30" height="30"/></a></li>
								<li><a href="#"><img src="../images/github.png" alt="twiter" width="30" height="30"/></a></li>
							</ul>
							Unleash your imagination and create your own D&amp;D legacy!
						</div>
					</div>
				</footer>
				
				<!-- Scripts -->
				<script src="../assets/js/jquery.min.js"></script>
				<script src="../assets/js/skel.min.js"></script>
				<script src="../assets/js/util.js"></script>
				<script src="../assets/js/main.js"></script>
				
			</body>
		</html>
		
	</xsl:template>
	
</xsl:stylesheet>
