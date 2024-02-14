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
							<h2>Character level: <xsl:value-of select="@level"/></h2>
							<h3>Principal class: </h3>
							<a href="https://www.dndbeyond.com/classes/{img}"><img src="../images/{img}.jpeg"/></a>
							<h3>Classes:</h3>
							<div class="inner">
								<xsl:for-each select="class">
									<h3><xsl:value-of select="levels"/> levels of <xsl:value-of select="name"/></h3>
								</xsl:for-each>
							</div>
							<h3>Race: <xsl:value-of select="race"/></h3>
							<h3>Armor class: <xsl:value-of select="ac"/></h3>
							<h3>Hitpoints: <xsl:value-of select="hitpoints"/></h3>
							<h3> Proficiencies:</h3>
							<xsl:for-each select="proficiencies/*">
								<xsl:if test=". != 'no'">
										<p><b><xsl:value-of select="name()"/>: </b><xsl:value-of select="."/></p>
								</xsl:if>
							</xsl:for-each>
							<xsl:for-each select="spell_slot/*">
								<p><b>Spell slot level <xsl:value-of select="position()"/>: </b><xsl:value-of select="."/></p>								
							</xsl:for-each>
							<h3> Stats:</h3>
							<xsl:for-each select="stats/*">
								<p><b><xsl:value-of select="name()"/>:</b> <xsl:value-of select="."/></p>
							</xsl:for-each>
							<h3> Features:</h3>
							<xsl:for-each select="features/*">
								<p><b>Feature<xsl:value-of select="position()"/>: </b><xsl:value-of select="."/></p>
							</xsl:for-each>
							<h3> Inventory:</h3>
							<xsl:for-each select="inventory/*">
								<p><b>Item<xsl:value-of select="position()"/>: </b><xsl:value-of select="."/></p>
							</xsl:for-each>
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
