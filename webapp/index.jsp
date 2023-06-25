<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign up</title>
 <link rel="icon" href="icon/tit.jpeg">
</head>
<body>
<title>Sign Up | CASA  </title>
        <link rel="icon" href="icon/logo-title.png" type="image/icon type">
        
          <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@1,500&display=swap" rel="stylesheet">


    <script>
    function validateSignUp()
    {
    	 var box1=document.getElementById("name");
         
         if(box1.value=="")
         {
           alert("fill the name field");
           return false;
         }  
           
         var box2=document.getElementById("email");
         var sigcmp=/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(.casa)*$/
         if(box2.value=="" || box2.value.match(sigcmp))
          {
             if(box2.value=="")
             {
                 alert("fill the email id field");
                 return false;
             }
           }   
         else
         {
             alert("fill the correct email id which have domain as casa  (eg : arun@gmail.casa)");
             return false;
         }

         var box3=document.getElementById("word").value;
         if(box3=="")
           {    
             alert("fill the password");
             return false;
              
          } 
          else{
              if(box3.length<8) 
              { 
                alert("Your Password must contain atleast eight characters");
                return false;
              }
                
          }

         var box4=document.getElementById("confirm").value;
         if(box4=="")
         {  
              alert("fill the confirm password field");
              return false;
              
         } 
         else{
             if(box4!=box3)
             {
                 alert("Your password and confirm password must be same");
                 return false;
             }
         }

    }
    
    
    
    </script>

    <style>
    	@charset "ISO-8859-1";
body{
    background-color:#eef1f8;
    margin:0px;
    padding: 0px;
}
a{
    text-decoration: none;
}
.container{
    content:"Mail CASA";
    width:85%;
    height:90%;
    background-color:#ffffff;
   	display:flex;
   	position:absolute;
    left:50%;
    top:50%;
    transform:translate(-50%,-50%);
    box-shadow:2px 2px 20px;
    border-radius:20px;
    background-image: url(bg.gif);
    background-repeat: no-repeat;
    background-size:cover; 
   
}
.signup{
    width:100%;
    align-items:left;
    margin-top:30px;
    margin-left:90px;
}
.text-container{
    width:100%;
    height:100%;
    display: flex;
    flex-direction:column;
    align-items: center;
    justify-content: center;
    
   
}
.heading{
    font-family:calibri;
    color:black;
    margin-top:20px; 
    text-transform: capitalize;
    width:500px;
    text-align:center;
    margin-left:20px;
}
.text{
    width:350px;
    height:50px;
    box-shadow: 2px 6px 10px rgba(66,57,238,0.3);
    border-radius:30px;
    display:flex;
    align-items:center;
    margin:10px;
    margin-left:80px;
}
.text input{
    outline:none;
    border:none;
    width:80%;
    height:20px;
    font-size:14px;
    margin:5px;
}
.text img{
    margin-left:20px;
}
.logo-shadow{
    text-shadow:10px 10px 19px;
}
.conditions{
    font-family:myriad pro;
    color:#bbc1cb;
    font-size:14px;
    font-weight:bolder; 
     margin-left:170px;
     margin-top:20px;
}
.terms{
    display:flex;
    align-items: center;
    display:flex;
    margin-left:10px;
    
}
.conditions a{
    color:red;
    font-weight:700;
}
.create-acct{
    width:200px;
    height:40px;
    outline:none;
    border:none;
    border-radius:20px;
    background: linear-gradient(-30deg,blue,purple);
    box-shadow:2px 6px 16px rgba(66,57,238,0.3);
    color:antiquewhite;
    font-weight:600;
    font-size:13px;
    float:justify;
    margin-left:170px;
}
.create-acct{
    transform:scale(1.1);
}
.text-container p{
    width:50%;
    text-align:center;
    font-family:arial;
    font-weight:700;
    font-size:15px;    
}
.user-id{
    border-radius:50%;
    margin-right: 10px;
    width: 25px;
    height:25px;
    background: white;
    box-shadow: 2px 2px 2px;
    font-weight: bolder;
}
.heading-first h1{
	margin-left:70px;
    font-family:Poppins; 
    color:#2d2c2c;
    line-height:20px;
    text-shadow: 2px 8px 6px rgba(0,0,0,0.2),0px -5px 35px rgba(255,255,255,0.3);
}
.logo{
    display: flexbox;
    align-items: stretch;
    position:absolute;
    margin-top:6px;
    margin-left:6px;
}
#number-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
	-webkit-appearance: none;
	 -moz-appearance: textfield;
}
    </style>
    </head>

    <body>
        <div class="container">
          <img class="logo" src="icon/mail.jpeg" alt="">
            <div class="text-container heading-first" style="font-size:12px;">
            <h1>Hii Aliens!!!</h1>
            <h1>LET'S MAKE  A NEW JOURNEY</h1>
            </div>
            <form  action="reg" name="myform" method="post"; autocomplete="off" onsubmit="return validateSignUp()">
                <div class="signup">
                    <h1 class="heading">Sign-Up To Join</h1>
                    <div class="text">   
                        <img class="logo-shadow" src="icon/user.jpeg" height="20px">
                        <input type="text" name="uname"  id="name"  required placeholder="Name">
                     </div><br>
                     <div class="text">
                        <img class="logo-shadow" src="icon/email.jpeg" height="20px">
                        <input type="mail" name="email"  id="email" required placeholder="Email id">
                     </div><br>
                     

                     <div class="text">
                        <img class="logo-shadow"src="icon/password.jpeg" height="20px">
                        <input type="password" name="pass"  id="word" minlength="8" required placeholder="Password">
                      </div><br>

                      <div class="text">
                        <img class="logo-shadow" src="icon/password.jpeg" height="20px">
                        <input type="password" name="confirmpass"  id="confirm" minlength="8" required placeholder="Confirm Password">
                       </div><br> 
                       	            
                   		 <button class="create-acct">CREATE AN ACCOUNT</button></a>
                   		 <p class="conditions">Already Have An Account<a href="login.jsp">&nbsp;Log In</a></p>
                   </div>
           </form>
        </div>

    </body>

</html>