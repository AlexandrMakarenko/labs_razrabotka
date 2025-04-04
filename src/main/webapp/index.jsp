<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script defer src="${pageContext.request.contextPath}/js/jquery-3.7.1.min.js"></script>
<script defer src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
<title>Информационная подсистема формирования данных о региональных представителях фирмы</title>
</head>
<body>
	<header>
		<jsp:include page="/views/header.jsp"/>
	</header>
	<main>
		<div class="container">
			<br><br><br>
				<div class="list-group text-center py-3 px-3">
					<h2>Функции системы</h2>
					<ul class="list-group list-group-flush">
						<li class="list-group-item list-group-itemprimary">
							<a href="/labs_razrabotka/views/Employee.jsp">Представители</a>
						<li class="list-group-item list-group-iteminfo">
							<a href="/labs_razrabotka/views/EmployeeTerritory.jsp">Представители \ Территории</a>
						<li class="list-group-item list-group-iteminfo">
							<a href="/labs_razrabotka/views/Territory.jsp">Территории</a>
						<li class="list-group-item list-group-iteminfo">
							<a href="/labs_razrabotka/views/Region.jsp">Регионы</a>
					</ul>
				</div>
			<br><br>
		</div>
	</main>
	<footer>
		<jsp:include page="/views/footer.jsp"/>
	</footer>
</body>
</html>