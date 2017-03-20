<%-- 
    Document   : admin
    Created on : 18 Mar, 2017, 12:20:02 AM
    Author     : niral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"><head>
<title>admin</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <link rel="stylesheet" type="text/css" href="style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="demo.css" media="all" />

    
   <SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</SCRIPT>
    
   
    
    
    
  </head>


<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">

      
          <div class="container">
		
			<header>
				<h1>Admin </h1>
            </header>       
      <div  class="form">
          <form action="login.jsp" method="post">
    		
              
    			<p class="contact"><label for="adid">Admin Id</label></p> 
                        <input id="adid" name="adid" placeholder="Enter id" required="" tabindex="1" type="text"/> 
                        
                        <p class="contact"><label for="pass">Password</label></p> 
    			<input id="pass" name="pass" placeholder="password" required="" tabindex="1" type="password"/> 
    			 
            <input class="buttom" type="submit" name="submit" id="submit" tabindex="5" value="Log in"/>
</form>
          </div>      
</div>
          
          
          
</body>



</html>
