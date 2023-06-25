<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Changepassword </title>
  <link rel="icon" href="icon/tit.jpeg">
         <script> 
         function validateChange()
         {
        	 var pw1 = document.getElementById("newpass").value;  
        	 var pw2 = document.getElementById("confirmpass").value;  
        	 if(pw1 != pw2)  
        	  {   
        	    alert("Password and confirm password must be same");  
        	    return false;
        	  }  

         }

        </script>
        
        <style>
            #container{
                border: none;
                width:70%;
                height:85%;
                left:50%;
                top:50%;
                box-shadow:2px 2px 20px; 
                border-radius:20px;
                align-items: center;
                background-color:#ffffff;
                transform:translate(-50%,-50%);
                position:absolute;
            }
            #two{
                margin-top:100px;
                margin-bottom:50px;
                margin-left:110px;
                margin-right:80px;
            }
            #first{
                font-size:25px;
                margin-right:160px;
            }
            #second{
                height:28px;
                border-radius:13px;
                width:200px;
                margin-left: 94px;
                border-radius:13px;
                border:0.5px solid black;
                outline: none;
                font-size: 15px;
                box-shadow: 2px 6px 10px rgba(66,57,238,0.3);
                border-radius:30px;
            }
            .third{
                font-size:25px;
                margin-right:110px;
            }
            .input-fourth{
                height:41px;
                border-radius:13px;
                width:270px;
                margin-left: 199px;
                border-radius:13px;
                outline: none;
                font-size: 15px;
                box-shadow: 2px 6px 10px rgba(66,57,238,0.3);
                border-radius:30px;
                border: none;
                text-align: center;
                letter-spacing: 1.5px;
            }
            
            .fifth{
                font-size:25px;
                margin-right:110px;
            }
            .input-sixth{
                height:41px;
                border-radius:13px;
                width:270px;
                margin-left: 110px;
                border-radius:13px;
                outline: none;
                font-size: 15px;
                box-shadow: 2px 6px 10px rgba(66,57,238,0.3);
                border-radius:30px;
                border: none;
                text-align: center;
                letter-spacing: 1.5px;
            }
            
            .seventh{
                font-size:25px;
                margin-right:110px;
            }
            .input-eight{
                height:41px;
                border-radius:13px;
                width:270px;
                margin-left: 20px;
                border-radius:13px;
                outline: none;
                font-size: 15px;
                box-shadow: 2px 6px 10px rgba(66,57,238,0.3);
                border-radius:30px;
                border: none;
                text-align: center;
                letter-spacing: 1.5px;
            }

            #change{
                float:right;
                background: linear-gradient(-30deg,blue,purple);
                box-shadow:4px 8px 16px rgba(66,57,238,0.3);
                color:antiquewhite;
                margin-right:105px;
                width:170px;
                height:40px;
                font-size:15px;
                letter-spacing:1.3px;
                text-shadow:2px 2px 1px black;         
                border-radius:20px;
                outline: none;
                border: none;
                margin-top: 20px;
                cursor: pointer;
            }
            .head{
            margin-left: 10px;
            text-shadow:1px 1px 1px black;
            }   
            .back a{
                text-decoration: none;
                color: black;
            }
            .back{
                font-weight:bolder;
                font-size:xx-large;
                outline: none;
                background-color:white;
                border: none;
                text-decoration: none;
               
            }
            .new-password{
                margin-bottom: 25px;
            }
        </style>
        
       

</head>
<body style="background-color:#eef1f8;">

   
	
      <div id="container">
        <h1 class="head">&nbsp;&nbsp;&nbsp;Change Password</h1>   
        
           <div id="two">
           <form id="form" action="change" method="post" onsubmit="return validateChange()">
                
               
                <div class="new-password">
                    <label class="fifth" for="newpass">New Password</label>
                    <input class="input-sixth" placeholder="****"  type="password" id="newpass" name="newpassword" minlength="8" required><br><br>
                </div>
                <div class="con-password">
                    <label class="seventh" for="confirmpass">Confirm New Password</label>
                    <input class="input-eight" name= "pass" placeholder="****"  type="password" id="confirmpass" minlength="8" required><br><br><br>
                </div>                
                 
                    <button id="change">Update Password</button>
            
               </form>
           </div>
       </div>
</body>
</html>