<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
	<xsl:template match="/">
		<html>
			<head>
				<title>CV</title>
				<style>
					.text{
					font-size: 24;
					font-weight: bold;
					background-color: black;
					opacity:0.8;
					width: 800px;
					}
					h1{
					background-color: black;
					opacity:0.8;
					}
					h2{
					background-color: black;
					opacity:0.8;
					}
					h3{
					background-color: black;
					opacity:0.8;
					}

					.topnav {
					background-color: black;
					opacity:0.8;
					overflow: hidden;
					}

					.topnav a {
					float: left;
					color: #eb78af;
					text-align: center;
					padding: 14px 16px;
					text-decoration: none;
					font-size: 17px;
					}


					.topnav a:hover {
					background-color: #ddd;
					color: black;
					}


					.topnav a.active {
					background-color: #ddd;
					color: black;
					}

					body { 
					background-image:url('https://media.giphy.com/media/10X5oVBTgURLtC/giphy.gif'); 
					background-repeat:repeat; 
					font-weight: bold;
					color:#eb78af;
					font-family: "arial", arial, sans-serif;}

				</style>
			</head>
			<body>
				<div class="topnav">
					<a  href="index.html">HOME</a>
					<a class="active" href="cv.xml" target="_blank">CV AND SKILLS</a>
					<a href="recipes.html" target="_blank">RECIPES</a>
					<a href="sports.html" target="_blank">SPORTS</a>
					<a href="music.html" target="_blank">MUSIC</a>
					<a href="game.html.html" target="_blank">PLAY A GAME</a>
				</div><br/>
				<hr/>
				<div style="float:right; background-color: black;
					opacity:0.8;">
					<xsl:for-each select = "cv/person">
						Name: <xsl:value-of select = "name"/><br/>
						Number: <xsl:value-of select = "number"/><br/>
						Date of Birth: <xsl:value-of select = "dob"/><br/>
						Email: <xsl:value-of select = "email"/><br/>
						Nationality: <xsl:value-of select = "nationality"/><br/>
					</xsl:for-each>
				</div>
				<div >
					<img src = "arwa.jpg"/>
				</div><br/><hr/>

				<div style="width:100%;" class="text">
					<h2>SKILLS:</h2>
					<ul>
						<xsl:for-each select = "cv/person/qualifications">
							<xsl:for-each select = "skill">
								<li><xsl:value-of select="."/><xsl:element name="br"/></li></xsl:for-each>
							</xsl:for-each>
						</ul>
					</div><br/><hr/>

					<div style="width:100%;" class="text">
						<h2>EDUCATION:</h2>
						<xsl:for-each select = "cv/education">
							<xsl:for-each select = "ed">
								<xsl:value-of select="."/><xsl:element name="br"/>
							</xsl:for-each>
						</xsl:for-each>
					</div><hr/>

					<div>
						<div class="text">
							<h2>HOBBIES:</h2>

							<xsl:for-each select = "cv/activities">
								<xsl:for-each select = "hobbie">
									<xsl:value-of select="."/><xsl:element name="br"/>
								</xsl:for-each>
							</xsl:for-each>

						</div><br/>
						<div class="text">
							<h2>MANAGING:</h2>

							<xsl:for-each select = "cv/activities">
								<xsl:for-each select = "managing">
									<xsl:value-of select="."/><xsl:element name="br"/>
								</xsl:for-each>
							</xsl:for-each>
						</div>
					</div>

				</body>
			</html>
		</xsl:template>
	</xsl:stylesheet>