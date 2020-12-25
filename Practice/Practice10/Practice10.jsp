<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Practice 10</title>
<style>
table {
	border: 1px double black;
}
td {
	font-weight: bold;
	text-align: center;
	width: 80px;
	height: 30px;
	border: 1px double black;
}
</style>
</head>
<body>
	<%
		String[] week = {"<font color=\"red\">일</font>", "월", "화", "수", "목", "금", "<font color=\"blue\">토</font>"};
	
		out.println("<div align=\"center\">");
		out.println("<table>");
		out.println("<tr>");
		for (int i = 0; i < 7; i++)
			out.println("<td>" + week[i] + "</td>");
		out.println("</tr>");
		
		for (int i = 0; i < 4; i++) {
			out.println("<tr>");
			for (int j = 0; j < 7; j++)
				out.println("<td> &nbsp; </td>");
			out.println("</tr>");
		}
		out.println("</table>");
		out.println("</div>");
	%>
</body>
</html>