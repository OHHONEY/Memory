<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<style type="text/css">
			div div p a{
				text-align: center;
				text-decoration: none;
				background-color:white;
				color: pink;
			}	
			div div p a:hover{
				text-align: center;
				text-decoration: none;
				color: white;
				background-color: pink;
			}
	</style>
<title>
</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8"); %>
	<jsp:useBean id="owner" class="com.friendship.chenxi.beans.Owner" scope="session"/>
 	<jsp:useBean id="friends" class="com.friendship.chenxi.beans.Friend" scope="session"/>
    	<jsp:setProperty name="friends" property="name" param="name"/>
    	<jsp:setProperty name="friends" property="sex" param="sex"/>
    	<jsp:setProperty name="friends" property="relation" param="relation"/> 
    	<%
    	int user_id = owner.getId();
    	String name = owner.getName();
    	%> 
    	<div id="container" style="width: 100%;height: 100%;background-image: url(img/粉色花瓣.gif);">	
			
			<div id="header" style="text-align: center;height: 23px;">
				<font color="lightpink" face="bodoni mt" size="2"> 
				<%=name %>的友情录
				</font>
			</div>
			<div id="header" style="text-align: center;">
				 <% if(friends.addFriend(user_id,friends.getName(), friends.getSex(),friends.getRelation())){
   				 	%> 
				<h6 align="center">新朋友添加成功</h6>
				<p align="center"><a href="homepage.jsp">GO BACK TO FRIENDSHIP</a></p>
				<% }else {
					%> 
				<h6 align="center">新朋友添加失败</h6>
				<% }
				%>
			</div>
			
	</div>	
	

	
	 		

</body>
</html>