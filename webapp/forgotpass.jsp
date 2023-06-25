<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot password</title>
  <link rel="icon" href="icon/tit.jpeg">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
      <script type="text/javascript" src="js/newScript.js"> 
          $("#chang").click(function(){
        alert("Your password has been changed");
      });
    
    
      </script>
      
      <style>
            #container{
                border: none;
                width:62%;
                height:77%;
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
                margin-top:90px;
                margin-bottom:0px;
                margin-left:110px;
                margin-right:50px;
            }
            #three{
                margin-top:20px;
                margin-bottom:20px;
                margin-left:110px;
                margin-right:50px;
            }         
            .first{
                font-size:25px;  
            }
            .second{
                height:35px;
                border-radius:13px;
                width:240px;
                margin-left:250px;
                border-radius:13px;
                outline: none;
                border: none;
                font-size: 15px;
                box-shadow: 2px 6px 10px rgba(66,57,238,0.3);
                border-radius:30px;
                text-align: center;
                letter-spacing: 1.5px;
            }
            .third{
                font-size:25px;
            }
            .fourth{
                height:35px;
                border-radius:13px;
                width:240px;
                margin-left:120px;
                border-radius:13px;
                outline: none;
                border: none;
                font-size: 17px;
                text-align: center;
                box-shadow: 2px 6px 10px rgba(66,57,238,0.3);
                border-radius:30px;
                text-align: center;
                letter-spacing: 1.5px;
            }
        .head{
            margin-top:10px;
            margin-left: 10px;
            text-shadow:1px 1px black;
            }   
            .back a{
                text-decoration: none;
                color: black;
            }
            .back{
                font-weight:900;
                font-size:xx-large;
                outline: none;
                background-color:white;
                border: none;
                text-decoration: none;
               
            }
        #chang {
           
            background: linear-gradient(-30deg,blue,purple);
            box-shadow:4px 8px 16px rgba(66,57,238,0.3);
            color:antiquewhite;            
            margin-left:455px;
            width:180px;
            height:35px;
            font-size:15px;
            letter-spacing:1.3px;
            text-shadow:2px 2px 1px black;
            outline:none;            
            border-radius:20px;
            border: none;
            cursor: pointer;
        }
        .auth-popup{
            margin-left: 10px;
            border-radius: 50%;
            background: white;
            cursor: pointer;
            box-shadow:2px 2px 16px rgba(0, 0, 0, 0.3);
            border: none;
            font-size:17px;
            font-weight: bolder;
        }
      </style>   
      
     
</head>
<body style="background-color:#eef1f8;">

  
	
   <div id="container">
         <h1 class="head"><button class="back"><a href="login.jsp" ><</a></button>&nbsp;&nbsp;&nbsp;Forgot Password</h1>   
        
           <form id="form" action="forgot" method="post" onsubmit="return validateTextBox()">
           
             <div id="two">
                <label class="first" for="user"> Email </label>
                <input class="second" type="mail" name="email" id="user"  minlength="10" required>
            </div><br><br>
            
            <div id="three">
                <label class="third" for="authe"> Authentication id </label>
                <input class="fourth" type="password" name="authentication" id="authe"  required>
                
            </div><br><br>
            
             
            <a href="inbox.html"><button id="chang" value="Change Password">Change Password</button></a>
            </form>
      </div>

      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>