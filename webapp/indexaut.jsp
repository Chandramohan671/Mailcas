<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Authentication</title>
  <link rel="icon" href="icon/logo-title.png" type="image/icon type">
    <title>Authentication | CASA</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@1,500&display=swap" rel="stylesheet">
     
     <script>
         function validateAuthenticat()
         {
         
              
           var box2=document.getElementById("authenticat").value;
           var valid=/^[a-z]+@[0-9-]+$/
            if(!box2.match(valid))
             {
            	alert("fill the correct authentication format mentioned below");
                return false;
            }
           
     }
     </script>
     
     <style>
        #container{
            border:2px solid black;
            width:72%;
            height:93%;
            left:50%;
            top:50%;
            box-shadow:2px 2px 20px;
            border-radius:20px;
            align-items: center;
            background-color:#ffffff;
            transform:translate(-50%,-50%);
            position:absolute;
        }
        .first{
            margin-top:40px;
            margin-bottom:0px;
            text-align:center;
            font-size:22px;

        }
        #aut {
            margin-left:350px;
            height:50px;
            width: 300px;
            border-radius:13px;
            border:0.5px solid black;
            outline: none;
            font-size: 15px;
            box-shadow: 2px 6px 10px rgba(66,57,238,0.3);
            border-radius:30px;
        }
         
         #phon {
                height:41px;
                border-radius:13px;
                width:270px;
                margin-left: 339px;
                border-radius:13px;
                outline: none;
                font-size: 15px;
                box-shadow: 2px 6px 10px rgba(66,57,238,0.3);
                border-radius:30px;
                border: none;
                text-align: center;
                letter-spacing: 1.5px;
        }
        
        #authenticat {
                height:41px;
                border-radius:13px;
                width:270px;
                margin-left: 120px;
                border-radius:13px;
                outline: none;
                font-size: 15px;
                box-shadow: 2px 6px 10px rgba(66,57,238,0.3);
                border-radius:30px;
                border: none;
                text-align: center;
                letter-spacing: 1.5px;
        }
        #second{
            float:left;
            clear:left;
            margin-left:70px;
            text-align:center;  
            font-family:"Poppins",sans-serif;         
        }

        #third{
           float:right;
           clear:right;
           margin-right:388px;
        
            
        }
        #box{
            float:right;
            background: linear-gradient(-30deg,blue,purple);
            box-shadow:2px 6px 16px rgba(66,57,238,0.3);
            color:antiquewhite;
            clear: right;
            margin-right:160px;
            width:160px;
            height:40px;
            font-size:15px;
            letter-spacing:2px;
            text-shadow:2px 2px 1px black;
            outline:none;            
            border-radius:20px;
            border: none;
            margin-top:120px;
            }
        .back{
            font-weight:bolder;
            font-size:xx-large;
            outline: none;
            background-color:white;
            border: none;
            text-decoration: none;
        }
        #box a{
            text-decoration: none;
            color: white;
        }
        .back a{
            text-decoration: none;
            color: black;
        }
        .head{
            margin-left: 10px;
            text-shadow:1px 1px 1px black;
        }   
        .code{
            font-family:"Poppins", sans-serif;
            font-size:24px;
        }
        #number-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
	      -webkit-appearance: none;
	      -moz-appearance: textfield;
         }
    </style>
    
     
 
</head>
<body style="background-color:#eef1f8;">

 
 <div id="container">
    <form action="rgaut" method="post" autocomplete="off" onsubmit="return validateAuthenticat()">
    
     <h1 class="head"><button class="back"><a href="index.jsp" ><</a></button>&nbsp;&nbsp;&nbsp;User Authentication</h1>
     
     
     
     <div class ="first"> 
           
           <label class="code" for="authenticat"><strong>User Authentication  Code</strong></label>
           <input type="text" id="authenticat" name="authentication" required id="auti" >
        
        
   </div>

     <div id="second">
       <p>(Enter your father's name then authrate(@) and last</p>
       <p>two digits of your phone number in lowercase.</p>
       <p>For example: your father name is <strong>Ramachandran</strong></p> 
       <p> and your phone is <strong>9790059141</strong>then your</p>
       <p>  authentication  code is <strong>ramachandran@41</strong>)</p>
       
     </div>
      <div>
        <a href="login.jsp"><button id="box">Submit</button></a>
      </div>
     
      </form>

    
    </div>

</body>
</html>