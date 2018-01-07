<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	<!-- 用于记录登录信息 -->
    	<jsp:useBean id="owner" class="com.friendship.chenxi.beans.Owner" scope="session"/>
    	<%
    	String name = owner.getName();
    	%> 
    	<div id="container" style="width: 100%;height: 100%;background-image: url(img/粉色花瓣.gif);">	
			
			<div id="header" style="text-align: center;height: 23px;">
				<font color="lightpink" face="bodoni mt" size="3"> 
				<%=name %>的友情录
				</font>
			</div>
			<div id="header" style="text-align: center;">
				<form action="deleteRetsult.jsp" method="post">
					<table align="center">
						<tr>
							<td><font color="pink" size="2">请输入您要删除的朋友姓名：</font></td>
						</tr>
						<tr>
							<td><input type="text" name="delName"></td>
						</tr>
						<tr>
							<td><input type="submit" name="submit" id="submit" value="删除" /></td>
						</tr>
					</table>
				</form>
			</div>
			
	</div>	
	
</body>
</html>