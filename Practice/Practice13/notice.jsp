<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>오류 메시지</title>
<style>
img {
	display: block;
	margin: auto;
}
table {
	margin: 0 auto;
}
th {
	background-color: #F8D4B4;
	width: 600px;
	height: 40px;
}
td {
	background-color: #FFEFD5;
	height: 300px;
	text-align: center;
}
</style>
</head>
<body>
	<img src="../../image/eclass_title.jpg">
	<form>
		<table>
			<tr>
				<th>오류가 발생했습니다</th>
			</tr>
			<tr>
				<td>
					<img src="../../image/flower.gif">
					<p><b>오류 발생시간: <%=new java.util.Date() %></b>
					<p><b>최대한 빨리 조치하겠습니다.</b>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>