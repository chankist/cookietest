<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인
</title>
</head>
<body>
	<%
		String saveId = "";
		Cookie[] cookies = request.getCookies();
	
		if(cookies != null) {
			for(Cookie cookie : cookies) {
				if(cookie.getName().equals("cid")) {
					saveId = cookie.getValue();
					break;
				}
			}
		}
	
	%>
	
	<h2>회원 로그인</h2>
	<hr>
	<form action="cookieloginok.jsp">
		아이디 : <input type="text" name="memberId" value="<%=saveId%>"><br><br>
		비밀번호 : <input type="password" name="memberPw"><br><br>
		<input type="checkbox" name="savecheck" value="yes"
		<%= saveId.equals("")? "": "checked"%>
		>아이디 저장<br><br>
		
		<input type="submit" value="로그인">
	
	</form>
</body>
</html>