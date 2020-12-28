<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice14</title>
</head>
<body>
<%
	Calendar cal = Calendar.getInstance(); 
	int year = cal.get(Calendar.YEAR); 
	int month = cal.get(Calendar.MONTH);
	int date = cal.get(Calendar.DATE); 
	int day = cal.get(Calendar.DAY_OF_WEEK);
	String[] str = {"일", "월", "화", "수", "목", "금", "토"};
	
	out.println("오늘은 " + year + "년 " + (month+1) + "월 " + date + "일 " + str[day-1] + "요일입니다.<br><br>");
	
	int start = cal.getMinimum(Calendar.DATE);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	
	out.println("이번 달은 " + start + "일부터 시작하여 " + end + "일에 끝납니다.<br><br>");
	
	cal.set(1997, Calendar.SEPTEMBER, 27);
	year = cal.get(Calendar.YEAR); 
	month = cal.get(Calendar.MONTH);
	date = cal.get(Calendar.DATE); 
	day = cal.get(Calendar.DAY_OF_WEEK);
	
	out.println("내 생일 " + year + "년 " + (month+1) + "월 " + date + "일은 " + str[day-1] + "요일입니다.");
%>
</body>
</html>