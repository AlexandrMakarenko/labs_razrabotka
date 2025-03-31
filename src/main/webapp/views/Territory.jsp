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
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script defer src="${pageContext.request.contextPath}/js/jquery-3.7.1.min.js"></script>
<script defer src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
<head>
<title>Территории</title>
</head>
<body>

	<header>
		<jsp:include page="/views/header.jsp"/>
	</header>
	
	<main>
		<div class="row justify-content-start" >
			<div class="col-8 border bg-light px-4">
				<a href="/labs_razrabotka/index.jsp">Вернуться</a>
				<h3>Список территорий</h3>
				<table class="table">
					<thead>
						<th scope="col">Идентификатор региона</th>
						<th scope="col">Описание</th>
					</thead>
					<tbody>
						<c:forEach var="territorie" items="${territories}">
							<tr>
								<td>${territorie.getRegionId()}</td>
								<td>${territorie.getDescription()}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="col-4 border px-4">
				 <form method="POST" action="">
					 <h3>Новая территория</h3>
					 <div class="mb-3">
				 		 <label for="inputRegionId" class="col-sm-3 col-form-label">Идентификатор региона</label>
						 <div class="col-sm-6">
						 	<select name="role" class="form-control">
							 <option>Выберите регион</option>
								 <c:forEach var="region" items="${regions}">
									 <option value="${region}">
									 	<c:out value="${region.getRegionDescription()}"></c:out>
									 </option>
								 </c:forEach>
							 </select>

						 </div>
					 </div>
					 <div class="mb-3">
				 		 <label for="inputRegionDescription" class="col-sm-3 col-form-label">Описание</label>
						 <div class="col-sm-6">
						 	<input type="text" name="inputRegionDescription" class="form-control" id="inputRegionDescription" />
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