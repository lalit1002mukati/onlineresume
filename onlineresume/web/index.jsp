<%-- 
    Document   : index
    Created on : 10 Mar, 2017, 1:00:58 PM
    Author     : niral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
<title>Resume</title>
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="demo.css" media="all" />
 
       <script data-require="angular.js@1.2.0-rc3" data-semver="1.2.0-rc3" src="http://code.angularjs.org/1.2.0-rc.3/angular.min.js"></script>
    <script data-require="angular-router@1.2.0-rc1" data-semver="1.2.0-rc1" src="http://code.angularjs.org/1.2.0rc1/angular-route.js"></script>
    <link rel="stylesheet" href="style.css" />
    <script src="angular.js"></script>

    <script src="javascript.js"></script>
    <script src="script.js"></script>
    
</head>
<body ng-app="myApp">
    
    <div class="container">
    <div class="freshdesignweb-top">
    <span class="right">
    
    <ul>
      <li>
          <a href="#/"><strong>Home</strong></a>
      </li>
      <li>
          <a href="#/patient"><strong>Add User</strong></a>
      </li>
      <li>
          <a href="#/update"><strong>Update info</strong></a>
      </li>
      <li>
          <a href="admin.jsp"><strong>Admin login</strong></a>
      </li>
     
    </ul>
    </spam><br><br>
    
    <form action="user.jsp" method="post">
    <spam class="center">
        
        
        
        <p class="contact"><label for="uide"><b></b></label></p> 
                        <input id="uide" name="uide" placeholder="enter user id" required="" tabindex="1" type="search"/> 
                        
            
            <br>
            
    
            <input class="buttom" type="submit" name="submit" id="submit" tabindex="5" value="search"/>
        
        
        
    </spam>
    </form>
    
    <div class="clr"></div>
            </div>
    </di>
    
    <div ng-view=""></div>
    

</body>

    
</html>