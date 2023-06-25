<%@page import="com.arun.login.bean.loginBean"%>
<%@page import="com.arun.login.database.loginDao"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="icon/tit.jpeg">
<style>
        #container{
                border:none;
                width:65%;
                height:72%;
                left:50%;
                top:50%;
                box-shadow:2px 2px 20px; 
                border-radius:20px;
                align-items: center;
                background-color:#ffffff;
                transform:translate(-50%,-50%);
                position:absolute;
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
            
             #two{
                margin-top:60px;
                margin-bottom:50px;
                margin-left:140px;
                margin-right:40px;
            }
      
       #first{
               font-size:25px;
                margin-right:100px;
                text-align: center;
      
       }
       
       #second{
               font-size:25px;
                margin-right:210px;
                text-align: center;
                padding-bottom:30px;
       
       
       }
       
        #change{
                float:right;
                background: linear-gradient(-30deg,blue,purple);
                box-shadow:4px 8px 16px rgba(66,57,238,0.3);
                color:antiquewhite;
                clear: right;
                margin-right:280px;
                width:170px;
                height:40px;
                font-size:15px;
                letter-spacing:1.3px;
                text-shadow:2px 2px 1px black;
                outline:none;            
                border-radius:20px;
                outline: none;
                border: none;
                margin-top: 110px;
                cursor: pointer;
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

<hr>
<%
	loginDao profiledao=new loginDao();
	List<loginBean> list=profiledao.profileView();
	Iterator<loginBean> it_list=list.iterator();
	
	while(it_list.hasNext()){
		loginBean profilebean=new loginBean();
		profilebean=it_list.next();
%>

	
		<% String s=profilebean.getEmail(); %>
		
	<div id="container">
	   <h1 class="head"><button class="back"><a href="inbox.jsp" ><</a></button>&nbsp;&nbsp;&nbsp;User Profile</h1>
        <div id="two">   
		
		<div id="second">
	        <b>Username </b>&nbsp;&nbsp; : <span style=" margin-left:20px";><%out.println(profilebean.getUname());%></span>
	    </div>
		
	    <div id="first">
	         <b><span>Email </span> </b>&nbsp;&nbsp; : <span style=" margin-left:20px";><% out.println(s);%></span>
	    </div><br><br>
		
	    
	    
	    <form action="changepassword.jsp">
	          <button id="change">Change Password</button>
	    </form>
             
         
	  </div>
	
<%		
	}
	
	%>

</div>
</body>
</html>