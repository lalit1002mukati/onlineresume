<%-- 
    Document   : submit
    Created on : 6 Mar, 2017, 9:33:47 PM
    Author     : niral
--%>
<%@ page import ="java.sql.*" %>
<%
    
    
     
    
    
    String uid = request.getParameter("uid");
    
    String fname = request.getParameter("fname");    
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    String date = request.getParameter("date");
            
    String Gender=" ";
              String[] gender = request.getParameterValues("gender");
              for(int j=0; j<gender.length; j++){
              Gender+=gender[j]+" ";
              }
              String Code=" ";
              String[] code = request.getParameterValues("code");
              for(int i=0; i<code.length; i++){
              Code+=code[i]+" ";
              }
             String phone = request.getParameter("phone");
    
    
        
          String information = request.getParameter("information");
          String edu = request.getParameter("edu");
          String skl = request.getParameter("skl");
          String exp = request.getParameter("exp");
          String hob = request.getParameter("hob");
          String str = request.getParameter("str");
          String add = request.getParameter("add");
    
    
   // String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/patient",
            "root", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("INSERT patient.info " + "VALUES('"+fname+"','"+lname+"','"+email+"','"+date+"','"+Gender+"','"+Code+"','"+phone+"','"+information+"','"+uid+"','"+edu+"','"+skl+"','"+exp+"','"+hob+"','"+str+"','"+add+"')");
    if (i > 0) {
        //session.setAttribute("userid", user);
       response.sendRedirect("index.jsp");
       //out.print("Registration Successfull!"+"<a href='ind);
    } else {
        response.sendRedirect("index.jsp");
    }
%>