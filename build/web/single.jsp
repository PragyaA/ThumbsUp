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
    
    //String action = request.getParameter("action");
    String movie_name = request.getParameter("movie_name");
    
    if(movie_name == null){
        if(session == null)
            response.sendRedirect("index.jsp");
        else if(request.getSession(false) == null)
            response.sendRedirect("index.jsp");
        else
            ;
    }
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		
		<title>Movie Review | Single</title>

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
						</ul> <!-- .menu -->

						<form action="#" class="search-form">
							<input type="text" placeholder="Search...">
							<button><i class="fa fa-search"></i></button>
						</form>n><i class="fa fa-search"></i></button>
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
							<a href="review.html">Movie Review</a>
							
                                            
<%                                            
try{        
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ThumbsUp", "root", "thumbsup");
        //query = "SELECT name FROM movies WHERE (rates*1.0/total IN (SELECT TOP (3) rates*1.0/total FROM movies as movies1 GROUP BY rates*1.0/total ORDER BY rates*1.0/total DESC))";
        st = con.createStatement();
        query = "SELECT * FROM movies where name = '"+movie_name+"'";
        
        cara = st.executeQuery(query);
        //if(cara.next()) {
    
    if(cara.next()){
%>
                                                <span><%=cara.getString("name")%></span>
						</div>
						<div class="content">
							<div class="row">
								<div class="col-md-12">
									<figure class="movie-poster"><img src="Resources/<%=cara.getString("name")%>_land.jpg" alt="#"></figure>
								</div>
								<div class="col-md-12">
									<h2 class="movie-title"><%=cara.getString("name")%></h2>
                                                                        <ul class="starring">
                                                                                <li><strong>Release Date:</strong> <%=cara.getString("premiere")%></li>
                                                                                <li><strong>Category:</strong> <%=cara.getString("category")%></li>
                                                                                <li><strong>Directors:</strong> <%=cara.getString("directors")%></li>
										<li><strong>Stars:</strong> <%=cara.getString("starcast")%></li>
									</ul>
									<div class="movie-summary">
										<strong>Description:</strong><p><%=cara.getString("detail")%></p>
                                                                                
                                                                                <p>Find more information about <%=cara.getString("name")%> <a href="<%=cara.getString("url")%>">here</a>.</p> . 

									</div>
									<ul class="movie-meta">
										<li><strong>Rating:</strong> 
											<div><span style="width:80%"><strong><%=(double) Math.round(cara.getInt("rates")*1.0/cara.getInt("total")* 100) / 100%></strong> out of 5</span></div>
										</li>
                                                                                <form action="submission.jsp">
                                                                                <li><strong>Please give your Rating:</strong> 
                                                                                    <input name="movie_name" type="hidden" value="<%=cara.getString("name")%>"></input>
                                                                                    <input type="text" class="" name="user_rating" placeholder="Rate out of 5" style="width:20%;">
                                                                                    <button type="submit" value="Submit" class="btn btn-primary btn-lg">SUBMIT</button>
										</li>
                                                                                </form>
                                                                                 
				
									</ul>

									
								</div>
							</div> <!-- .row -->
							
						</div>
					</div>
				</div> <!-- .container -->
                          
			</main>
<%
    }
    }
    catch(Exception e){
            out.println(e);
        }
%>
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