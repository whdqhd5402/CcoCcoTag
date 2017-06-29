<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="/favicon.ico" />
</head>
<body>

	<a href="cookie_form.jsp">쿠키생성</a>
	<hr />

	<a href="remove_id.jsp">remove id</a> |
	<a href="remove_name.jsp">remove name</a> | 
	<a href="remove_level.jsp">remove level</a> | 
	<a href="remove_all.jsp">remove all</a>
	<hr />

	[생성 쿠키 리스트]
	<%
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie c : cookies) {
				if (!c.getName().equals("JSESSIONID")) {
					out.println("쿠키이름 : " + c.getName() + "<br/>");
					out.println("쿠키 값 : " + URLDecoder.decode(c.getValue(), "UTF-8") + "<br/><hr>");
				}
			}
		}
	%>

</body>
</html>