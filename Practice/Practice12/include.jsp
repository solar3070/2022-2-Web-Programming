<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 12</title>
</head>
<body>
	<div align="center">
		<h2>include 지시어 테스트</h2>
		<hr>
		<table>
			<tr>
				<td><%@ include file="calendar.jsp" %></td>
				<td width="20">&nbsp;</td>
				<td><%@ include file="news.jsp" %></td>
			</tr>
		</table>
	</div>
</body>
</html>