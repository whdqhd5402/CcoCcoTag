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
당신이 입력한 정보입니다(고전방식)<hr>
아이디 : <%=request.getParameter("id") %> <br/>
비밀번호 : <%=request.getParameter("pwd") %> <br/>

당신이 입력한 정보입니다(EL방식)<hr>
아이디 : ${param.id }<br/>
비밀번호 : ${param.pwd }<br/>

<!-- EL 에서는 == 의 기호가 .equals 와 같이 동작  -->
</body>
</html>