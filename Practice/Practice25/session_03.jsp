<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Object: 03</title>
</head>
<body>
<%
	long second = (session.getLastAccessedTime() - session.getCreationTime()) / 1000;
	out.println("세션이 생성된 후 " + second + "초가 지났습니다.");
%>
</body>
</html>