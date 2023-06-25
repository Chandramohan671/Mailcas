<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="icon/tit.jpeg">
      <title>Compose | CASA</title>
      
      <script>
           function validateCompose()
           {
        	   var box1=document.getElementById("three");
        	   var cmp=/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[casa]{2,4}$/
        	   if(box1.value="" || box1.value.match(cmp))
        	   {
        		   if(box1.value=="")
                   {
                       alert("fill the email id field");
                       return false;
                   }
               }
        	   else
        		  {
        		    alert("Enter correct email format which have 'casa' as domain");
        		    return false;
        		  }
           }
      
      </script>
           
        <style>
            #container{
                content:"Mail CASA";
                width:72%;
                height:92%;
                background-color:#ffffff;
                position:absolute;
                left:50%;
                top:50%;
                transform:translate(-50%,-50%);
                box-shadow:2px 2px 20px;
                border-radius:20px;
                display:flex;
            }

            #second{
                margin-top:100px;
            }
            
            #one{
                font-size:20px;
                margin-right:80px;
            }
            #two{
                font-size:20px;
                margin-right:40px;
            }
            #three{
                width:250px;
                background-color:white;
                border-radius:12px;
                height:32px;
                box-shadow: 2px 6px 10px rgba(66,57,238,0.3);
                border-radius:30px;
                align-items:center;
                border:none;
                outline:none;
                text-align: center;
            }
            
             #four{
                width:250px;
                background-color:white;
                border-radius:12px;
                height:32px;
                box-shadow: 2px 6px 10px rgba(66,57,238,0.3);
                border-radius:30px;
                align-items:center;
                border:none;
                outline:none;
                text-align: center;
            }
            
            #area{
                 margin-top:10px;
                 font-size: 17px;
                 font-family:sans-serif;
            }
           
            #fourth{
                margin-left:140px;
                width:120px;
                height:37px;
                outline: none;
                border: none;
                border-radius: 13px;
                background: linear-gradient(-30deg,blue,purple);
                box-shadow:10px 10px 10px rgba(66,57,238,0.3); 
                cursor: pointer; 
                color: white;
                font-size:17px;
                margin-bottom: 10px;                
            }
            .head{
            margin-left: 10px;
            text-shadow:1px 1px 1px black;
        }   
        .back a{
            text-decoration: none;
            color: black
            ;
        }
        .back{
            font-weight:bolder;
            font-size:xx-large;
            outline: none;
            background-color:white;
            border: none;
            text-decoration: none;
        }
        .file{
            margin-bottom: 100px;
            width:120px;
            height:37px;
            outline: none;
            border: none;
            border-radius: 13px;
            background: linear-gradient(-30deg,blue,purple);
            box-shadow:10px 10px 10px rgba(66,57,238,0.3); 
            cursor: pointer;   
            color: white;
            font-size:17px;
            margin-bottom: 10px;
        }
        .input-file{
            margin-top:10px;
        }
        
         #inp{
                width:235px;
                background-color:white;
                border-radius:12px;
                height:28px;
                box-shadow: 2px 6px 10px rgba(66,57,238,0.3);
                border-radius:30px;
                align-items:center;
                border:none;
                outline:none;
                text-align: center;
                margin-left:10px;
                font-size:30px;
            }
           
            .file-submit{
                  padding-left:-20px;
            
            }
        </style>
        
         <%
	if(session.getAttribute("email")==null)
	{
		response.sendRedirect("login.jsp");
	}
	%>  

</head>
<body style="background-color:#eef1f8;">

<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	response.setHeader("Pragma","no-cache");
	response.setHeader("Expires", "0");
	%>
   <div id="container">
            <h1 class="head"><button class="back"><a href="inbox.jsp" ><</a></button>&nbsp;&nbsp;&nbsp;Compose Mail</h1>
               
           <div id="second">
               <form action="msg" method="post" onsubmit="return validateCompose()">
                  <label for="to" id="one">To</label>
                  <input  id="three" type="text"  name="mail" required><br><br><br>
                  <label for="subject"  id="two">Subject</label>
                  <input  id="four" type="text"  name="subject" required><br><br>
                  <textarea id="area" rows="10" cols="55" name="description" >
                  </textarea><br><br><br>
                  <div class="file-submit" autocomplete="off">
                        <tr> <td><span style="font-size:22px";>Link: <span> </td><td><input type="text" id="inp" name="file" ></td></tr>
                       
                        <a href="">
                            <button id="fourth">Send </button>
                        </a>
                  </div>
               </form>
           </div>
        </div>

</body>

 
    
</html>