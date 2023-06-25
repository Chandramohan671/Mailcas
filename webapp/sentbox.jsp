<%@page import="java.util.Iterator"%>
<%@page import="com.compose.ComposeBean"%>
<%@page import="java.util.List"%>
<%@page import="com.arun.login.database.loginDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>Sent | CASA</title>
        <link rel="icon" href="icon/tit.jpeg">
        <meta name="viewport" content="width=device-width, initial-scale=1">
          <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@1,500&display=swap" rel="stylesheet">
        <style>
               .container{
                content:"Mail CASA";
                width:77%;
                height:95%;
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
            
             .head{
            margin-left: 5px;
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
            
           
        
        #main {
      background-color:white;
      margin-top:0px;
      margin-right:320px;
      margin-bottom:15px;
      margin-left:22px;
      border-radius:10px;
      padding:0px;
      font-size:120%;
      }
      
      table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width:900px;
        margin-left:18px;
      }
td{
  
  padding:12px;
  border:1px solid #dddddd;
}

tr:nth-child(even) {
        background-color: #dddddd;
      } 
      
      .fill{
           text-decoration:none;
      
      
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
     
        <div id="main">
                  <h1 class="head"><button class="back"><a href="inbox.jsp" ><</a></button>&nbsp;&nbsp;&nbsp;Sentbox</h1>
            
       
        
       
       <table > 
       <%
	     loginDao inboxdao=new loginDao();
	     List<ComposeBean> inboxList=inboxdao.SentboxView();
	     Iterator<ComposeBean> it_inboxList=inboxList.iterator();
	
	     while(it_inboxList.hasNext()){
		    ComposeBean inboxbean=new ComposeBean();
		    inboxbean=it_inboxList.next();
        %>
        
         <%String r=inboxbean.getSenderid(); %>
         
            
            
             
               <tr>
                  <td> 
                  <b>To : </b><%out.println(r);%>&nbsp;&nbsp; 
	              <b>Subject : </b><%out.println(inboxbean.getSubject());%>&nbsp;&nbsp;
	              <b>Content : </b><%out.println(inboxbean.getComposemail());%>&nbsp;&nbsp;
	              
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
	                  <b>File link : <a href="<%out.println(inboxbean.getFile());%>" class="fill" target="_blank">click here to view</a></b>
	                 <%}
	                 else{%>
	                	<b>File link :</b>No file attached
	                <%}%>&nbsp; 
	                <%out.println(inboxbean.getTime());%>&nbsp;              
	              
	              </td>
               </tr>
             
              <%		
	   }
	
	    %> 
         
                </table>
              
	      
	     
    
        </div>
    </div>
   
</body>
</html>