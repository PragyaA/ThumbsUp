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
    String passcode = request.getParameter("passcode");
    
    try{        
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ThumbsUp", "root", "thumbsup");
        st = con.createStatement();
        //query = "select image_port from ( select rownum rn,image_port from ( select * from movies order by sum/total desc ) ) where rn between 1 and 3";
        //cara = st.executeQuery(query);
    }catch(Exception e){
            out.println(e);
        }
    String actual_pass="admin";
    if(passcode.equals(actual_pass))
    {
        response.sendRedirect("options.jsp");
    }
    
    else
    {
        response.sendRedirect("invalid.jsp");
    }
%>
