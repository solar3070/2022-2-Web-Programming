<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Practice 11</title>
<style>
td {
	width: 100px;
	padding: 10px;
}
</style>
</head>
<body>
	<%
		int n = 2;

		out.println("<div align='center'>");
		out.println("<h1>구구단 출력</h1>");
		out.println("<hr>");

		out.println("<table border='1'>");
		for (int i = 0; i < 2; i++) {
			out.println("<tr>");
			for (int j = 0; j < 4; j++) {
				out.println("<td>");
				for (int k = 1; k <= 9; k++)
					out.println(n + " * " + k + " = " + (n * k) + "<br>");
				out.println("</td>");
				n++;
			}
			out.println("</tr>");
		}
		out.println("</table>");
		out.println("</div>");
	%>
</body>
</html>