<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<!-- Se define una variable "almacenXml" para obtener los datos almacenados en el archivo dnd.xml -->
	<xsl:variable name="dnd" select="document('../xml/dnd.xml')"/>

    <xsl:template match="/">
	
	<html lang="es">
	<head>
		<title>UD6: Proyecto dirigido a la validación, formateo y transformación de documentos XML</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../css/main.css" />
	</head>
	<body>

		<!-- Header -->
		<header id="header">
			<div class="inner">
				<a class="logo">Catalogo 1</a>
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
					<h1>Titulo 1</h1>
				</header>
				<!-- Poner codigo aqui -->
			</div>
		</section>
		<section>
			<xsl:for-each select="$dnd/dnd/characters/character">
				<div>
					
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
					Datos de la empresa o asosciación
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