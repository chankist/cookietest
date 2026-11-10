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
		
		String savecheck = request.getParameter("savecheck");
		//checkbox에서 체크되어 있는 상태로 본 페이지로 이동되면 saveId="yes"가 됨
		//체크하지 않은 상태로 넘어모면 saveId=null값임
		
		if(mid.equals("tiger") && mpw.equals("12345")) {
				session.setAttribute("sid", mid);
			if(savecheck != null) {
				Cookie cookie1 = new Cookie("cid", mid);//아이디 쿠키 저장
				
				//쿠키 만든 후에 반드시 크라이언트의 웹브라우저에 전송을 해야함!
				response.addCookie(cookie1);//서버에서 클라이언트 퉵브라우저로 아이디 쿠키 보내기
			}
			
			response.sendRedirect("loginsuccess.jps");
			
		} 
			
	%>
	
	<a href="cookie.jsp">쿠키확인</a>
</body>
</html>