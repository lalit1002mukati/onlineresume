<%-- 
    Document   : list
    Created on : 7 Mar, 2017, 1:13:05 AM
    Author     : niral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
<html>
<head>

  
<title>User</title>
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="demo.css" media="all" />
   
    
    <script src="script.js"></script>
    
    
    
    
</head>
<body>
    
    
    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.."><br><br>

    <table id="myTable" border="1">
    
    
<tr>
    
    <th><b>First Name</b></th>
    <th><b>Last Name</b></th>
    <th><b>Email</b></th>
    <th><b>Dob</b></th>
    <th><b>Gender</b></th>
    <th><b>Country Code</b></th>
    <th><b>phone</b></th>
    
    <th><b>User Id</b></th>
       <th><b>Skills</b></th>
          <th><b>Address</b></th>
    
</tr>


<%
   
    
   // String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/patient",
            "root", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
    
    
    //PreparedStatement ps=(PreparedStatement)con.prepareStatement("SELECT * from patient.info");
ResultSet rs=st.executeQuery("SELECT * from patient.info");

while(rs.next()){
	/*String name=rs.getString("fname");
	String lastname=rs.getString("lname");
        String age=rs.getString("age");
        String d1=rs.getString("birthMonth");
           String d2=rs.getString("BirthDay");
        String d3=rs.getString("BithYear");
        String gender=rs.getString("Gender");
        String phone=rs.getString("phone");
        String description=rs.getString("information");*/
        
	//out.println("Username "+username+" Pass "+password+"<hr>");
    
    
    %>
    <tr>
        
        <td><b><%=rs.getString("fname") %></b></td>
    <td><b><%=rs.getString("lname") %> </b></td>
    <td><b><%=rs.getString("email") %></b></td>
    <td><b><%=rs.getString("date") %></b></td>
    <td><b><%=rs.getString("Gender") %></b></td>
    <td><b><%=rs.getString("Code") %></b></td>
    <td><b><%=rs.getString("phone") %></b></td>
    
                   <td><b><%=rs.getString("uid") %></b></td>
                   <td><b><%=rs.getString("skl") %></b></td>
                   
                   <td><b><%=rs.getString("add") %></b></td>
    </tr>

 <%

}
   
%>
</table>
<%

    
   // int i = st.executeUpdate("SELECT * FROM patient.info");
    
%>


</body>
</html>
