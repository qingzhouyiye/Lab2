<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1150310410李志强</title>
</head>
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
<div id="section">
<h3  align="center">删除成功</h3></div>
<div id="footer">
<a href='<s:url action="home"></s:url>'>返回</a></div>
</body>
</html>