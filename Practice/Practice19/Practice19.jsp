<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar" %>
<%! 
	public String parseDay(int cnt, String day) {
		if (cnt % 7 == 0)
			return "<font color='red'>" + day+ "</font>";
		else if (cnt % 7 == 6)
			return "<font color='blue'>" + day + "</font>";
		else
			return day;		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 19</title>
<style>
table {
	border-collapse: collapse;
}
td, th {
	text-align: center;
	width: 80px;
	height: 30px;
	border: 1px solid black;
}
caption {
	text-align: right;
	font-weight: bold;
}
</style>
</head>
<body>
<%
	Calendar today = Calendar.getInstance();
	int year = today.get(Calendar.YEAR);
	int month = today.get(Calendar.MONTH);
	int date = today.get(Calendar.DATE);
	
	Calendar cal = Calendar.getInstance();
	cal.set(year, month, 1);
	int s_day = cal.get(Calendar.DAY_OF_WEEK);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	String[] day = {"일", "월", "화", "수", "목", "금", "토"};
	int cnt = 0;
	
	out.println("<div align='center'>");
	out.println("<table><tr>");
	out.println("<caption>" + year + "-" + (month+1) + "-" + date + "<caption><br>");
	for (int i = 0; i < day.length; i++) {
		out.println("<th>" + parseDay(cnt, day[i]) + "</th>");
		cnt++;
	}
	out.println("</tr>");
	
	out.println("<tr>");
	for (int i = 1; i < s_day; i++) {
		out.println("<td>&nbsp;</td>");
		cnt++;
	}
	for (int i = 1; i <= end; i++) {
		out.println("<td>" + parseDay(cnt, Integer.toString(i)) + "</td>");
		if (cnt % 7 == 6) {
			out.println("</tr>");
			out.println("<tr>");
		}
		cnt++;
	}
	while (cnt % 7 != 6) {
		out.println("<td>&nbsp;</td>");
		cnt++;
	}
	out.println("<td>&nbsp;</td>");
	out.println("</tr>");
	out.println("</table>");
	out.println("</div>");
%>
</body>
</html>