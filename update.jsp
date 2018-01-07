<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UPDATE THE LIST OF YOUR FRIENDS</title>
<style type="text/css">
			table tr td a{
				text-align: center;
				text-decoration: none;
				background-color:white;
				color: pink;
			}	
			table tr td a:hover{
				text-align: center;
				text-decoration: none;
				color: white;
				background-color: pink;
			}
	</style>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
	<!-- 用于显示用户信息 -->
    	<jsp:useBean id="owner" class="com.friendship.chenxi.beans.Owner" scope="session"/>
    	<%
    	int user_id = owner.getId();
    	String name = owner.getName(); 	
    	%>
 <div id="container" style="width: 100%;height: 100%;background-image: url(img/粉色花瓣.gif);">	
	
	<!-- 用户栏 -->		
	<div id="header" style="text-align: center;height: 23px;">
		<font color="lightpink" face="bodoni mt" size="3"> 
			<%=name %>的友情录
		</font>
	</div>
	
	<div style="text-align: center;height: 23px;"></div>
	
	<!-- 采集更新信息 -->
	<div id="update" style="text-align: center;" >
		
		<font color="pink" size="2">请输入您要更新的朋友姓名：</font>
		
		<form action="updateResult.jsp"  method="post">
			<table align="center">
				<tr>
					<td><input type="text" name="friendName"></td>
				</tr>
				<tr>
					<td><font color="pink" size="2">请输入您要更新的朋友性别：</font></td>
				</tr>
				<tr>
					<td><input type="text" name="friendSex"></td>
				</tr>
				<tr>
					<td><font color="pink" size="2">请输入您要更新的朋友关系：</font></td>
				</tr>
				<tr>
					<td><input type="text" name="relation"></td>
				</tr>
				<tr height="23px">
				<tr>
					<td>	<input type="submit" value="请求更新"></td>
				</tr>
			</table>			
		</form>
	</div>
			
</div>		 	

</body>
</html>