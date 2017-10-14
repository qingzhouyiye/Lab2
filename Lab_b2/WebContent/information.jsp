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
	height:160px;
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
<div id="nav">
<h3 align = "center">详细信息</h3>
</div>
<div id="section">
<table cellpadding="0" cellspacing="5" border="0">  
<tr>  
<th>ISBN</th>  
<td><s:property value="ISBN"/></td>  
</tr>  
<tr>  
<th>书名</th>  
<td><s:property value="Title"/></td> 
</tr>  
<tr>  
<th>价格</th>  
<td><s:property value="Price"/></td>  
</tr>  
<tr>  
<th>作者ID</th>  
<td><s:property value="AuthorId"/></td>  
</tr>  
<tr>  
<th>作者</th>  
<td><s:property value="Name"/></td>  
</tr> 
 
<tr>  
<th>年龄</th>  
<td><s:property value="Age"/></td>  
</tr>  
<tr>  
<th>国籍</th>  
<td><s:property value="Country"/></td>  
</tr> 
<tr>  
<th>出版商</th>  
<td><s:property value="Publisher"/></td>  
</tr> 
<tr>  
<th>出版日期</th>  
<td><s:property value="PublishDate"/></td>  
</tr>
</table> 
</div>
</body>
<div id="footer">
<a href='<s:url action="delete"><s:param name="ISBN" value="ISBN" /></s:url>'>删除</a>
<a href='<s:url action="toupdate"><s:param name="Title" value="Title" /></s:url>'>更新</a>
</div>
</html>