<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<!-- HEAD -->
<c:import url="/WEB-INF/views/template/head.jsp" />
</head>
<body>
	<!-- NAVBAR -->
	<c:import url="/WEB-INF/views/template/navbar.jsp" />

	<!-- CONTAINER -->
	<div class="container theme-showcase">

		<div class="jumbotron">
			<h1>
				<spring:message code="location.page" />
			</h1>
			<p>
				<spring:message code="main.title" />
			</p>
			<p>
				<a href="<c:url value='/location/getSave' />" class="btn btn-primary"
					role="button"><spring:message code="location.list.button" /> &raquo;</a>
				 
				<a href="<c:url value='/location/mapping' />" class="btn btn-primary"
					role="button"><spring:message code="location.map.button" /> &raquo;</a>
			</p>
		</div>
		
		<hr />

		<c:if test="${!empty locations}">

			<div class="row">
				<!-- TABLES -->
				<h2>
					<spring:message code="location.grid.title" />
				</h2>
				<div class="bs-example">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th><spring:message code="location.grid.id" /></th>
								<th><spring:message code="location.grid.name" /></th>
								<th><spring:message code="location.grid.latitude" /></th>
								<th><spring:message code="location.grid.longitude" /></th>
								<th><spring:message code="location.grid.creation" /></th>
								<th><spring:message code="location.grid.delete" /></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${locations}" var="location">
								<tr>
									<td>${location.id}</td>
									<td><a href="<c:url value='/location/getUpdate/${location.id}' />">${location.name}</a></td>
									<td>${location.latitude}</td>
									<td>${location.longitude}</td>
									<td>${location.created}</td>
									<td><a href="<c:url value='/location/delete/${location.id}' />"><spring:message code="location.grid.delete" /></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:if>
		<!-- FOOTER -->
		<c:import url="/WEB-INF/views/template/footer.jsp" />
	</div>
</body>
</html>