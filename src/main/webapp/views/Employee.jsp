<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="cс" %>
<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>
<%@ page import="domain.Employee"%>
<%
SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
Date date = format.parse("2000-01-01");
Employee e1 = new Employee(1l, "Иванов", "Иван", "Иванович", "Тайтл, какой-то текст", date, "Адрес Иванова г.Москва", "Москва", "Москва и Московская область", "89999999999", "email_ivanov_mail@yandex.com");
Employee e2 = new Employee(2l, "Петров", "Николай", "Валентинович", "Тайтл, какой-то текст", date, "Адрес Петрова г.Ростов-на-Дону", "Ростов-на-Дону", "Ростовская область", "89999555999", "email_petrov_forever_mail@yandex.com");
Employee e3 = new Employee(3l, "Семенов", "Александр", "Иванович", "Тайтл, какой-то текст", date, "Адрес Семенова г.Азов", "Азов", "Ростовская область", "83339999999", "email_semen_off_mail@yandex.com");
Employee e4 = new Employee(4l, "Банально", "Иван", "Сергеевич", "Тайтл, какой-то текст", date, "Адрес Банально г.Аксай", "Аксай", "Ростовская область", "84449999999", "email_banalno_do_ugasa_mail@yandex.com");
Employee[] employees = new Employee[]{e1,e2,e3,e4};
int length_employee = employees.length;
pageContext.setAttribute("employees", employees);
%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="css/style.css">
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<head>
<title>Представители</title>
</head>
<body>

</body>
</html>