<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 18</title>
</head>
<body>
<div align="center">
<h1>Include Action Practice</h1>
<hr>
<table>
	<tr>
		<td>
			<jsp:include page="calendar.jsp">
				<jsp:param value="2017" name="YEAR" />
				<jsp:param value="10" name="MONTH" />
			</jsp:include>
		</td>
		<td width="20">&nbsp;</td>
		<td>
			<jsp:include page="news.jsp">
				<jsp:param value="Homework" name="TASK2" />
			</jsp:include>
		</td>
	</tr>
</table>
</div>
</body>
</html>