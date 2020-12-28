<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar</title>
</head>
<body>

<%
	String YEAR = request.getParameter("YEAR");
	String MONTH = request.getParameter("MONTH");
	int year;
	int month;
	
	Calendar cal = Calendar.getInstance();
	
	if (YEAR != null && MONTH != null) {
		year = Integer.parseInt(YEAR);
		month = Integer.parseInt(MONTH);
		
		cal.set(year, month - 1, 1);
	}
	year = cal.get(Calendar.YEAR);
	month = cal.get(Calendar.MONTH);
	int s_day = cal.get(Calendar.DAY_OF_WEEK);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	
	out.println("<h2>" + year  + "년 " + (month+1) + "월</h2><hr>");
	
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