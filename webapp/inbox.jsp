<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.arun.login.database.loginDao"%>
<%@page import="com.compose.ComposeBean"%>
<%@page import="com.arun.login.bean.loginBean"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="icon" href="icon/tit.jpeg">
   <title>Inbox | CASA</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
   <script>
     
     function myFunction() {
       var popup = document.getElementById("myPopup");
       popup.classList.toggle("show");
      }
     
   </script>
 
 <style>
       .container{
  content:"Mail CASA";
  width:90%;
  height:98%;
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
  overflow: auto; 
  overflow-x: hidden;
}

#sideleft{
  clear:left;
  margin-left: 25px;

}
#sideleft ul{
  text-align:center;
  border-radius:10px;
  padding:0px;
  margin-top:0px;
  margin-right:0px;

  margin-left:0px;
  }
#sideleft ul li{
  display:inline;
   margin-top:0px;
   margin-right:0px;
   margin-left:0px;
   font-size:23px;
  }
#sideleft ul li a{
      
  font-family:verdana;
  margin-right:40px;
  margin-bottom:0px;
  background-color:white;
  font-size:23px;
  color:black;
  }
#term1{
  float:left;
  clear:left;
  margin-left:10px;
  font-size:17px;
  margin-bottom:30px;
  margin-top:10px;
  text-decoration:none;
}

#term2{
    float:left;
    clear:left;
    margin-left:0px;
    font-size:px;
    margin-bottom:30px;
    margin-top:0px;
  }
#term3{
  float:left;
  clear:left;
  margin-left:35px;
  font-size:17px;
  margin-bottom:0px;
  margin-top:0px;
}
#header{
  margin-top:20px;
}
.logo{
  margin-top:px;
  margin-left:6px;
  display: flex;
  position:static;
}
.heading{
  font-size: 23px;
  display:flex;
  position:relative;
  margin-bottom: px;
}
.text-heading{
  font-size:23px;
  color: rgb(0, 93, 151);
  margin-top: 0px;
  font-family:sans-serif;
  font-weight: bold;
  text-shadow: 1px 1px 2px ;
  display: flex;
}
#main {
  background-color:none;
  margin-top:30px;
  margin-right:0px;
  margin-bottom:15px;
  margin-left:10px;
  border-radius:10px;
  font-size:120%; 
}

table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width:880px;
      }
td{
  
  padding:12px;
  border:1px solid #dddddd;
}

tr:nth-child(even) {
        background-color: #dddddd;
      }    

#edit{
  margin-top:70px;
  margin-left:25px;
  text-decoration:none;
  float:left;
}
 
 .log{
    width:100px;
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
    margin-left:0px;
    margin-top:30px;
}
.log{
    transform:scale(1.1);
}

.popup {
  position: relative;
  display: inline-block;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* The actual popup */
.popup .popuptext {
  visibility: hidden;
  width: 560px;
  background-color: #555;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 8px 0;
  position: absolute;
  z-index: 1;
  bottom: 125%;
  left: 50%;
  margin-left: -260px;
}

/* Popup arrow */
.popup .popuptext::after {
  content: "";
  position: absolute;
  top: 100%;
  left: 50%;
  margin-left: -5px;
  border-width: 5px;
  border-style: solid;
  border-color: #555 transparent transparent transparent;
}

/* Toggle this class - hide and show the popup */
.popup .show {
  visibility: visible;
  -webkit-animation: fadeIn 1s;
  animation: fadeIn 1s;
}

/* Add animation (fade in the popup) */
@-webkit-keyframes fadeIn {
  from {opacity: 0;} 
  to {opacity: 1;}
}

@keyframes fadeIn {
  from {opacity: 0;}
  to {opacity:1 ;}
}
 .tab{
     margin-right:30px;
 
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

  <div class="container">
      <div id="header">
         <div class="heading">
            <img class="logo"  height="70px" src="icon/mail.jpeg" alt="">           
         </div><br>
         <div id="sideleft">
            <ul>
            <div id="term1">
               <li>
                  <a href="profileSuccess.jsp" style="text-decoration: none;"><img src="icon/user.jpeg" style="margin-right:23px;" width="23px" height="23px">Profile</a>
               </li>
   
            </div>
            <div id="term2">
               <li>
                  <a href="sentbox.jsp" style="text-decoration: none;"><img src="icon/sent.png" style="margin-right:13px;" alt="" width="23px" height="23px">Sentbox</a>
               </li>
               
            </div>
            <div id="term3">
                
               <li><a href="compose.jsp">
                  <img src="icon/compose.jpeg" alt="compose" width="75" height="75"></img>
               </a></li>
               
            </div><br>
            
               <div id="edit"> 
                 
                 <form action="logout">
                  
                  <input type="submit" class="log" name="logout" value="logout"> 
                  
               </form>
            </div>
         </ul>
         </div>
      </div>
      
      <div id="main">
      
<%
	loginDao profiledao=new loginDao();
	List<loginBean> list=profiledao.profileView();
	Iterator<loginBean> it_list=list.iterator();
	
	while(it_list.hasNext()){
		loginBean profilebean=new loginBean();
		profilebean=it_list.next();
%>
         <marquee  class="text-heading"  width="90%" direction="right" height="50px">
            Hii <%out.println(profilebean.getUname()); %> Welcome To Mail CASA.
        </marquee>
        
        <%
    	}
        %>
       <br>
       <table class="tab">
       <%
	     loginDao inboxdao=new loginDao();
	     List<ComposeBean> inboxList=inboxdao.InboxView();
	     Iterator<ComposeBean> it_inboxList=inboxList.iterator();
	
	     while(it_inboxList.hasNext()){
		    ComposeBean inboxbean=new ComposeBean();
		     
		   
		    inboxbean=it_inboxList.next();
        %>
        
         <%String r=inboxbean.getSenderid();
         
         
         %>
         
        
           <tr>
                   
                    <td data-toggle="tooltip" title="Content : <%out.println(inboxbean.getComposemail()); %>">
                    
                    <b>Recieved From:</b><%out.println(r);%>&nbsp;&nbsp;   
                    <b>Subject:</b><%out.println(inboxbean.getSubject());%>&nbsp;&nbsp;  
                 
                    <% 
                    int t;
                    String d=inboxbean.getFile();
                   
                    try
                    {
                         t=d.length();
                    }
                    catch(Exception e)
                    {
                    	t=0;
                    	e.printStackTrace();
                    }
                        
                    %>
                    
                    
                    <% if(t>4)
	                 {%>
	                  <b>File link:<a href="<%out.println(inboxbean.getFile());%>" target="_blank">click here to view</a></b>
	                 <%}
	                 else{%>
	                	<b>File link:</b>No file attached
	                <%}%>               
	                 &nbsp;
	                 <%out.println(inboxbean.getTime());%>&nbsp;
	                  <a href="compose.jsp"> <img src="icon/reply.png" width="30"> </a> 
	                
                   </td>
                   
            </tr>
             
      <%		
	}
	
	%> 
             </table>
              
       </div>
     
    <script>
                     $(document).ready(function(){
                      $('[data-toggle="tooltip"]').tooltip();   
                      });
      </script>
</body>
</html>