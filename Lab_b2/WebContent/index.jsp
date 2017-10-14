<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
#header {
    background-color:black;
    color:white;
    text-align:center;
    padding:5px;
}
#nav {
    line-height:30px;
    
    height:300px;
    width:100px;
    float:left;
    padding:5px;	      
}
#section {
    width:350px;
    float:left;
    padding:100px;	 	 
}
#footer {
    background-color:black;
    color:white;
    clear:both;
    text-align:center;
   padding:5px;	 	 
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1150310410_李志强</title>
</head>
<body>
<div id="header">
   <h1  align="center">图书管理程序</h1>
</div>
   <h3  align="center">请输入想查询的作者</h3>
<div style="width:100%;text-align:center">
<form action="query">
	<input type="text" name="author"/>
    <input type="submit" value="搜索"/>
</form>
</div>
<div id="nav"></div>
<div id="section"></div>
<div id="footer">
<h3  align="center">欢迎使用图书管理程序</h3></div>
</body>
</html>

