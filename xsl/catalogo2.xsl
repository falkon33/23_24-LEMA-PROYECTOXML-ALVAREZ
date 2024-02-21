<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<!-- Se define una variable "dnd" para obtener los datos almacenados en el archivo dnd.xml -->
	<xsl:variable name="dnd" select="document('../xml/dnd.xml')"/>

	<xsl:template match="name">
		
	</xsl:template>

    <xsl:template match="/">
    <html lang="es">
        <head>
            <title>Spels</title>
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
            <link rel="stylesheet" href="../css/main.css" />
        </head>
        <body>

            <!-- Header -->
            <header id="header">
                <div class="inner">
                    <a class="logo">Spels</a>
                    <nav id="nav">
                        <a href="../index.html">Home</a>
                        <a href="catalogo1.xml">Characters</a>
                        <a href="catalogo2.xml">Spels</a>
                        <a href="catalogo3.xml">Prices</a>
                        <a href="catalogo4.xml">List</a>
                        <a href="contacto.html">Contact</a>
                    </nav>
                </div>
            </header>
            <a href="#menu" class="navPanelToggle"><span class="fa fa-bars"></span></a>

            <!-- Main -->
            <section id="main">
                <div class="inner">
                    <header>
                        <h1>Spells</h1>
                        <xsl:for-each select="$dnd/dnd/spels/spell">
                            <xsl:sort select="name" order="ascending"/>
                            <table>
                                <tr>
                                    <th>
                                        <a href="https://www.dndbeyond.com/spells/{translate(name, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ ', 'abcdefghijklmnopqrstuvwxyz-')}"><h2><xsl:value-of select="name"/></h2></a>
                                    </th>
                                    <!-- Add a new cell for the price element -->
                                    <td>
                                        <h4 class="right">Price: <xsl:value-of select="format-number(price * 1.21, '#.##')"/>SP</h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <h4><a href="https://www.dndbeyond.com/spells/school/{@school}"><img class="sqr" width="25" src="../images/{@school}.png"/></a><xsl:value-of select="@school"/></h4>
                                    </td>
                                    <!-- la duracion del conjuro -->
                                    <td class="right">
                                        <h4>duration: <span class="black"><xsl:value-of select="cast"/></span></h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td><p><xsl:value-of select="desc"/></p></td>
                                </tr>
                                <!-- clases que pueden lanzar el conjuro -->
                                <tr>
                                    <td class="left">
                                        <h5>Classes:
                                            <xsl:for-each select="class/name">
                                                <span class="black"><a href="https://www.dndbeyond.com/classes/{.}"><xsl:value-of select="."/></a>&#160;</span>
                                            </xsl:for-each>
                                        </h5>
                                    </td>
                                    <!-- tag -->
                                    <td class="right">
                                        <h5>
                                            <xsl:for-each select="tags/tag">
                                                <span class="black"><xsl:value-of select="."/>&#160;</span>
                                            </xsl:for-each>
                                        </h5>
                                    </td>
                                </tr>
                            </table>
                        </xsl:for-each>
                    </header>
                </div>
            </section>

            <!-- Footer -->
            <footer id="footer">
                <div class="inner">
                    <div class="copyright">
                        2024 DyD Sami , Aketza , Dani
                        <ul class="icons">
                            <li><a href="https://twitter.com/"><img src="../images/twiter.png" alt="twiter" width="30" height="30"/></a></li>
                            <li><a href="https://facebook.com"><img src="../images/facebook.png" alt="twiter" width="30" height="30"/></a></li>
                            <li><a href="https://instagram.com"><img src="../images/instagram.png" alt="twiter" width="30" height="30"/></a></li>
                            <li><a href="https://github.com/falkon33/23_24-LEMA-PROYECTOXML-ALVAREZ"><img src="../images/github.png" alt="twiter" width="30" height="30"/></a></li>
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