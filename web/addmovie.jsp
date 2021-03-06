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
                                                        <li class="menu-item current-menu-item"><a href="index.jsp">Admin</a></li>
						</ul> <!-- .menu -->

<!--						<form action="#" class="search-form">
							<input type="text" placeholder="Search...">
							<button><i class="fa fa-search"></i></button>
						</form>-->
					</div> <!-- .main-navigation -->

					<div class="mobile-navigation"></div>
				</div>
			</header>
                    

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
    
    String movie_name = request.getParameter("name");
    String premiere = request.getParameter("premiere");
    String category = request.getParameter("category");
    String director = request.getParameter("directors");
    String starcast = request.getParameter("starcast");
    String description = request.getParameter("description");
    String wikipedia_url = request.getParameter("wikipedia_url");
    String image_url = request.getParameter("image_url");
    int initial_rating = Integer.parseInt(request.getParameter("rating"));
    
    
    try{        
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ThumbsUp", "root", "thumbsup");
        st = con.createStatement();
    }catch(Exception e){
            out.println(e);
        }
    
    int error=0;
    //Exception ex=null;
    try{
   
    query = "INSERT INTO movies (name, rates, total, starcast, detail, url, premiere, category, directors, image) VALUES ('"+
            movie_name
            +"',"+initial_rating
            +",'"+1
            +"','"+starcast
            +"','"+description
            +"','"+wikipedia_url
            +"','"+premiere
            +"','"+category
            +"','"+director
            +"','"+image_url+"')";
     
    int res = st.executeUpdate(query);
    
    
%>
                    <div class="main-content">
                        <div>
                            <h1 align  = "center">Congratulations! <%=movie_name%> has been added successfully into our database. Thank you!</h1>
                        </div>

                    </div>
 
<%
}
    catch(Exception e){
            out.println(e);
            //ex=e;
            error=1;
    
%>

<div class="main-content">
    <div class="container">
    <div class="page">
                       
                        
                        <div>
                            <h1 align  = "center">Sorry! <%=movie_name%> has not been added. Please resolve the error!</h1>
                            
                        </div>
    </div>
    </div>
</div>

<%
}
%>
<br><br>
                        <form align="center">
                            <input type="submit" class="btn btn-primary btn-lg" value="BACK" onclick="form.action='options.jsp';">
                        </form>
               </div>
        </body>
</html>
