<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();

	for (Cookie c : cookies) {
		if (c.getName().equals("user_name")) {
			c.setMaxAge(0);
			response.addCookie(c);
		}
	}
	response.sendRedirect("cookie_status.jsp");
%>