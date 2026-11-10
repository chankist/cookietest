<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
	<%	
		String recent = "";	
	
		Cookie[] cookies = request.getCookies();
	
		if(cookies !=null) {
			for(Cookie cookie:cookies) {
				if(cookie.getName().equals("recentProduct")) {
					recent = cookie.getValue();
				}
			}
		}
		
	%>

	<h2>상품 목록</h2>
	<hr>
	<form action="productView.jsp">
		<select name="productId">
			<option value="notebook">노트북</option>
			<option value="mouse">마우스</option>
			<option value="keyboard">키보드</option>
			<option value="monitor">모니터</option>
		</select>
		
		<input type="submit" value="상품상세보기">		
	</form>
	<hr>
	<h2>최근 본 상품 목록</h2>
	<hr>
	<%= recent %>
</body>
</html>