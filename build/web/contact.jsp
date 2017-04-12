<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		
		<title>Movie Review | Contact</title>

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
							<li class="menu-item"><a href="review.jsp">Movie reviews</a></li>
							<li class="menu-item current-menu-item"><a href="contact.jsp">Contact</a></li>
                                                        <li class="menu-item"><a href="admin_auth.jsp">Admin</a></li>
                                                </ul> <!-- .menu -->

<!--						<form action="#" class="search-form">
							<input type="text" placeholder="Search...">
							<button><i class="fa fa-search"></i></button>
						</form>-->
					</div> <!-- .main-navigation -->

					<div class="mobile-navigation"></div>
				</div>
			</header>
			<main class="main-content">
				<div class="container">
					<div class="page">
						<div class="breadcrumbs">
							<a href="index.jsp">Home</a>
							<span>Contact</span>
						</div>

                                            <div class="content">
							<div class="row">
                                                            <div class="col-md-4"></div>
								<div class="col-md-4">
									<h2>Contact</h2>
									<ul class="contact-detail">
										<li>
											<img src="images/icon-contact-map.png" alt="#">
											<address><span>Thumbs Up</span> <br>Cartoon Network, Milky Way Galaxy</address>
										</li>
										<li>
											<img src="images/icon-contact-phone.png" alt="">
											<a href="tel:08888888888">08888888888</a>
										</li>
										<li>
											<img src="images/icon-contact-message.png" alt="">
											<a href="mailto:contact@companyname.com">passta@thumbsup.com</a>
										</li>
									</ul>
									<div class="contact-form">
										<input type="text" class="name" placeholder="name..." maxwidth="30%">
										<input type="text" class="email" placeholder="email...">
										<input type="text" class="website" placeholder="website...">
										<textarea class="message" placeholder="message..."></textarea>
										<input type="submit" value="Send Message ">

									</div>                               

								</div>
<!--								<div class="col-md-7 col-md-offset-1">
									<div class="map"></div>
								</div>-->
							</div>
                                           </div>
                                                 
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
		<script src="http://maps.google.com/maps/api/js?sensor=true&amp;language=en"></script>
		<script src="js/plugins.js"></script>
		<script src="js/app.js"></script>
		
	</body>

</html>