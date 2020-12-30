<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, java.util.Enumeration" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%!
	ArrayList<String> getParameterNames(HttpServletRequest request) {
		ArrayList<String> names = new ArrayList<String>();
		Enumeration<String> e= request.getParameterNames();
		while (e.hasMoreElements()) 
			names.add(e.nextElement());
		return names;
	}
	
	boolean isMultipleChoice(String paramName) {
		for (String m : mChoices)
			if (m.equals(paramName))
				return true;
		return false;
	}
	
	String[] mChoices = {"hobby"};
	String[] hobbyNames = {"뉴스", "맛집", "책", "영화", "여행"};
	String[] telCompany = {"010", "011", "017", "070"};
	String[] gNames = {"남", "여"};
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 22</title>
</head>
<body>
<%
	ArrayList<String> names = getParameterNames(request);
	for (String n : names) {
		if (isMultipleChoice(n)) {
			String[] hobbies = request.getParameterValues(n);
			out.println(n + " : ");
			for (String h : hobbies)
				out.println(h + "/");
			out.println("<br>");
		}
		else
			out.println(n + " : " + request.getParameter(n) + "<br>");
	}	
	out.println("<hr>");
	out.println("<h1>Processing Parameters</h1>");
	
	for (String n : names) {
		if (isMultipleChoice(n)) {
			String[] hobbies = request.getParameterValues(n);
			out.println(n + " : ");
			for (String h : hobbies)
				out.println(hobbyNames[Integer.parseInt(h)] + "/");
			out.println("<br>");
		}
		else if (n.equals("phone1")) {
			String tel = request.getParameter(n);
			out.println(n + " : " + telCompany[Integer.parseInt(tel)] + "<br>");
		}
		else if (n.equals("gender")) {
			String gen = request.getParameter(n);
			out.println(n + " : " + gNames[Integer.parseInt(gen)] + "<br>");
		}
		else
			out.println(n + " : " + request.getParameter(n) + "<br>");
	}	
%>
</body>
</html>