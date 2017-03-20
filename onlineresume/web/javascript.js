

function ValidationEvent() {
// Storing Field Values In Variables
var ffname = document.getElementById("fname").value;
var llname = document.getElementById("lname").value;
var emaill = document.getElementById("email").value;
var phn = document.getElementById("phone").value;

if (ffname != '' && llname != '' && email != ''&& phn !='') {

if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(emaill))
{ 
if (phn.length == 10) {
alert("All field are correct and submit sucessfull");
return true;
} else {
alert("The mobile no.enter with country code");
return false;
}
} else {
alert("enter valid email id.....!");
return false;
}
}
    
  
else {
alert("All fields are required.....!");
return false;
}
}













