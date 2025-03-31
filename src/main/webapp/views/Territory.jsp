<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page import="domain.Territory"%>
<%
Territory t1 = new Territory(1l, 1l, "Описание 1l");
Territory t2 = new Territory(2l, 2l, "Описание 2l");
Territory t3 = new Territory(3l, 3l, "Описание 3l");
Territory t4 = new Territory(4l, 2l, "Описание 4l");
Territory[] territories = new Territory[]{t1,t2,t3,t4};
int length_territory = territories.length;
pageContext.setAttribute("territories", territories);
%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<head>
<title>Территории</title>
</head>
<body>

</body>
</html>