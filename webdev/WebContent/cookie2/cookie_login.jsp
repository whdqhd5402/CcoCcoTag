<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
	String save_id = "";
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (Cookie c : cookies) {
			if (c.getName().equals("save_id")) {
				save_id = c.getValue();
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="/favicon.ico" />
</head>
<body>
	<form name="login_form" action="login_action.jsp" method="post">
		<table>
			<caption>로그인</caption>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="user_id" value=<%=save_id%>>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="user_pw" />
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="checkbox"
					name="save_id" value="checked"
					<%=!save_id.equals("") ? "checked='checked'" : ""%> />아이디 저장</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="로그인"></td>
			</tr>
		</table>
	</form>

</body>
</html>