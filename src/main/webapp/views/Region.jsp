<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page import="domain.Region"%>
<%
Region r1 = new Region(1l, "Описание региона 1");
Region r2 = new Region(2l, "Описание региона 2");
Region r3 = new Region(3l, "Описание региона 3");
Region[] regions = new Region[]{r1,r2,r3};
int length_region = regions.length;
pageContext.setAttribute("regions", regions);
%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<head>
<title>Регионы</title>
</head>
<body>

</body>
</html>