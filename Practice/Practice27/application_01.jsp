<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application Object: 01</title>
</head>
<body>
	<form method="post" action="application_02.jsp">
		<table>
			<tr>
				<td>아이디 : </td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>원하는 세션 지속시간(분) : </td>
				<td><input type="text" name="min"></td>
			</tr>
		</table><br>
		<input type="submit" value="로그인">
		<input type="reset" value="취소">
	</form>
</body>
</html>