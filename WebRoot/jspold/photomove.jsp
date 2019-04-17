<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'photomove.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
 <script language="javascript"> 
setInterval(test,5000); 
var array=new Array(); 
var index=0; 
var array= new Array("images/1.jpg","images/2.jpg","images/3.jpg"); 
function test() 
{ var myimg=document.getElementById("imgs"); 
if(index==array.length-1) 
{ index=0; }else{ index++; } 
myimg.src=array[index]; 
} 
</script> 
</head> 
<body > 
<img id="imgs" src="images/1.jpg" /> </body>
  </body>
</html>
