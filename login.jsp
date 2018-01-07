<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>welcome to friendship！</title>
</head>
<body>
		<h1 align="center">Sign In</h1>
		<p align="center"><bdo dir="ltr">welcome to friendship！</bdo></p>
		<hr />
		<form action="thanks.jsp" method="post">
			<table align="center">
				<tr>
					<td align="left">name:</td>
					<td><input type="text" name="name" /></td>
				</tr>
				<tr>
					<td align="left">password:</td>
					<td>
						<input type="password" name="password"/>
					</td>
				</tr>
				<tr>
					<td align="left">sex:</td>
					<td>
						<input type="radio" name="sex" value="M"checked="checked"/>Man
						<input type="radio" name="sex" value="F"/>Woman
					</td>
				</tr>
				<tr>
					<td align="left">telephone:</td>
					<td>
						<input type="text" name="telphone"/>
					</td>
				</tr>
				<tr height="30ps"><td></td><td></td></tr>				
				<tr align="center">
					<td colspan="2">
						<input type="submit" name="submit" id="submit" value="确认注册" />
					</td>					
				</tr>
			</table>
			
		</form>
	</body>
</html>