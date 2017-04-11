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
                <style>
                    @import url(http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100);

                    body {
                      background-color: #3e94ec;
                      font-family: "Roboto", helvetica, arial, sans-serif;
                      font-size: 15px;
                      font-weight: 200;
                      text-rendering: optimizeLegibility;
                    }
                    table {
                        table-layout: auto;
                        border-collapse: collapse;
                        width: 100%;
                    }
                    table td {
                        border: 1px solid #ccc;
                    }
                    table .absorbing-column {
                        width: 100%;
                    }

                    div.table-title {
                       display: block;
                      margin: auto;
                      max-width: 600px;
                      padding:5px;
                      width: 100%;
                    }

                    .table-title h3 {
                       color: #fafafa;
                       font-size: 30px;
                       font-weight: 200;
                       font-style: normal;
                       font-family: "Roboto", helvetica, arial, sans-serif;
                       text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
                       text-transform:uppercase;
                    }


                    
                </style>

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
                    <div class="main-content">
                    <div class="table-title">
                    <h3 align="center">ThumbsUp Database</h3>
                    </div>                   
                    
                    <table >
                    <thead>
                    <tr>
                            <th>name</th>
                            <th>starcast</th>
                            <th>detail</th>
                            <th>url</th>
                            <th>premiere</th>
                            <th>category</th>
<!--                            <th>image</th>-->
                            <th>directors</th>
                    </tr>
                    </thead>

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
    
    try{        
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ThumbsUp", "root", "thumbsup");
        st = con.createStatement();
    }catch(Exception e){
            out.println(e);
        }
    int error=0;
    //Exception ex=null;
    try{
    query = "SELECT * from movies";
    rs = st.executeQuery(query);
    while(rs.next()){
    %>
    <tbody class="">
    <tr>

<td><%=rs.getString("name") %></td>
<td><%=rs.getString("starcast") %></td>
<td><%=rs.getString("detail") %></td>
<td><%=rs.getString("url") %></td>
<td><%=rs.getString("premiere") %></td>
<td><%=rs.getString("category") %></td>
<!--<td><//%=rs.getString("image") %></td>-->
<td><%=rs.getString("directors") %></td>

</tr>
      
    
    <%
        }
    }
    catch(Exception e){
            out.println(e);
            error=1;
    } 
    %>
                   
                    </tbody></table></div>
    <br><br>
                            <form align="center">
                                
                            
                            <input type="submit" class="btn btn-primary btn-lg" value="BACK" onclick="form.action='options.jsp';">
                            </form>

               </div>
        </body>
</html>
