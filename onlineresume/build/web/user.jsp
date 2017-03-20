<%-- 
    Document   : user
    Created on : 15 Mar, 2017, 8:43:49 PM
    Author     : niral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%@ page import ="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        
        <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">

	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="demo.css" media="all" />
 
       <script data-require="angular.js@1.2.0-rc3" data-semver="1.2.0-rc3" src="http://code.angularjs.org/1.2.0-rc.3/angular.min.js"></script>
    <script data-require="angular-router@1.2.0-rc1" data-semver="1.2.0-rc1" src="http://code.angularjs.org/1.2.0rc1/angular-route.js"></script>
    <link rel="stylesheet" href="style.css" />
        <title>search</title>
        
        
            
     
     <style type="text/css">
        * { margin: 0; padding: 0; }
        body { font: 16px Helvetica, Sans-Serif; line-height: 24px; background: url(images/noise.jpg); }
        .clear { clear: both; }
        #page-wrap { width: 800px; margin: 40px auto 60px; }
        #pic { float: right; margin: -30px 0 0 0; }
        h1 { margin: 0 0 16px 0; padding: 0 0 16px 0; font-size: 42px; font-weight: bold; letter-spacing: -2px; border-bottom: 1px solid #999; }
        h2 { font-size: 20px; margin: 0 0 6px 0; position: relative; }
        h2 span { position: absolute; bottom: 0; right: 0; font-style: italic; font-family: Georgia, Serif; font-size: 16px; color: #999; font-weight: normal; }
        p { margin: 0 0 16px 0; }
        a { color: #999; text-decoration: none; border-bottom: 1px dotted #999; }
        a:hover { border-bottom-style: solid; color: black; }
        ul { margin: 0 0 32px 17px; }
        #objective { width: 500px; float: left; }
        #objective p { font-family: Georgia, Serif; font-style: italic; color: #666; }
        dt { font-style: italic; font-weight: bold; font-size: 18px; text-align: right; padding: 0 26px 0 0; width: 150px; float: left; height: 100px; border-right: 1px solid #999;  }
        dd { width: 600px; float: right; }
        dd.clear { float: none; margin: 0; height: 15px; }
     </style>
        
        
        
        
        
        
        
        
        
    </head>
    <body>
   
        
        <%
   
    String uide = request.getParameter("uide");
   // String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/person",
            "root", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
    
    
    //PreparedStatement ps=(PreparedStatement)con.prepareStatement("SELECT * from patient.info");
ResultSet rs=st.executeQuery("SELECT*from patient.info where uid='" + uide + "'");

//while(rs.next()){
	//String name=rs.getString("fname");
	/*String lastname=rs.getString("lname");
        String age=rs.getString("age");
        String d1=rs.getString("birthMonth");
           String d2=rs.getString("BirthDay");
        String d3=rs.getString("BithYear");
        String gender=rs.getString("Gender");
        String phone=rs.getString("phone");
        String description=rs.getString("information");*/
    
            if(!rs.next()) {
                out.println("<b> Sorry, could not find candidate enter correct user id. </b>");
            } else {
        %>

            <div id="page-wrap">
    
        
    
        <div id="contact-info" class="vcard">
        
            <!-- Microformats! -->
        
            <h1 class="fn"> <%= rs.getString(1) %> &nbsp<%= rs.getString("lname") %></h1>
        
            <p>
                Cell: <span class="tel"><%= rs.getString("Code") %> - <%= rs.getString("phone") %></span><br />
                Email: <a class="email"><%= rs.getString("email") %></a><br>
                Address: <a class="email"><%= rs.getString("add") %></a>
            </p>
        </div>
                
        <div id="objective">
            <p>
                <%= rs.getString("information") %>
            </p>
        </div>
        
        <div class="clear"></div>
        
        <dl>
            <dd class="clear"></dd>
            
            <dt>Education:</dt>
            <dd>
                <h2><%=rs.getString("edu") %></h2>
            </dd>
            
            <dd class="clear"></dd>
            
            <dt>Skills:</dt>
            <dd>
                <h2><%=rs.getString("skl")%></h2>
            </dd>
            
            <dd class="clear"></dd>
            
            <dt>Experience:</dt>
            <dd>
                <h2><%=rs.getString("exp")%></h2>
                
            </dd>
            
            <dd class="clear"></dd>
            
            <dt>Hobbies:</dt>
            <dd><%=rs.getString("hob")%></dd>
            
            <dd class="clear"></dd>
            
            <dt>Strength:</dt>
            <dd><%=rs.getString("str")%></dd>
            
            <dd class="clear"></dd>
        </dl>
        
        <div class="clear"></div>
    
    </div>
        
        
        
        
        
        
        
        
        
        
    
         
               
           
       
       <% 
           } 
       %>
    </body>
</html>
