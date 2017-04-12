

<%@page contentType="text/html" pageEncoding="UTF-8"%>
            
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		
		<title>Movie Review</title>

		<!-- Loading third party fonts -->
		<link href="http://fonts.googleapis.com/css?family=Roboto:300,400,700|" rel="stylesheet" type="text/css">
		<link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">

		<!-- Loading main css file -->
		<link rel="stylesheet" href="style.css">

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
							<li class="menu-item"><a href="contact.jsp">Contact</a></li>
                                                        <li class="menu-item current-menu-item"><a href="admin_auth.jsp">Admin</a></li>
                                                </ul> <!-- .menu -->

<!--						<form action="#" class="search-form">
							<input type="text" placeholder="Search...">
							<button><i class="fa fa-search"></i></button>
						</form>-->
					</div> <!-- .main-navigation -->

					<div class="mobile-navigation"></div>
				</div>
			</header>
                    <div class="main-content">
                        
                        <div class="container">
                        <div class="page">
                        <form action="admin.jsp">
                            <strong>Please enter admin password:</strong>
                                <input type="password" class="" name="passcode" placeholder="" style="width:20%;">
                                <button type="submit" value="Submit" class="btn btn-primary btn-lg">SUBMIT</button>
                        </form>
                        </div>
                        </div>
                    </div>

                </div>
        </body>
</html>