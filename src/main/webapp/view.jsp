<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.crud.dao.BoardDAO, com.crud.bean.BoardVO"%>
<html>
<head>
    <title>View</title>
</head>
<body>

<%
    BoardDAO boardDAO = new BoardDAO();
    String id=request.getParameter("id");
    BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
%>

<h1>상세보기</h1>
<form method="get">
    <input type="hidden" name="seq" value="<%=u.getSeq() %>"/>
    <table>
        <tr><td>카테고리:</td><td><input type="text" name="category" value="<%= u.getCategory()%>" disabled/></td></tr>
        <tr><td>제목:</td><td><input type="text" name="title" value="<%= u.getTitle()%>" disabled/></td></tr>
        <tr><td>작성자:</td><td><input type="text" name="writer" value="<%= u.getWriter()%>" disabled/></td></tr>
        <tr><td>내용:</td><td><textarea cols="50" rows="5" name="content" disabled><%= u.getContent()%></textarea></td></tr>
        <tr><td colspan="2"><input type="button" value="취소" onclick="history.back()"/></td></tr>
    </table>
</form>

</body>
