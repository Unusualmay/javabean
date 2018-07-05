<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="com.may.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>index.jsp</title>
</head>
<body>
<%
	User user = new User();
	user.setUsername("admin");
	user.setPassword("admin");
%>
<h1>使用普通方式创造javabean的实例</h1>
用户名：<%=user.getUsername()%><br><!-- 注意user用户在脚本中定义了，那么后面也可以用到这个user对象 -->
密码：<%=user.getPassword() %><br>
</body>
</html>