<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page import="domain.EmployeeTerritory"%>
<%
EmployeeTerritory et1 = new EmployeeTerritory(1l, 1l);
EmployeeTerritory et2 = new EmployeeTerritory(2l, 2l);
EmployeeTerritory et3 = new EmployeeTerritory(3l, 3l);
EmployeeTerritory et4 = new EmployeeTerritory(4l, 2l);
EmployeeTerritory et5 = new EmployeeTerritory(5l, 2l);
EmployeeTerritory[] employee_territories = new EmployeeTerritory[]{et1,et2,et3,et4,et5};
int length_employee_territory = employee_territories.length;
pageContext.setAttribute("employee_territories", employee_territories);
%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<head>
<title>Представители\Территории</title>
</head>
<body>

</body>
</html>