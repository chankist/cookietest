<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 확인</title>
</head>
<body>
<!--
	<%
//		Cookie cookie0 = new Cookie("testCookie", "test!!");
//		response.addCookie(cookie0);
	%>
	 -->
	 
	<%
		//저장된 쿠키 확인하기
		Cookie[] cookies = request.getCookies();
	
		if(cookies != null) {//true->내 서버에 재방문한 클라이언트임 -> 반드시 확인 필요!
			//for(Cookie cookie:cookies)
			for(int i=0;i<cookies.length;i++) {
				out.println(cookies[i].getName()+"<br>");//쿠키의 이름 추출
				out.println(cookies[i].getValue()+"<br>");//쿠키의 값 추출
				out.println("=========================="+"<br>" );
			} 
		} else {//쿠키 없는 클라이언트
				out.println("첫 방문이시군요! 저장된 쿠키가 없습니다.");
			}
			
		
	%>
</body>
</html>