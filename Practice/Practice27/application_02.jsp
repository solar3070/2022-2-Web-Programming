<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application Object: 02</title>
</head>
<body>
<% 	
	out.println(request.getParameter("id") + "님 환영합니다.<br><br>");

	String min = request.getParameter("min");
	if (min.equals("") == false) {
		int second = Integer.parseInt(min) * 60;
		session.setMaxInactiveInterval(second);
	}
	
	out.println("세션 ID : " + session.getId() + "<br>");
	out.println("세션 지속시간 : " + session.getMaxInactiveInterval() + "초<br><br>");

	Integer count = (Integer)application.getAttribute("count");
	if (count == null) {
		Integer first = 0;
		count = first;
	}
	count++;
	application.setAttribute("count", count);
	
	out.println("오늘의 접속자 수 : " + count);	
%>
</body>
</html>