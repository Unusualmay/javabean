<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="com.may.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>testScope.jsp</title>
</head>
<body>
<h1>Javabean的四个作用域</h1>
<jsp:useBean id="myUsers" class="com.may.User" scope="page"></jsp:useBean>
<hr>
用户名：<jsp:getProperty name="myUsers" property="username"/><br>
密码：：<jsp:getProperty name="myUsers" property="password"/><br>
<!-- 使用jsp内置对象也可以得到属性 --> 
<hr>
<%
	String username=" ";
	String password=" ";
	if(pageContext.getAttribute("myUsers") != null) {
		username=((User)pageContext.getAttribute("myUsers")).getUsername();
		password=((User)pageContext.getAttribute("myUsers")).getPassword();
	}
%>
用户名：<%=username %><br>
密码：<%=password %>
</body>
</html>