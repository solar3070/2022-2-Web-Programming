<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
<%
	int year = 2016;
	int month = 11;
	
	out.println("<h2>" + year + "년 " + month + "월</h2><hr>");

	Calendar cal = Calendar.getInstance();
	cal.set(year, month - 1, 1);
	int s_day = cal.get(Calendar.DAY_OF_WEEK);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	
	for (int i = 1; i < s_day; i++)
		out.println("&nbsp&nbsp&nbsp&nbsp&nbsp");
	
	int lf = s_day;
	for (int i = 1; i <= end; i++) {
		out.println(i + "&nbsp&nbsp&nbsp");
		if (lf % 7 == 0)
			out.println("<br>");
		lf++;
	}
%>
</body>
</html>