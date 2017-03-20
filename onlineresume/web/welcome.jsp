<%-- 
    Document   : welcome
    Created on : 18 Mar, 2017, 12:43:42 AM
    Author     : niral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
<title>welcome admin</title>
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="demo.css" media="all" />
 
       <script data-require="angular.js@1.2.0-rc3" data-semver="1.2.0-rc3" src="http://code.angularjs.org/1.2.0-rc.3/angular.min.js"></script>
    <script data-require="angular-router@1.2.0-rc1" data-semver="1.2.0-rc1" src="http://code.angularjs.org/1.2.0rc1/angular-route.js"></script>
    <link rel="stylesheet" href="style.css" />
    <script src="angular.js"></script>

    <script src="script.js"></script>
</head>
<body  ng-app="myApp">
    
    
    

    
    <div class="container">
    <div class="freshdesignweb-top">
    <span class="right">
    
    <ul>
     
      <li>
          <a href="#/list"><strong>User List</strong></a>
      </li>
     <li>
          <a href="admin.jsp"><strong>Log out</strong></a>
      </li>
    </ul>
    </spam><br><br>
       <form action="delete.jsp" method="post">
    <spam class="center">
        
        
        
        
                        <input id="delete" name="delete" placeholder="enter user id for delete" required="" tabindex="1" type="search"/> 
                        
            
            <br>
            
    
            <input class="buttom" type="submit" name="submit" id="submit" tabindex="5" value="Delete User"/>
        
        
        
    </spam>
    </form>
    
    
    
    
    
    <div class="clr"></div>
            </div>
    </di>
    
    <div ng-view=""></div>
    

</body>

    
</html>