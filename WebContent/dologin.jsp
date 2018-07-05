<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="myUsers" class="com.may.User" scope="page"></jsp:useBean>
<h1>setProperty动作元素</h1>
<hr>

<!--jsp:setProperty property="*" name="myUsers"/-->
<!-- 关联表单来给对象myUser所有的属性进行匹配 -->
<!--<jsp:setProperty property="username" name="myUsers"/>--><!-- 关联表单对myUser选定的属性"username"进行匹配 -->
<jsp:setProperty property="password" name="myUsers"/>
用户名：<jsp:getProperty property="username" name="myUsers"/><br>
密码：<jsp:getProperty property="password" name="myUsers"/><br>
<%--a href=testScope.jsp>测试scope的作用域</a--%><!-- 超链接相当于一次请求重定向，就是另外一次请求 -->
<% request.getRequestDispatcher("testScope.jsp").forward(request, response); %><!-- 请求转发就是一次请求 -->
</body>
</html>