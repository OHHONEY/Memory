<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>THE RESULT OF UPDATE</title>
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
    	<jsp:useBean id="friend" class="com.friendship.chenxi.beans.Friend" scope="request"/>
    	
    	<%
    	int user_id = owner.getId();
    	String name = owner.getName(); 
    	String friendName = request.getParameter("friendName");
    	String friendSex = request.getParameter("friendSex");
    	String relation = request.getParameter("relation");
    	%>
    	<%
    	if(friend.update(user_id,friendName,friendSex,relation)){
    	%>   	<p align="center">更新完成</p>
    	<% } else{
    	%> <p>更新失败</p>
    <% } %>
    <p align="center"><a href="homepage.jsp">GO BACK TO FRIENDSHIP</a></p>
</body>
</html>