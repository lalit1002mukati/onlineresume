<%-- 
    Document   : delete
    Created on : 18 Mar, 2017, 1:58:24 AM
    Author     : niral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>



<%
    
    
try {
    
    
    

    String del = request.getParameter("delete");
   // String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/person",
            "root", "root");
ResultSet rs = null;
Statement st = null;
st = con.createStatement();

st.executeUpdate("delete from patient.info where uid='" + del + "'");
response.sendRedirect("welcome.jsp");
} catch (SQLException e) {
System.out.println(e.getMessage());
}

%>