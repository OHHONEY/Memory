<%@ page language="java" import ="java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
			table tr td a{
				text-align: center;
				text-decoration: none;
				background-color:white;
				color: black;
			}	
			table tr td a:hover{
				text-align: center;
				text-decoration: none;
				color: white;
				background-color: black;
			}
		</style>
<title>感谢使用友情录</title>
</head>
<body>
	<h1 align="center">Thank u!</h1>
	<% request.setCharacterEncoding("UTF-8"); %>
    	<jsp:useBean id="owner" class="com.friendship.chenxi.beans.Owner" scope="session"/>
    	<jsp:setProperty name="owner" property="id" />
    	<jsp:setProperty name="owner" property="name" param="name"/>
    	<jsp:setProperty name="owner" property="password" param="password"/>
    <jsp:setProperty name="owner" property="sex" param="sex"/>
    	<jsp:setProperty name="owner" property="tel" param="telphone"/>
    	<% if(owner.getSignInResult(owner.getName(),owner.getPassword(),owner.getSex(),owner.getTel())){
    	%> 
	<h6 align="center">您已经成功注册</h6>
	<% }else {
	%> 
	<h6 align="center">注册出现失误！</h6>
	<% }
	%>
	<table align="center">
	<tr>
	<td><h5>您的ID为：</h5></td>
	<td><jsp:getProperty name="owner" property="id"/></td>
	</tr>
	</table>		
  	<table align="center">
		<tr>
			<td><a href="homepage.jsp">现在登录</a></td>
		</tr>
	</table>
</body>
</html>