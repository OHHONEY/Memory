<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
p a{
	text-align: center;
	text-decoration: none;
	background-color:white;
	color: pink;
}
p a:hover{
	text-align: center;
	text-decoration: none;
	color: white;
	background-color: pink;
}
</style>
</head>
<body>

<% request.setCharacterEncoding("UTF-8"); %>
    	<jsp:useBean id="owner" class="com.friendship.chenxi.beans.Owner" scope="session"/>
    	<jsp:useBean id="delFriend" class="com.friendship.chenxi.beans.Friend" scope="request"/>
    	<%
    	String name = request.getParameter("delName");
    	int user_id = owner.getId();
    	String userName = owner.getName(); 
    	%>
    	<%
    	if(delFriend.delFriend(user_id, name)){
    	%>   	<p align="center">删除完成</p>
    	<% } else{
    	%> <p>删除失败</p>
    <% } %>
    <p align="center"><a href="homepage.jsp">GO BACK TO FRIENDSHIP</a></p>
</body>
</html>