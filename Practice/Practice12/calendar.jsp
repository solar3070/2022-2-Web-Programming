<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
<style>
#calendar {
	border-collapse: collapse;
	border: 1px double black;
}
.cell {
	text-align: center;
	width: 30px;
	height: 30px;
	border: 1px double black;
}
</style>
</head>
<body>
	<%
		String[] week = { "<font color=\"red\">일</font>", "월", "화", "수", "목", "금",
				"<font color=\"blue\">토</font>" };

		out.println("<div align=\"center\">");
		out.println("<table id='calendar'>");
		out.println("<tr>");
		for (int i = 0; i < 7; i++)
			out.println("<td class='cell'>" + week[i] + "</td>");
		out.println("</tr>");

		for (int i = 0; i < 4; i++) {
			out.println("<tr>");
			for (int j = 0; j < 7; j++)
				out.println("<td class='cell'> &nbsp; </td>");
			out.println("</tr>");
		}
		out.println("</table>");
		out.println("</div>");
	%>
</body>
</html>