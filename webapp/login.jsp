<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
  <link rel="icon" href="icon/tit.jpeg">
   <head>
        <link rel="icon" href="icon/logo-title.png" type="image/icon type">
        <title>Mail | CASA</title>
        <script type="text/javascript" src="newScript.js"> 
            $("#chang").click(function(){
          alert("Your password has been changed");
        }); 
        </script>

        <style>
            @charset "utf-8";
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
                width:72%;
                height:83%;
                background-color:#ffffff;
                position:absolute;
                left:50%;
                top:50%;
                transform:translate(-50%,-50%);
                box-shadow:2px 2px 20px;
                border-radius:20px;
                display:flex;
                background-image: url(bg.gif);
                background-repeat: no-repeat;
                background-size:cover; 
                }
                
                .text-container{
                    width:50%;
                    height:100%;
                    display: flex;
                    flex-direction:column;
                    align-items: center;
                    justify-content: center;
                    position: relative;
                    margin-right:50px;
                    } 
                    .heading{
                        font-family:calibri;
                        color:black;
                        margin-top:20px; 
                        text-transform: capitalize;
                        padding-left:120px;
                    }
                    .text{
                    width:320px;
                    height:50px;
                    box-shadow: 2px 6px 10px rgba(66,57,238,0.3);
                    border-radius:30px;
                    display:flex;
                    align-items:center;
                    margin-bottom:36px;
                    }
                    .text input{
                    outline:none;
                    border:none;
                    width:75%;
                    height:20px;
                    font-size:14px;
                    
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
                        font-size:18px; 
                        margin-left:20px;
                        }
                .terms{
                    display:flex;
                    align-items: center;
                    display:flex;
                    padding-top: 20px;
                    margin-left:95px;
                    
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
                        }
                    .create-acct{
                        transform:scale(1.1);
                        margin-top:30px;
                        margin-left:40px;
                        margin-bottom:20px;
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
                        .login{
                            margin-top:70px;
                            margin-left: 50px;
                        }
                </style>

    </head>

    <body>
         
        <div class="container">
            <img class="logo" src="icon/mail.jpeg" alt="">
            <div class="text-container heading-first">
                <h1>Welcome Back Aliens!!!</h1>
            </div>

            <div class="login">
                <h1 class="heading">Log-In</h1>

                <form id="form" action="login" method="post" autocomplete="on" onsubmit="return validateLogin()";>
                    <div class="text">
                        <img class="logo-shadow" src="icon/email.jpeg" height="20px">
                        <input type="mail"  name="email" required placeholder="Email Id" id="email">
                    </div>
            
                    <div class="text">
                        <img class="logo-shadow"src="icon/password.jpeg" height="20px">
                        <input type="password" name="confirmpass" placeholder="Password" id="pass"required minlength="8">
                    </div>

                    <div class="terms">
                        <a href="forgotpass.jsp">&nbsp;<strong>Forgot Password?</strong> </a>
                     </div>

                     <div class="conditions">
                        <button class="create-acct">LOG IN</button>
                       <p class="conditions">Not Have an Account<a href="index.jsp">&nbsp;Sign Up</a></p>
                    </div>
                </form>
            </div>
        </div>

    </body>
</html>