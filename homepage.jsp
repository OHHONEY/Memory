<%@ page language="java" import ="com.friendship.chenxi.beans.Friend,java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
div div table tr td a{
	text-align: center;
	text-decoration: none;
	background-color:white;
	color: pink;
}
div div table tr td a:hover{
	text-align: center;
	text-decoration: none;
	color: white;
	background-color: pink;
}
</style>
<title>这是您的友情录</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8"); %>
	<!-- 用于记录登录信息 -->
    	<jsp:useBean id="owner" class="com.friendship.chenxi.beans.Owner" scope="session"/>
    	<!-- 显示用户的朋友记录条 -->
    	<jsp:useBean id="friends" class="com.friendship.chenxi.beans.Friend" scope="session"/>
    	<%
    	int user_id = owner.getId();
    	String name = owner.getName(); 	
    	%>
    	<%! 	List<Friend> friend;   %>
    <div id="container" style="width: 100%;height: 100%;background-image: url(img/粉色花瓣.gif);">	
			
			<div id="header" style="text-align: left;height: 23px;text-indent: 23px;">
				<font color="lightpink" face="bodoni mt" size="3"> 
				<%=name %>的友情录
				</font>
			</div>
			<div id="friends" style="background-color: white;" >
				<p style="text-align:center;letter-spacing:3px;">
					<font color="pink" face="century gothic" size="1">
						这是你来到friendship的第一天，不知道它将会陪你多少天，
						设计这个网站的原因是我担心时光太匆忙，我觉着在将要到来的某一天
						我会离开我可爱的朋友们，过去以及将来她们于我就像花儿与花园，
						有她们在生活里安静的盛开，我的生活才会有丰富多彩。 
					</font>					
				</p>
			</div>
			<!-- 添加新朋友 -->
			<div id="addFriend" >
			<form action="addFriend.jsp" method="post">
			<table align="center">
			<tr>
			<td><input type="text" name="name"></td>
			<td><input type="text" name="sex"></td>
			<td><input type="text" name="relation"></td>
			<td><input type="submit" name="submit" id="submit" value="确认添加" /></td>
			</tr>
			</table>
			</form>
			</div>
			
			<!-- 显示本次登录ID的所有朋友信息 -->
			<div id = "listFriend" style="text-align: center;">
				<div style="height: 50px;"></div>
				<table align="center">
				<% friend = friends.getFriend(user_id); %>
				<% for(int i = 0;i<friend.size();i++){
				%>					
				<tr>
				<td><%=friend.get(i).getName() %></td>
				<td><%=friend.get(i).getSex() %></td>
				<td><%=friend.get(i).getRelation() %></td>				
				</tr>				
				<% } %>					
				</table>								
			</div>
			
			<!-- 选择删除或者更新朋友记录信息 -->
			<div  id="other" style="text-align: center;">
			<font color="lightpink" face="bodoni mt" size="3"> 
				您可以选择删除或者更新您的好友信息
			</font>
			<table align="center">
			<tr>
			<td><a href="update.jsp">更新</a></td>
			<td><a href="deleteFriend.jsp">删除</a></td>
			</tr>
			</table>
			</div>
			
			<!-- 处理删除信息 -->
			 	
	</div>		 	
</body>
</html>