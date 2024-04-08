<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY nbsp   "&#160;">
<!ENTITY copy   "&#169;">
<!ENTITY reg    "&#174;">
<!ENTITY trade  "&#8482;">
<!ENTITY mdash  "&#8212;">
<!ENTITY ldquo  "&#8220;">
<!ENTITY rdquo  "&#8221;"> 
<!ENTITY pound  "&#163;">
<!ENTITY yen    "&#165;">
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">
		
		<html lang="en">
			
			<head>
				<title>Title</title>
				<!-- Required meta tags -->
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
				
				<!-- Bootstrap CSS v5.2.1 -->
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
					integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
				<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
			</head>
			
			<body>
				<header>
					<a name="top"></a>
					<!-- place navbar here -->
					<nav class="navbar navbar-expand-sm navbar-light bg-light p-4 fw-semibold">
						
						<div class="container">
							<a class="navbar-brand" href="#"><img src="img/images.png" alt="" width="100"/></a>
							<button class="navbar-toggler d-lg-none" type="button" data-bs-toggle="collapse"
								data-bs-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							<div class="collapse navbar-collapse" id="collapsibleNavId">
								<ul class="navbar-nav m-auto mt-2 mt-lg-0">
									<xsl:for-each select="kiabi/categoria">
										<li class="nav-item">
											<a class="nav-link" href="#{@nombre}"><xsl:value-of select="@nombre"/></a>
										</li>
									</xsl:for-each>
								</ul>
							</div>
								<ul class="navbar-nav ms-auto mt-2 mt-lg-0">
									
									<li class="nav-item position-relative">
										<a class="nav-link" href="#"><i
												class="fa fa-map-marker position-absolute start-50 top-0 translate-middle"
												aria-hidden="true"></i>Tienda</a>
									</li>
									<li class="nav-item position-relative">
										<a class="nav-link" href="#"><i
												class="fa fa-user position-absolute start-50 top-0 translate-middle"
												aria-hidden="true"></i>Cuenta</a>
									</li>
									<li class="nav-item position-relative">
										<a class="nav-link" href="#"><i
												class="fa fa-shopping-cart position-absolute start-50 top-0 translate-middle"
												aria-hidden="true"></i>Cesta</a>
									</li>
									
								</ul>
						</div>
					</nav>
					
					
				</header>
				<main>
					<section>
						<div class="container">
							<div class="row mt-2 justify-content-center">
								<xsl:for-each select="kiabi/categoria">
									<div class="col-6 col-md-4 col-xl-2 m-2">
									<a class="nav-link" href="#{@nombre}">
										<div class="card  border-0">
											<img class="card-img-top rounded-circle w-75 align-self-center"
												src="{foto}" alt="Title" />
											<div class="card-body">
												<p class="card-text text-center"><xsl:value-of select="@nombre"/></p>
											</div>
										</div>
									</a>	
									</div>
								</xsl:for-each>
							</div>
						</div>
					</section>
					
					<section>
						<div class="container">
							<xsl:for-each select="kiabi/categoria">
								<h3 class="my-3 fw-semibold"><xsl:value-of select="@nombre"/> <a name="{@nombre}"/></h3>
								<div class="row justify-content-between">
									<xsl:for-each select="prenda">
									<xsl:sort select="precio" data-type="number" order="ascending" />
										<div class="col-4 d-flex">
											<div class="card my-2">
													<img class="card-img-top" src="{foto}" alt="Title" />
												<div class="card-body">
													<p class="card-text fw-semibold"><xsl:value-of select="producto"/></p>
													<h4 class="card-title"><xsl:value-of select="precio"/> €</h4>
												</div>
												
											</div>
											
										</div>
									
										
									</xsl:for-each>	
								</div>
							</xsl:for-each>
							
						</div>
					</section>
					<section>
						<div class="container">
							<div class="container">
								<a href="#top" class="btn btn-danger position-fixed bottom-0 end-0 m-4">
									<i class="fa fa-arrow-up" aria-hidden="true"></i>
								</a>
							</div>
						</div>
					</section>
				</main>
				<footer>
					<!-- place footer here -->
				</footer>
				<!-- Bootstrap JavaScript Libraries -->
				<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
					integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
					crossorigin="anonymous"></script>
				
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
					integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
					crossorigin="anonymous"></script>
			</body>
			
		</html>
		
	</xsl:template>
</xsl:stylesheet>