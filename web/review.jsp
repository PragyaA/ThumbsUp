<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		
		<title>Movie Review | Review</title>

		<!-- Loading third party fonts -->
		<link href="http://fonts.googleapis.com/css?family=Roboto:300,400,700|" rel="stylesheet" type="text/css">
		<link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">

		<!-- Loading main css file -->
		<link rel="stylesheet" href="style.css">
		
		<!--[if lt IE 9]>
		<script src="js/ie-support/html5.js"></script>
		<script src="js/ie-support/respond.js"></script>
		<![endif]-->

	</head>


	<body>
		

		<div id="site-content">
			<header class="site-header">
				<div class="container">
					<a href="index.jsp" id="branding">
						<img src="dummy/logo.png" alt="" class="logo">
						<div class="logo-copy">
							<h1 class="site-title">ThumbsUp</h1>
							<small class="site-description">Taste the Thunder!!</small>
						</div>
					</a> <!-- #branding -->

					<div class="main-navigation">
						<button type="button" class="menu-toggle"><i class="fa fa-bars"></i></button>
						<ul class="menu">
							<li class="menu-item"><a href="index.jsp">Home</a></li>
							<li class="menu-item"><a href="about.jsp">About</a></li>
							<li class="menu-item current-menu-item"><a href="review.jsp">Movie reviews</a></li>
							<li class="menu-item"><a href="contact.jsp">Contact</a></li>
						</ul> <!-- .menu -->

						<form action="#" class="search-form">
							<input type="text" placeholder="Search...">
							<button><i class="fa fa-search"></i></button>
						</form>
					</div> <!-- .main-navigation -->

					<div class="mobile-navigation"></div>
				</div>
			</header>
			<main class="main-content">
				<div class="container">
					<div class="page">
						<div class="breadcrumbs">
							<a href="index.html">Home</a>
							<span>Movie Review</span>
						</div>

						<!-- <div class="filters">
							<select name="#" id="#" placeholder="Choose Category">
								<option value="#">Action</option>
								<option value="#">Drama</option>
								<option value="#">Fantasy</option>
								<option value="#">Horror</option>
								<option value="#">Adventure</option>
							</select>
							<select name="#" id="#">
								<option value="#">2012</option>
								<option value="#">2013</option>
								<option value="#">2014</option>
							</select>
						</div> -->
						<div class="movie-list">
							<div class="movie">
								<figure class="movie-poster"><img src="dummy/ml.jpg" alt="#"></figure>
								<div class="movie-title"><a href="single.html">Maleficient</a></div>
								<p>Maleficent is a kind-hearted fairy, who is deceived by the love of her life, Stefan.</p>
							</div>
							<div class="movie">
								<figure class="movie-poster"><img src="dummy/tin.jpg" alt="#"></figure>
								<div class="movie-title"><a href="single.html">The adventure of Tintin</a></div>
								<p>Tintin and his dog Snowy unwittingly embark on an adventure with Captain Haddock to find an ancient treasure.</p>
							</div>
							<div class="movie">
								<figure class="movie-poster"><img src="dummy/hob.jpg" alt="#"></figure>
								<div class="movie-title"><a href="single.html">Hobbit</a></div>
								<p>Bilbo Baggins, a hobbit, is persuaded into accompanying a wizard and a group of dwarves on a journey to reclaim the city of Erebor and all its riches from the dragon Smaug.</p>
							</div>
							<div class="movie">
								<figure class="movie-poster"><img src="dummy/ex.jpg" alt="#"></figure>
								<div class="movie-title"><a href="single.html">Exists</a></div>
								<p>Five friends go to a forest in Texas for a camping trip but they do not know that something big is following them.</p>
							</div>
							<div class="movie">
								<figure class="movie-poster"><img src="dummy/dh.jpg" alt="#"></figure>
								<div class="movie-title"><a href="single.html">Drive hard</a></div>
								<p>Peter Roberts, a former race car driver, takes up the job of a beginner's training instructor due to personal reasons.</p>
							</div>
							<div class="movie">
								<figure class="movie-poster"><img src="dummy/rc.jpg" alt="#"></figure>
								<div class="movie-title"><a href="single.html">Robocop</a></div>
								<p>In a dystopic and crime-infested Detroit, a terminally injured policeman returns to the force as a potent cyborg haunted by submerged memories.</p>
							</div>
							<div class="movie">
								<figure class="movie-poster"><img src="dummy/lp.jpg" alt="#"></figure>
								<div class="movie-title"><a href="single.html">Life of Pi</a></div>
								<p>Pi Patel finds a way to survive in a lifeboat that is adrift in the middle of nowhere. His fight against the odds is heightened by the company of a hyena and a male Bengal tiger.</p>
							</div>
							<div class="movie">
								<figure class="movie-poster"><img src="dummy/tc.jpg" alt="#"></figure>
								<div class="movie-title"><a href="single.html">The Colony</a></div>
								<p>Due to machine failure, the climate becomes extremely cold and people take shelter in bunkers. Meanwhile they have a close encounter with cannibals.</p>
							</div>
						</div> <!-- .movie-list -->

						<!-- <div class="pagination">
							<a href="#" class="page-number prev"><i class="fa fa-angle-left"></i></a>
							<span class="page-number current">1</span>
							<a href="#" class="page-number">2</a>
							<a href="#" class="page-number">3</a>
							<a href="#" class="page-number">4</a>
							<a href="#" class="page-number">5</a>
							<a href="#" class="page-number next"><i class="fa fa-angle-right"></i></a>
						</div> -->
					</div>
				</div> <!-- .container -->
			</main>
			<footer class="site-footer">
				<div class="container">
					<div class="row">
						<div class="col-md-3">
							<div class="widget">
								<h3 class="widget-title">About Us</h3>
								<p>Total maniacs trying to do this lab project. We hope to get well soon.</p>
							</div>
						</div>
						<!-- <div class="col-md-2">
							<div class="widget">
								<h3 class="widget-title">Recent Review</h3>
								<ul class="no-bullet">
									<li><a href="#">Lorem ipsum dolor</a></li>
									<li><a href="#">Sit amet consecture</a></li>
									<li><a href="#">Dolorem respequem</a></li>
									<li><a href="#">Invenore veritae</a></li>
								</ul>
							</div>
						</div> -->
						<!-- <div class="col-md-2">
							<div class="widget">
								<h3 class="widget-title">Help Center</h3>
								<ul class="no-bullet">
									<li><a href="#"></a></li>
									<li><a href="#">Sit amet consecture</a></li>
									<li><a href="#">Dolorem respequem</a></li>
									<li><a href="#">Invenore veritae</a></li>
								</ul>
							</div>
						</div> -->
						<div class="col-md-3">
							<div class="widget">
								<h3 class="widget-title">Join Us</h3>
								<ul class="no-bullet">
									<li><a href="#">We are hiring</a></li>
									<li><a href="#">Frontend</a></li>
									<li><a href="#">Backend</a></li>
									<li><a href="#">Fund us please</a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-3">
							<div class="widget">
								<h3 class="widget-title">Social Media</h3>
								<ul class="no-bullet">
									<li><a href="#">Facebook</a></li>
									<li><a href="#">Twitter</a></li>
									<li><a href="#">Google+</a></li>
									<li><a href="#">Pinterest</a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-3">
							<div class="widget">
								<h3 class="widget-title">Newsletter</h3>
								Be updated movie freaks!!
								<form action="#" class="subscribe-form">
									<input type="text" placeholder="Email Address">
								</form>
							</div>
						</div>
					</div> <!-- .row -->

					<div class="colophon">Copyright ThumbsUpTeam, Designed by PASSTA. All rights reserved</div>
				</div> <!-- .container -->

			</footer>
		</div>
		<!-- Default snippet for navigation -->
		


		<script src="js/jquery-1.11.1.min.js"></script>
		<script src="js/plugins.js"></script>
		<script src="js/app.js"></script>
		
	</body>

</html>