<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
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
					<input style="text-align:center" type="text" value="0" name="num1"><br><br>
					<select name="op">
						<option value="+" selected>+
						<option value="-">-
						<option value="*">*
						<option value="/">/
					</select><br><br>
					<input style="text-align:center" type="text" value="0"  name="num2"><br><br>
					<input type="submit" value="="><br><br>
					<input type="text" disabled>
				</td>
			</tr>
			<tr>
				<th colspan="2">&nbsp;</th>
			</tr>
		</table>
	</form>
</body>
</html>