<%-- 
    Document   : login
    Created on : 18 Mar, 2017, 1:01:46 AM
    Author     : niral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"><head>
<title>admin</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <link rel="stylesheet" type="text/css" href="style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="demo.css" media="all" />

    
    
   
    
    
    
  </head>


<body>
<%@ page import ="java.sql.*" %>
<%
    String aid = request.getParameter("adid");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/patient",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from patient.admin where adid='" + aid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("aid", aid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("welcome.jsp");
    } else {
        out.println("Invalid password <a href='admin.jsp'>try again</a>");
    }
%>

</body></html>