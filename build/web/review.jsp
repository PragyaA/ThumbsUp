<%-- 
    Document   : main
    Created on : 10 Apr, 2017, 12:02:11 PM
    Author     : pragya
--%>
<%@ page import="java.sql.*" %>
<%
    Connection con = null;
    String query;
    ResultSet rs = null, cara = null;
    Statement st = null;
    try {
    Class.forName("com.mysql.jdbc.Driver");
    } catch (ClassNotFoundException e) {
    e.printStackTrace();
    }
    
    
%>
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
							<span>Movie Review</span>
						</div>

<%
    try{        
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ThumbsUp", "root", "thumbsup");
        //query = "SELECT name FROM movies WHERE (rates*1.0/total IN (SELECT TOP (3) rates*1.0/total FROM movies as movies1 GROUP BY rates*1.0/total ORDER BY rates*1.0/total DESC))";
        st = con.createStatement();
        query = "SELECT * FROM movies";
        cara = st.executeQuery(query);
    
    while(cara.next()){
%>
                                            <div class="row">
							<div class="col-sm-6 col-md-2">
								<div class="latest-movie">
                                                                    <% if(cara.getString("image")==null || cara.getString("image").equals("")) {
                                                                        %>
                                                                    
                                                        <a href="single.jsp?movie_name=<%=cara.getString("name")%>"> <img class="movie-poster" style="width: 75%; height: 200px;" src= "Resources/<%= cara.getString("name")%>_port.jpg" alt="Slide"></a>
                                                        <% }
else
{
%>
                                                        <a href="single.jsp?movie_name=<%=cara.getString("name")%>"> <img class="movie-poster" style="width: 75%; height: 200px;" src= "<%= cara.getString("image")%>" alt="Slide"></a>
                                                        <% }
%>
                                                        <br>
                                                        <span class=""><b><a href="single.jsp?movie_name=<%=cara.getString("name")%>"><%= cara.getString("name")%> </a></b></span>
                                                        <br>
                                                        <b>Star-cast : </b><%= cara.getString("starcast")%><p>
                                                         
                                                    </div>
							
						</div> <!-- .movie-list -->
                                            

<!--						 <div class="pagination">
							<a href="#" class="page-number prev"><i class="fa fa-angle-left"></i></a>
							<span class="page-number current">1</span>
							<a href="#" class="page-number">2</a>
							<a href="#" class="page-number">3</a>
							<a href="#" class="page-number">4</a>
							<a href="#" class="page-number">5</a>
							<a href="#" class="page-number next"><i class="fa fa-angle-right"></i></a>
						</div> -->
					
<%
    }
    }
    catch(Exception e){
            out.println(e);
        }
%> 
</div></div>
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
		<script src="js/plugins.js"></script>
		<script src="js/app.js"></script>
		
	</body>

</html>