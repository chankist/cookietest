<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String closeToday = request.getParameter("onlyToday");
		//유저가 오늘 하루 보지않기 체큽작스 체크 여부 불러오기
		
		if(closeToday != null) {//true-> 유저가 체크박스에 체크를 한 상태로 닫기 버튼 클릭
			Cookie cookie = new Cookie("hidePopup", "yes");
		
		//24시간 동안 쿠키를 유지되도록 설정한 후 보내기
		cookie.setMaxAge(60*60*24);
		
		response.addCookie(cookie);
			
		}
		
		response.sendRedirect("popup.jsp");
	%>
</body>
</html>