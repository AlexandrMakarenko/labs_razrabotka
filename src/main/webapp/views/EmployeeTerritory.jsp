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
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script defer src="${pageContext.request.contextPath}/js/jquery-3.7.1.min.js"></script>
<script defer src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
<head>
<title>Представители\Территории</title>
</head>
<body>
	<header>
		<jsp:include page="/views/header.jsp"/>
	</header>
	
	<main>
		<div class="row justify-content-start" >
			<div class="col-8 border bg-light px-4">
				<a href="/labs_razrabotka/index.jsp">Вернуться</a>
				<h3>Список Представители\Территории</h3>
				<table class="table">
					<thead>
						<th scope="col">Идентификатор представителя</th>
						<th scope="col">Идентификатор территории</th>
					</thead>
					<tbody>
						<c:forEach var="employee_territorie" items="${employee_territories}">
							<tr>
								<td>${employee_territorie.getEmployeeId()}</td>
								<td>${employee_territorie.getTerritoryId()}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="col-4 border px-4">
				 <form method="POST" action="">
					 <h3>Новая запись Представители\Территории</h3>
					 <div class="mb-3">
				 		 <label for="inputRegionId" class="col-sm-3 col-form-label">Идентификатор представителя</label>
						 <div class="col-sm-6">
						 	<select name="role" class="form-control">
							 <option>Выберите представителя</option>
								 <c:forEach var="employee" items="${employees}">
									 <option value="${employee}">
									 	<c:out value="${employee.getLastName()} ${employee.getFirstName()} ${employee.getSecondName()}"></c:out>
									 </option>
								 </c:forEach>
							 </select>

						 </div>
					 </div>
					 <div class="mb-3">
				 		 <label for="inputRegionId" class="col-sm-3 col-form-label">Идентификатор территории</label>
						 <div class="col-sm-6">
						 	<select name="role" class="form-control">
							 <option>Выберите территорию</option>
								 <c:forEach var="territorie" items="${territories}">
									 <option value="${territorie}">
									 	<c:out value="${territorie.getDescription()}"></c:out>
									 </option>
								 </c:forEach>
							 </select>

						 </div>
					 </div>
					 <p>
					 <br> <br> <br>
					 <button type="submit" class="btn btn-primary">Добавить</button>
						 <br>
					 </p>
				 </form>
			 </div>
									 
		</div>
	</main>
	
	<footer>
		<jsp:include page="/views/footer.jsp"/>
	</footer>
</body>
</html>