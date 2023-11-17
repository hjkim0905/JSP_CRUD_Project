<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>게시글 추가</h1>
<form action="addpost.jsp" method="post">
<table>
    <tr><td>카테고리:</td><td><input type="text" name="category"/></td></tr>
    <tr><td>제목:</td><td><input type="text" name="title"/></td></tr>
    <tr><td>작성자:</td><td><input type="text" name="writer"/></td></tr>
    <tr><td>내용:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
    <tr><td><a href="posts.jsp">View All Records</a></td><td align="right"><input type="submit" value="Add Post"/></td></tr>
</table>
</form>

</body>
</html>