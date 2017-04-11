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
    String movie_name = request.getParameter("name3");
    String column_name = request.getParameter("column_name");
    String column_val = request.getParameter("column_val");
    
    try{        
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ThumbsUp", "root", "thumbsup");
        st = con.createStatement();
    }catch(Exception e){
            out.println(e);
        }
    int error=0;
    //Exception ex=null;
    try{
    query = "UPDATE movies SET "+column_name+ "='"+ column_val+"' WHERE name='"+movie_name+"'";
    
    
    int res = st.executeUpdate(query);
    }
    catch(Exception e){
            out.println(e);
            //ex=e;
            error=1;
    } 
    if(error==0)
    {
%>
                    <div class="main-content">
                        <div>
                            <h1 align  = "center">Congratulations, <%=movie_name%> has been edited successfully in our database. Thank you!</h1>
                        </div>

                    </div>
 
<%
    }
else {
%>

<div class="main-content">                        
                        <div>
                            <h1 align  = "center">Sorry! <%=movie_name%> has not been edited. Please resolve the error!</h1>                          
                        </div>
</div>

<%
}
%>
               </div>
        </body>
</html>