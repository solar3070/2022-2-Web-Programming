<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이클래스 로그인</title>
<style>
div {
	text-align: center;
}
table {
	margin: 0 auto;
	width: 720px;
}
.id_pw {
	width: 100px;
}
.userInput {
	background-color: #FFFF99;
}
</style>
</head>
<body>
	<div>
		<img src="../image/eclass_title.jpg">
		<h2>로그인</h2>
	</div>
	<hr>
	<form name="frm1" method="POST" action="result.jsp">
		<table>
			<tr>
				<th rowspan="5">
					<img src="../image/eclass_logo.png">
				</th>
				<td colspan="2">
					<b>회원님의 아이디와 비밀번호를 정확히 입력하세요.</b>
				</td>
			</tr>
			<tr>
				<td class="short">&nbsp;</td>
				<td>
					<select name="type">
						<option value="학부생" selected>학부생</option>
						<option value="대학원생">대학원생</option>
						<option value="교직원">교직원</option>
					</select>
				</td>
			</tr>
			<tr>
				<td class="id_pw">
					<b>아이디</b>
				</td>
				<td>
					<input type="text" size="20" maxlength="20" class="userInput" name="strID">
				</td>
			</tr>
			<tr>
				<td class="id_pw">
					<b>비밀번호</b>
				</td>
				<td>
					<input type="password" size="20" maxlength="20" class="userInput" name="strPWD">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="로그인">
					<input type="button" value="가입하기" onclick="document.location='member2.html'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>