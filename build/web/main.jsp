<%-- 
    Document   : main
    Created on : 10 Apr, 2017, 12:02:11 PM
    Author     : pragya
--%>
<%@ page import="java.sql.*" %>
<%
    Connection con = null;
    String query;
    ResultSet rs = null, cara = null , stat = null;
    Statement st = null;
    try {
    Class.forName("com.mysql.jdbc.Driver");
    } catch (ClassNotFoundException e) {
    e.printStackTrace();
    }
    
    String action = request.getParameter("action");
    
    if(action == null){
        if(session == null)
            response.sendRedirect("main.jsp");
        else if(request.getSession(false) == null)
            response.sendRedirect("main.jsp");
        else
            ;
    }
    else if(action.equals("detail")){
        String movie_name = request.getParameter("movie_name");
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ThumbsUp", "root", "thumbsup");
            query = "select * from movies where name="+movie_name;
            st = con.createStatement();
            rs = st.executeQuery(query);
            if(rs.next()){
                  response.sendRedirect("single.jsp?movie_name="+movie_name);
            }
        }catch(Exception e){
            out.println(e);
        }
    }
%>

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
					<a href="index.html" id="branding">
						<img src="dummy/logo.png" alt="" class="logo">
						<div class="logo-copy">
							<h1 class="site-title">ThumbsUp</h1>
							<small class="site-description">Taste the Thunder!!</small>
						</div>
					</a> <!-- #branding -->

					<div class="main-navigation">
						<button type="button" class="menu-toggle"><i class="fa fa-bars"></i></button>
						<ul class="menu">
							<li class="menu-item current-menu-item"><a href="main.jsp">Home</a></li>
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



<%
    try{        
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ThumbsUp", "root", "thumbsup");
        query = "SELECT name FROM movies WHERE (sum/total IN (SELECT TOP (1) sum/total FROM movies as movies1 GROUP BY sum/total ORDER BY sum/total DESC))";
        st = con.createStatement();
        cara = st.executeQuery(query);
    }catch(Exception e){
            out.println(e);
        }
    while(cara.next()){
%>

		<div class="main-content">
				<div class="container">
					<div class="page">
						<div class="row">
							<div class="col-md-9">
								<div class="slider">
									<ul class="slides">
										<li><a href="single.jsp?movie_name=<%=cara.getString("movie_name")%>" <img src= ("/home/pragya/Desktop/Resources/<%= cara.getString("movie_name")%>_land.jpg") alt="Slide"></a></li>
									</ul>
								</div>
							</div>
	
<%
    }
    try{        
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ThumbsUp", "root", "thumbsup");
        st = con.createStatement();
        query = "select image_port from ( select rownum rn,image_port from ( select * from movies order by sum/total desc ) ) where rn between 4 and 7";
        cara = st.executeQuery(query);
    }catch(Exception e){
            out.println(e);
        }
%>    

<div class="col-md-3">
								<div class="row">
									<div class="col-sm-6 col-md-12">
										<div class="latest-movie">
											<a href="#"><img src="dummy/m1.png" alt="Movie 1"></a>
										</div>
									</div>
									<!-- <div class="col-sm-6 col-md-12">
										<div class="latest-movie">
											<a href="#"><img src="dummy/m2.jpg" alt="Movie 2"></a>
										</div>
									</div> -->
								</div>
							</div>
						</div> <!-- .row -->
						<div class="row">
							<div class="col-sm-6 col-md-3">
								<div class="latest-movie">
									<a href="#"><img src="dummy/m3.jpg" alt="Movie 3"></a>
								</div>
							</div>
							<div class="col-sm-6 col-md-3">
								<div class="latest-movie">
									<a href="#"><img src="dummy/m2.jpg" alt="Movie 4"></a>
								</div>
							</div>
							<div class="col-sm-6 col-md-3">
								<div class="latest-movie">
									<a href="#"><img src="dummy/m5.jpg" alt="Movie 5"></a>
								</div>
							</div>
							<div class="col-sm-6 col-md-3">
								<div class="latest-movie">
									<a href="#"><img src="dummy/m6.jpg" alt="Movie 6"></a>
								</div>
							</div>
						</div> <!-- .row -->
						
						
							
							
						</div>
					</div>
				</div> <!-- .container -->
			</div>


            

							
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