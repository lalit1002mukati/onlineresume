<%-- 
    Document   : patient
    Created on : 8 Mar, 2017, 1:21:03 PM
    Author     : niral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en"><head>
<title>user</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <link rel="stylesheet" type="text/css" href="style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="demo.css" media="all" />

    
    
    <script src="javascript.js"></script>
        
    
    
    
  </head>


<body onLoad="document.registration.ffname.focus();">

      
          <div class="container">
		
			<header>
				<h1>User Registration Form </h1>
            </header>       
      <div  class="form">
          <form action="submit.jsp" method="post" onsubmit="return ValidationEvent()">
    		
              
    			<p class="contact"><label for="fname">First Name</label></p> 
                        <input id="fname" name="fname" placeholder="first name" required="" tabindex="1" type="text"/> 
                        
                        <p class="contact"><label for="lname">Last Name</label></p> 
    			<input id="lname" name="lname" placeholder="last name" required="" tabindex="1" type="text"/> 
    			 
 
                <p class="contact"><label for="email">Enter Email</label></p> 
    			<input id="email" name="email" placeholder="email" required="" tabindex="1" type="email"/> 
                        
    			 <p class="contact"><label>Birthday</label></p> 
                        
                        <input id="date" type="date" name="date" placeholder="date" required=""/>
                        
               
  
                        <select   class="select-style gender" name="gender" >
            <option value="select">i am..</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="others">Other</option>
            </select><br><br>
            
            
            <select class="select-style gender" name="code" >
            <option value="select">country code...</option>
            <option value="+91">india</option>
            <option value="+1">Usa</option>
            <option value="+7">Russia</option>
            <option value="+44">Uk</option>
            <option value="+92">Pakistan</option>
            <option value="+86">China</option>
            </select><br><br>
            


<p class="contact"><label for="phone">Mobile phone</label></p> 
            <input id="phone" name="phone" placeholder="ex.9752691609" required="" type="number"/> <br>
            
            <p class="contact"><label for="information">Description:</label></p>
            <textarea id="information" name="information" placeholder="user profile description....." required="" tabindex="2"></textarea><br>
            <p class="contact"><label for="uid">User Id</label></p> 
                        <input id="uid" name="uid" placeholder="user id" required="" tabindex="1" type="text"/> 
                        
            
            <br>
            
            <p class="contact"><label for="education">Education:</label></p>
            <textarea id="edu" name="edu" placeholder="educatiion" required="" tabindex="2"></textarea>
           
                        <br>
                        
            <p class="contact"><label for="skills">Skills:</label></p> 
                        <input id="skl" name="skl" placeholder="ex. java,c,c++" required="" tabindex="1" type="text"/> 
                        <br>
            <p class="contact"><label for="experience">Experience</label></p> 
                        <textarea id="exp" name="exp" placeholder="experience detail...." required="" tabindex="2"></textarea>
                        
                        <br>
                          <p class="contact"><label for="hobbies">Hobbies:</label></p> 
                        <input id="hob" name="hob" placeholder="enter hobbies" required="" tabindex="1" type="text"/> 
                        <br>
                         <p class="contact"><label for="strength">Strength:</label></p> 
                        <input id="str" name="str" placeholder="strength" required="" tabindex="1" type="text"/> 
                        <br>
                        
                        <p class="contact"><label for="adress">Address:</label></p> 
                        <input id="add" name="add" placeholder="permanent address.." required="" tabindex="1" type="text"/> 
                        <br>
            
    
            <input class="buttom" type="submit" name="submit" id="submit" tabindex="5" value="Submit"/>
</form>
          </div>      
</div>
          
          
          
</body>
</html>
