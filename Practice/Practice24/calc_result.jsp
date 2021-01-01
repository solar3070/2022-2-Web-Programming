<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!
	int calc(String n1, String n2, String op) {
		int num1 = Integer.parseInt(n1);
		int num2 = Integer.parseInt(n2);

		if (op.equals("+"))
			return num1 + num2;
		else if (op.equals("-"))
			return num1 - num2;
		else if (op.equals("*"))
			return num1 * num2;
		else
			return num1 / num2;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator_result</title>
<style>
table {
	margin: 0 auto;
	width: 550px;
	height: 500px;
}
td, th {
	border: 1px solid #E8E8E8;
}
th {
	height: 70px;
	background-color: #32CCFE;
}
h1 {
	font-size: 50px;
	font-style: italic;
	margin: 0;
}
td {
	width: 300px;
	text-align: center;
}
img {
	width: 300px;
}
</style>
</head>
<body>
	<form method="post" action="calc_result.jsp">
		<table>
			<tr>
				<th colspan="2"><h1>CalCuLaTor</h1></th>
			</tr>
			<tr>
				<td><img src="image/cal.jpg"></td>
				<td>
					<%
						String n1 = request.getParameter("num1");
						String n2 = request.getParameter("num2");
						String op = request.getParameter("op");
						int result = calc(n1, n2, op);
						
						out.println("<input style='text-align:center' type='text' value=" + n1 + " readonly><br><br>");
						out.println(request.getParameter("op") + "<br><br>");
						out.println("<input style='text-align:center' type='text' value=" + n2 + " readonly><br><br>");
						out.println("=<br><br>");
						out.println("<input style='text-align:center' type='text' value=" + result + " readonly>");
					%>
				</td>
			</tr>
			<tr>
				<th colspan="2">&nbsp;</th>
			</tr>
		</table>
	</form>
</body>
</html>