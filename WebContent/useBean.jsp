<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>index.jsp</title>
</head>
<body>
<jsp:useBean id="myUser" class="com.may.User" scope="page"></jsp:useBean><!-- 如果不写scope，那么默认是page -->
<h1>使用useBean创造javabean的实例</h1>
用户名：<%=myUser.getUsername()%><br><!-- 注意user用户在脚本中定义了，那么后面也可以用到这个user对象 -->
密码：<%=myUser.getPassword() %><br>
</body>
</html>