<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import = "java.util.List" %>
<%@ page import = "com.javaex.dao.PhoneDao" %>
<%@ page import = "com.javaex.vo.PersonVo" %>

<%
	//http://localhost:8088/phonebook1/insert.jsp?name=김서영&hp=010-7777-7777&company=02-7777-7777
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	PersonVo personVo = new PersonVo(name, hp, company);
	
	PhoneDao phoneDao = new PhoneDao();
	/* 저장 */
	phoneDao.personInsert(personVo);
	
	/* 리스트 */
	//List<PersonVo> personList = phoneDao.getPersonList();
	
	response.sendRedirect("./list.jsp");
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>