

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
					<a ef="index.jsp" id="branding">
						<img src="dummy/logo.png" alt="" class="logo">
						<div class="logo-copy">
							<h1 class="site-title">ThumbsUp</h1>
							<small class="site-description">Taste the Thunder!!</small>
						</div>
					</a> <!-- #branding -->

					<div class="main-navigation">
						<button type="button" class="menu-toggle"><i class="fa fa-bars"></i></button>
						<ul class="menu">
							<li class="menu-item current-menu-item"><a href="index.jsp">Home</a></li>
							<li class="menu-item"><a href="about.jsp">About</a></li>
							<li class="menu-item"><a href="review.jsp">Movie reviews</a></li>
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
                    <div class="main-content">
                        <br><br>
                        <div class="container">
                        <div class="page">
                        <form align="center">
                            <h3 align  = "center">Add a movie</h3>
                            Name : <input type="text" class="" name="name" placeholder="Name of movie" style="width:40%;"><br><br>
                            Release Date : <input type="text" class="" name="premiere" placeholder="" style="width:40%;"><br><br>
                            Category : <input type="text" class="" name="category" placeholder="" style="width:40%;"><br><br>
                            Directors : <input type="text" class="" name="directors" placeholder="" style="width:40%;"><br><br>
                            Starcast : <input type="text" class="" name="starcast" placeholder="" style="width:40%;"><br><br>
                            Description : <input type="text" class="" name="description" placeholder="" style="width:40%;"><br><br>
                            Wikipedia-Url : <input type="text" class="" name="wikipedia_url" placeholder="" style="width:40%;"><br><br>
                            Image-url : <input type="text" class="" name="image_url" placeholder="" style="width:40%;"><br><br>
                            Initial Rating : <input type="text" class="" name="rating" placeholder="" style="width:40%;"><br><br>
                            <input type="submit" class="btn btn-primary btn-lg" value="ADD" onclick="form.action='addmovie.jsp';">
                        </form>
                        </div>
                        </div>
                        <br><br>
                        <div class="container">
                            <div class="page">
                            <form align="center">
                                
                            <h3 align  = "center">Delete a movie</h3> 
                            Name : <input type="text" class="" name="name2" placeholder="Name of movie" style="width:40%;"><br><br>
                            <input type="submit" class="btn btn-primary btn-lg" value="DELETE" onclick="form.action='deletemovie.jsp';">
                            </form>
                        </div>
                    </div>
                        <br><br>
                    <div class="container">
                        <div class="page">
                            <form align="center">
                            <h3 align  = "center">Edit a movie</h3>    
                            Name : <input type="text" class="" name="name3" placeholder="Name of movie" style="width:40%;"><br><br>
                            Column : <input type="text" class="" name="column_name" placeholder="Column to edit" style="width:40%;"><br><br>
                            Value : <input type="text" class="" name="column_val" placeholder="Value" style="width:40%;"><br><br>
                            <input type="submit" class="btn btn-primary btn-lg" value="EDIT" onclick="form.action='editmovie.jsp';">
                            
                        </form>
                        </div>
                        </div>
                    </div>

                </div>
        </body>
</html>