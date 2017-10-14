<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<title>1150310410李志强</title>
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

<div id="nav">
	<h3 align = "center">图书信息</h3>
</div>
<form action="update">
<div id="section">
<table cellpadding="0" cellspacing="5" border="0">
	<tr>
        <th>书名</th>
        <td><input type="text" name="Title" value= <s:property value="Title"/>  readonly="readonly" /></td>
    </tr>
    <tr>
        <th>作者ID</th>
        <td><input type="text" name="AuthorId"/></td>
    </tr>
    <tr>
        <th>价格</th>
        <td><input type="text" name="Price"/></td>
    </tr>
    <tr>
        <th>出版商</th>
        <td><input type="text" name="Publisher"/></td>
    </tr>
    <tr>
        <th>出版日期</th>
        <td><input type="text" name="PublishDate"/></td>
    </tr>
</table>
</div>
<div id="footer">
	<input type="submit" name="更新">
</div>
</form>
</body>
</html>