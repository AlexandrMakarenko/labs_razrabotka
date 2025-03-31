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
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script defer src="${pageContext.request.contextPath}/js/jquery-3.7.1.min.js"></script>
<script defer src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
<head>
<title>Представители</title>
</head>
<body>
	<header>
		<jsp:include page="/views/header.jsp"/>
	</header>

	<main>
		<div class="row justify-content-start" >
			<div class="col-8 border bg-light px-4">
				<a href="/labs_razrabotka/index.jsp">Вернуться</a>
				<h3>Список представителей</h3>
				<table class="table">
					<thead>
						<th scope="col">Фамилия</th>
						<th scope="col">Имя</th>
						<th scope="col">Отчество</th>
						<th scope="col">Title</th>
						<th scope="col">Дата рождения</th>
						<th scope="col">Адрес</th>
						<th scope="col">Город</th>
						<th scope="col">Регион</th>
						<th scope="col">Телефон</th>
						<th scope="col">Эл. почта</th>
					</thead>
					<tbody>
						<c:forEach var="employye" items="${employees}">
							<tr>
								<td>${employye.getLastName()}</td>
								<td>${employye.getFirstName()}</td>
								<td>${employye.getSecondName()}</td>
								<td>${employye.getTitle()}</td>
								<td>${employye.getBirthDay()}</td>
								<td>${employye.getAddress()}</td>
								<td>${employye.getCity()}</td>
								<td>${employye.getRegion()}</td>
								<td>${employye.getPhone()}</td>
								<td>${employye.getEmail()}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="col-4 border px-4">
				 <form method="POST" action="">
					 <h3>Новый представитель</h3>
					 <div class="mb-3">
				 		 <br> <label for="inputLastName" class="col-sm-3 col-form-label">Фамилия</label>
						 <div class="col-sm-6">
						 	<input type="text" name="inputLastName" class="form-control" id="inputLastName" />
						 </div>
					 </div>
					 <div class="mb-3">
				 		 <label for="inputFirstName" class="col-sm-3 col-form-label">Имя</label>
						 <div class="col-sm-6">
						 	<input type="text" name="inputFirstName" class="form-control" id="inputFirstName" />
						 </div>
					 </div>
					 <div class="mb-3">
				 		 <label for="inputSecondName" class="col-sm-3 col-form-label">Отчество</label>
						 <div class="col-sm-6">
						 	<input type="text" name="inputSecondName" class="form-control" id="inputSecondName" />
						 </div>
					 </div>
					 <div class="mb-3">
				 		 <label for="inputTitle" class="col-sm-3 col-form-label">Title</label>
						 <div class="col-sm-6">
						 	<input type="text" name="inputTitle" class="form-control" id="inputTitle" />
						 </div>
					 </div>
					 <div class="mb-3">
				 		 <label for="inputBirthDay" class="col-sm-3 col-form-label">Дата рождения</label>
						 <div class="col-sm-6">
						 	<input type="text" name="inputBirthDay" class="form-control" id="inputBirthDay" />
						 </div>
					 </div>
					 <div class="mb-3">
				 		 <label for="inputAddress" class="col-sm-3 col-form-label">Адрес</label>
						 <div class="col-sm-6">
						 	<input type="text" name="inputAddress" class="form-control" id="inputAddress" />
						 </div>
					 </div>
					 <div class="mb-3">
				 		 <label for="inputCity" class="col-sm-3 col-form-label">Город</label>
						 <div class="col-sm-6">
						 	<input type="text" name="inputCity" class="form-control" id="inputCity" />
						 </div>
					 </div>
					 <div class="mb-3">
				 		 <label for="inputRegion" class="col-sm-3 col-form-label">Регион</label>
						 <div class="col-sm-6">
						 	<input type="text" name="inputRegion" class="form-control" id="inputRegion" />
						 </div>
					 </div>
					 <div class="mb-3">
				 		 <label for="inputPhone" class="col-sm-3 col-form-label">Телефон</label>
						 <div class="col-sm-6">
						 	<input type="text" name="inputPhone" class="form-control" id="inputPhone" />
						 </div>
					 </div>
					 <div class="mb-3">
				 		 <label for="inputEmail" class="col-sm-3 col-form-label">Эл. почта</label>
						 <div class="col-sm-6">
						 	<input type="text" name="inputEmail" class="form-control" id="inputEmail" />
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