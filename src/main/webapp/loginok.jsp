<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인
</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String mid = request.getParameter("memberId");
		String mpw = request.getParameter("memberPw");
		
		if(mid.equals("tiger") && mpw.equals("12345")) {
			
			session.setAttribute("sid", mid);
			
			//쿠키는 내장 객체가 아니다!
			Cookie cookie1 = new Cookie("cid", mid);//아이디 쿠키 저장
			Cookie cookie2 = new Cookie("cpw", mpw);//비밀번호 쿠키 저장
			
			//쿠키 유효시간 설정
			cookie1.setMaxAge(60*60*24);//초단위
			//쿠키 유효시간 설정하지 않으면 세션과 유효시간 동일->웹브라우저를 모두 닫으면 쿠키 삭제됨
			
			//쿠키 만든 후에 반드시 크라이언트의 웹브라우저에 전송을 해야함!
			response.addCookie(cookie1);//서버에서 클라이언트 퉵브라우저로 아이디 쿠키 보내기
			response.addCookie(cookie2);//서버에서 클라이언트 퉵브라우저로 비밀번호 쿠키 보내기
			
			cookie1.setMaxAge(0);//쿠키 삭제
			response.addCookie(cookie1);//0으로 쿠키 유효시간을 설정한후 다시 보내기
;		} 
			
	%>
	
	<a href="cookie.jsp">쿠키확인</a>
</body>
</html>